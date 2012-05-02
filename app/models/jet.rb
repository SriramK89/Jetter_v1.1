class Jet < ActiveRecord::Base

  attr_accessible :content, :userid
  validates :content, :presence => true,
                      :length => { :maximum => 140 }

end
