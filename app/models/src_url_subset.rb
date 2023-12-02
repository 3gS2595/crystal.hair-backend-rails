class SrcUrlSubset < ApplicationRecord
  include RansackHelper
  def self.ransackable_associations(auth_object = nil)
    []
  end
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "url", "src_url_id", "updated_at", "name"]
  end   
end
