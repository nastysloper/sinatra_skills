class Skill < ActiveRecord::Base
  has_many :user_skills
  has_many :users, :through => :user_skills

  VALID_CONTEXTS = %w(technical creative)

  validates :name, :presence => true
  validate :validate_context
  validates :formal, :inclusion => {:in => [true, false]}


  private
  def validate_context
    p self.context
    self.errors[:context] = "must be one of: #{VALID_CONTEXTS.join(', ')}" unless VALID_CONTEXTS.include? self.context
  end
end
