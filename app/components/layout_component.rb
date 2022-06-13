# frozen_string_literal: true

class LayoutComponent < ViewComponent::Base
  attr_accessor :type
  FULL_WIDTH = %w[
   w-full
  ].freeze
  BASE_CLASSES = %w[
    px-12
    py-12
  ].freeze

  MAPPINGS = {
    full_width: FULL_WIDTH
  }.freeze

  def initialize(type: :primary)
    @type = type
  end

  def classes
    (MAPPINGS[@type] + BASE_CLASSES).join(' ')
  end
end
