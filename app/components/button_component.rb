# frozen_string_literal: true

class ButtonComponent < ViewComponent::Base
  attr_accessor :type

  PRIMARY_CLASSES = %w[
    bg-black
    text-white
  ].freeze
  OUTLINE_CLASSES = %w[
    hover:bg-gray-200
    focus:bg-gray-200
    disabled:bg-gray-100
    bg-white
    border
    border-purple-600
    text-purple-600
  ].freeze
  DANGER_CLASSES = %w[
    hover:bg-red-600
    focus:bg-red-600
    disabled:bg-red-300
    bg-red-500
    text-white
  ].freeze
  BASE_CLASSES = %w[
    cursor-pointer
    font-bold 
    block
    p-4
    text-3xl 
    font-bold 
    underline
  ].freeze

  BUTTON_TYPE_MAPPINGS = {
    primary: PRIMARY_CLASSES,
    danger: DANGER_CLASSES,
    outline: OUTLINE_CLASSES
  }.freeze

  def initialize(type: :primary)
    @type = type
  end

  def classes
    (BUTTON_TYPE_MAPPINGS[@type] + BASE_CLASSES).join(' ')
  end

end
