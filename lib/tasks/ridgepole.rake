namespace :ridgepole do
  desc "Exec Apply Dry Run"
  task apply_dry_run: :environment do
    exec "bundle exec ridgepole -c config/database.yml -E #{Rails.env} -f #{Rails.root}/Schemafile --apply --dry-run"
  end

  desc "Exec Apply"
  task apply: :environment do
    exec "bundle exec ridgepole -c config/database.yml -E #{Rails.env} -f #{Rails.root}/Schemafile --apply"
  end
end
