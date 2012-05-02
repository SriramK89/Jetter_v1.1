class User < ActiveRecord::Base
  attr_accessible :name, :password
  validates :name, :presence => true,
                   :uniqueness => true
  validates :password, :presence => true,
                       :length => { :minimum => 8 }
end