# (c) goodprogrammer.ru

# Модель вопроса.
#
# Каждый экземпляр этого класса — загруженная из БД информация о конкретном
# вопросе.
class Question < ActiveRecord::Base
  belongs_to :user
  validates :user, :text, presence: true


  # before_validation :before_validation
  # after_validation :after_validation
  #
  # before_save :before_save
  # after_save :after_save
  #
  # before_create :before_create
  # after_create :after_create
  #
  # before_update :before_update
  # after_update :after_update
  #
  # before_destroy :before_destroy
  # after_destroy :after_destroy
end
