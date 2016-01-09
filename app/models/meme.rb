class Meme < ActiveRecord::Base
  belongs_to :user

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  validates :meme, presence: true

  after_validation :set_meme_as_inactive, on: :create

  def set_meme_as_inactive
    self.active = false
  end


end
