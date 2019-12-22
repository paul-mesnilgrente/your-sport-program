# frozen_string_literal: true

# Mother class of model records
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
