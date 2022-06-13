# frozen_string_literal: true

class ButtonComponent < ViewComponent::Base
  attr_accessor :type

  PRIMARY_CLASSES = %w[
    bg-white
    text-black
    block
    mx-auto
    my-4
    w-full
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
    font-bold 
    block
    px-4
    py-2
    text-lg 
    font-bold 
  ].freeze

  BUTTON_TYPE_MAPPINGS = {
    primary: PRIMARY_CLASSES,
    outline: OUTLINE_CLASSES
  }.freeze

  def initialize(type: :primary)
    @type = type
  end

  def classes
    (BUTTON_TYPE_MAPPINGS[@type] + BASE_CLASSES).join(' ')
  end

end
