# frozen_string_literal: true

namespace :scripts do
    desc("Migrates data and prints some env vars")
    task test: :environment do
        puts "Running tests for rails-vue-template..."
        Rake::Task["db:drop"].execute
        Rake::Task["db:create"].execute
        Rake::Task["test"].execute
    end
end
