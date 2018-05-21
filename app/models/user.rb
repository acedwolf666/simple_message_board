class User < ApplicationRecord
  validates_presence_of :name, :message
  validates_length_of :name, :maximum => 20
  validates_length_of :message, :minimum => 20
end
