class Sock < ActiveRecord::Base

  validates_presence_of :color, :pattern, :length

  validate :has_current_holder?

  scope :lost, lambda{ where.not(seeker_name: nil) }

  scope :found, lambda{ where.not(finder_name: nil) }

  def has_current_holder?()
    errors.add(:base, "Gotta have a seeker or finder") unless finder_name.present? || seeker_name.present?
  end

  def claimed?
    finder_name.present? && seeker_name.present?
  end

end
