# frozen_string_literal: true

module ConcernedValidations::Model
  extend ActiveSupport::Concern

  class MyValidation
    def initialize(*args)
      puts args
    end
  end

  included do
    key = "::#{model_name}Validator"
    include const_get(key) if const_defined?(key)

    # validates_with MyValidation
    # validates :name, presence: true
  end
end
