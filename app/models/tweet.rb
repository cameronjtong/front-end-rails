class Tweet < ApplicationRecord
  validates_presence_of :content
  after_create_commit {broadcast_append_to 'tweets'}
  after_destroy_commit {broadcast_remove_to 'tweets'}
  after_update_commit {broadcast_replace_to 'tweets'}
end
