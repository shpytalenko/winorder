module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | Winorder"
    end
  end
end
