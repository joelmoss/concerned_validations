# frozen_string_literal: true

require 'active_model'

# module ActiveModel::Validations::HelperMethods
#   def validate_attribute(attribute)
#     puts "validate_attribute :#{attribute}"
#   end
# end

module ConcernedValidations
  class Error < StandardError; end

  autoload :Base, 'concerned_validations/base'
  autoload :Model, 'concerned_validations/model'
end
