require "rubygems"
require "rake"

GD_USER_PROD = 'exaltavista'
GD_HOST_PROD = '107.180.25.236'
GD_DIR_PROD  = '/home/exaltavista/public_html/'

#deploy to production
task :deploy_godaddy => [:godaddy_deploy]

# deploy to godaddy task
task :godaddy_deploy do
    puts "DEPLOYING to PRODUCTION..."
    status = system("rsync -rloz --stats -e 'ssh -p22' build/ #{GD_USER_PROD}@#{GD_HOST_PROD}:#{GD_DIR_PROD}")
    puts status ? "============ DEPLOYMENT SUCCESSFUL ============" : "*** ============ DEPLOYENT FAILED ============ ***"
end