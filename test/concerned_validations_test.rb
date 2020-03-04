# frozen_string_literal: true

require 'test_helper'

module UserValidator
  extend ::ConcernedValidations::Base

  validator do
    validates :name, presence: true
  end
end

class User
  include ::ActiveModel::Model
  include ::ConcernedValidations::Model

  attr_accessor :name
end

class ConcernedValidationsTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::ConcernedValidations::VERSION
  end

  def test_auto_included
    u = User.new
    assert_predicate u, :invalid?
  end
end
