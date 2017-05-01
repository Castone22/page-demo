class AmazonHomePage
  include PageObject

  page_url 'https://www.amazon.com'

  div :search_section, :class => 'nav-search-submit nav-sprite'
  div :results, :id => 'atfResults'

  text_field :search_field, :id => 'twotabsearchtextbox'

  button :submit do
    self.search_section_element.button_element
  end

  def search_for(something)
    self.search_field = something
    self.submit
  end

end