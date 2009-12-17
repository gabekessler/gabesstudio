namespace :local do

  desc <<-DESC
    [capistrano-extensions]: Downloads a tarball of shared content (identified by the :shared_content and
    :content_directories properties) from a deployable environment (RAILS_ENV) to the local filesystem.
  DESC
  task :rsync_content do
    from = ENV['FROM'] || 'production'
    # system('rsync -avz -e ssh "madinala@67.225.164.139:/home/madinala/fanclub.madinalake.com/shared/system/" "./tmp/system"')
  end

  desc <<-DESC
    [capistrano-extensions]: Restores the backed up content (env var FROM specifies which environment
    was backed up, defaults to RAILS_ENV) to the local development environment app
  DESC
  task :rsync_restore_content do
    # from = ENV['FROM'] || 'production'
    print "\033[1;45m Linking Assets to public directory \033[0m\n"
    # system "ln -nfs #{RAILS_ROOT}/tmp/system public/system"
  end


  desc <<-DESC
    [capistrano-extensions]: Wrapper for local:backup_content and local:restore_content
    $> cap local:sync_content RAILS_ENV=production RESTORE_ENV=development
  DESC
  task :rsync do
    transaction do
      rsync_content
      rsync_restore_content
    end
  end
end

def content_backup_file(env='production')
  "#{shared_path}/system"
end

def generate_remote_content_backup
  run "cd #{shared_path} && tar czf #{content_backup_file} 'system'"
end
