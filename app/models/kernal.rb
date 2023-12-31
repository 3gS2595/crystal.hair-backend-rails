class Kernal < ApplicationRecord

  include RansackHelper
  def self.ransackable_associations(auth_object = nil)
    []
  end
  def self.ransackable_attributes(auth_object = nil)
    ["author", "calls_current", "calls_limit", "content", "created_at", "description", "file_name", "file_path", "file_type", "hashtags", "id", "key_words", "likes", "name", "permissions", "reposts", "scrape_interval", "signed_url", "signed_url_l", "signed_url_m", "signed_url_s", "size", "src_url_id", "src_url_subset_assigned_id", "src_url_subset_id", "time_last_entry", "time_last_scraped", "time_last_scraped_completely", "time_posted", "time_scraped", "updated_at", "url"]
  end
end
