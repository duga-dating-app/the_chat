# frozen_string_literal: true

class ButtonComponent < ViewComponent::Base
  attr_accessor :type

  PRIMARY_CLASSES = %w[
    bg-white
    text-black
    mx-auto
    my-4
    w-full
    rounded-lg 
    font-medium
  ].freeze
  SECONDARY_CLASSES = %w[
    bg-blue
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
  BASE_CLASSES = %w[
    cursor-pointer
    px-4
    py-2
    font-medium
  ].freeze
  WHITE_CLASSES = %w[
    bg-gray-100 
    inline-block 
  ].freeze
  BUTTON_TYPE_MAPPINGS = {
    primary: PRIMARY_CLASSES,
    outline: OUTLINE_CLASSES,
    white: WHITE_CLASSES,
    secondary: SECONDARY_CLASSES
  }.freeze

  def initialize(type: :primary)
    @type = type
  end

  def classes
    (BUTTON_TYPE_MAPPINGS[@type] + BASE_CLASSES).join(' ')
  end

end
