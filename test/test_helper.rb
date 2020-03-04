# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path('../lib', __dir__)

require 'concerned_validations'

require 'minitest/autorun'
require 'minitest/focus'
require 'minitest/reporters'

Minitest::Reporters.use!
