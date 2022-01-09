class Tweet < ApplicationRecord
  validates_presence_of :content
  after_create_commit {broadcast_append_to 'tweets'}
end
