# frozen_string_literal: true

class LayoutComponentPreview < ViewComponent::Preview
  def default
    render(LayoutComponent.new(type: "type"))
  end
end
