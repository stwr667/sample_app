# == Schema Information
#
# Table name: microposts
#
#  id         :integer         not null, primary key
#  content    :string(255)
#  user_id    :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#
include MicropostsHelper

class Micropost < ActiveRecord::Base
  attr_accessible :content
  belongs_to :user

  before_save { |micropost| micropost.content = wrap(content) }

  validates :content, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true

  default_scope order: 'microposts.created_at DESC'
end

