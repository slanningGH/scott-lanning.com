const CleanWebpackPlugin = require('clean-webpack-plugin');
const CopyWebpackPlugin = require('copy-webpack-plugin');
const HtmlWebpackPlugin = require('html-webpack-plugin');
const ImageminPlugin = require('imagemin-webpack-plugin').default;
const MiniCssExtractPlugin = require('mini-css-extract-plugin');
const OptimizeCSSAssetsPlugin = require('optimize-css-assets-webpack-plugin');
const path = require('path');
const webpack = require('webpack');

// version of the site
const version = require('./package.json').version;

const webpackConfig = ({ production } = {}) => {
    // set up webpack configuration object
    const config = {
        entry: {
            // bundle all code in a file called bundle.index.[hash].js
            index: './public/js/index.js',
        },
        // The webpack output property describes to webpack how to treat bundled code.
        output: {
            path: path.resolve(__dirname, 'build'),
            filename: `js/bundle.[name].[hash].js?${version}`,
            publicPath: '/',
        },
        devServer: {
            // --content-base is which directory is being served
            contentBase: path.resolve(__dirname, 'public'),
            // open in browser at localhost:8080
            hot: true,
        },
        plugins: [
            // clean the build folder before building
            new CleanWebpackPlugin(),
            // copy files over to build folder
            new CopyWebpackPlugin([
                {
                    from: 'public/img_src',
                    to: 'img',
                },
                {
                    from: 'public/files',
                    to: 'files',
                },
                {
                    from: 'public/fonts',
                    to: 'fonts',
                },
                {
                    from: 'public/lib',
                    to: 'lib',
                },
                {
                    from: 'public/.htaccess',
                    to: '.htaccess',
                    toType: 'file',
                },
            ]),
            // create index html file
            // TODO: Minification is currently not working with 3.2.0
            new HtmlWebpackPlugin({
                filename: 'index.html',
                inject: 'head',
                template: './public/index.html',
            }),
            // create 404 page
            // TODO: Minification is currently not working with 3.2.0
            new HtmlWebpackPlugin({
                filename: '404.html',
                template: './public/404.html',
            }),
            // extract css from bundle into its own file
            new MiniCssExtractPlugin({
    			filename: 'styles/styles.[hash].css'
    		}),
            // minify/optimize CSS
            new OptimizeCSSAssetsPlugin({}),
            // minify images
            new ImageminPlugin({
                test: /\.(jpe?g|png|gif|svg)$/i,
                disable: !production,
                pngquant: {
                    quality: '70-90',
                }
            }),
        ],
        module: {
            rules: [
                // load and process stylus files
                {
                    test: /\.styl$/,
                    use: [
                        {
                            loader: MiniCssExtractPlugin.loader,
                            options: {
                                publicPath: 'styles/'
                            }
                        },
                        'css-loader',
                        'stylus-loader',
                    ]
                },
                // load and process font files
                {
                    test: /.(woff(2)?|eot|ttf|svg)(\?[a-z0-9=.]+)?$/,
                    use: 'file-loader?name=fonts/[name].[ext]'
                },
            ]
        }
    };

    return config;
}

module.exports = webpackConfig;
