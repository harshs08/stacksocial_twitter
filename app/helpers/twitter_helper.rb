module TwitterHelper
  include Twitter::Autolink

  def extract_link(content)
    auto_link(content).html_safe
  end
end
