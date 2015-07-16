Refinery::User.class_eval do

  belongs_to :image, :class_name => '::Refinery::Image'
end