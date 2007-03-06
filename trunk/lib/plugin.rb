module Mephisto
  module Plugins
    class ContactForm < Mephisto::Plugin
      author 'James Crisp'
      version '0.1'
    
      public_controller 'ContactForm', 'ContactForm'
      add_route 'contact_form', :controller => 'contact_form', :action => 'contact_form'
      add_route 'contact_submit', :controller => 'contact_form', :action => 'contact_submit', :conditions => { :method => :post }

    end
  end
end
