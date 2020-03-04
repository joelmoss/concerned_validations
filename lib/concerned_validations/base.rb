# frozen_string_literal: true

module ConcernedValidations::Base
  class MultipleValidatorBlocks < StandardError #:nodoc:
    def initialize
      super "Cannot define multiple 'validator' blocks for a ConcernedValidator"
    end
  end

  def self.extended(base) #:nodoc:
    base.instance_variable_set(:@_dependencies, [])
  end

  def append_features(base) #:nodoc:
    if base.instance_variable_defined?(:@_dependencies)
      base.instance_variable_get(:@_dependencies) << self
      false
    else
      return false if base < self

      @_dependencies.each { |dep| base.include(dep) }
      super
      base.class_eval(&@_validator_block) if instance_variable_defined?(:@_validator_block)
    end
  end

  def validator(base = nil, &block)
    if base.nil?
      if instance_variable_defined?(:@_validator_block)
        raise MultipleValidatorBlocks if @_validator_block.source_location != block.source_location
      else
        @_validator_block = block
      end
    else
      super
    end
  end
end
