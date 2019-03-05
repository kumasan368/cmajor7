class Request < ApplicationRecord
  belongs_to :from, :class_name => 'Musician', :foreign_key => 'from_id', optional: true
  belongs_to :to, :class_name => 'Musician', :foreign_key => 'to_id', optional: true

  validates_uniqueness_of :from_id, :scope => [:to_id]
end
