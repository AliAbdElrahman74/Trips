class Trip < ActiveRecord::Base
  has_many :locations

  validates_presence_of(:status)
  validates :status, inclusion: {:in => ["completed","ongoing"]}
  validate :check_status, :on => :update

  def check_status
    if status == 'ongoing'
      errors.add(:status, "value should be updated if its value is ongoing only!")
    end
  end
end
