# frozen_string_literal: true

unless ENV['COHERENCE_DEV'] || ENV['COHERENCE_TEST']
    Rails.env = "production"
end
