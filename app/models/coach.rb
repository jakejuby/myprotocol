class Coach < ActiveRecord::Base

  STATES = %w(AL AK AZ AR CA CO CT DE DC FL GA HI ID IL IN IA KS KY LA ME MD MA MI MN MS MO MT NE NV NH NJ NM NY NC ND OH OK OR PA PR RI SC SD TN TX UT VT VA WA WV WI WY)
  SIZES = %w(S M L XL)

  belongs_to :user

  validates :name, presence: true
  validates :business, presence: true
  validates :street, presence: true
  validates :city, presence: true
  validates :state, presence: true, inclusion: { in: STATES }
  validates :zip, presence: true
  validates :phone_number, presence: true
  validates :bio, presence: true
  # validates :quote, presence: true
  # validates :quoter, presence: true
  validates :shirt_size, inclusion: { in: SIZES }
end