class Kanban < ApplicationRecord
  acts_as_paranoid

  validates :title,:content,presence: true

  aasm column: "state" ,no_direct_assignment: true do
    state :to_do, initial: true
    state :doing, :done

    event :take do
      transitions from: :to_do, to: :doing
    end

    event :give_up do
      transitions from: :doing, to: :to_do
    end

    event :complete do
      transitions from: :doing, to: :done
    end
  end

end
