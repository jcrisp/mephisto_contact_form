module Mephisto
  module Plugins
    class ContactForm < Mephisto::Plugin
      author 'James Crisp'
      version '0.11'
    
      public_controller 'ContactForm', 'ContactForm'

      # add_route is broken in latest Mephisto and Rails (10 Dec 2007). See Mikel's work around below.
      # add_route 'contact_form', :controller => 'contact_form', :action => 'contact_form'
      # add_route 'contact_submit', :controller => 'contact_form', :action => 'contact_submit', :conditions => { :method => :post }

    end
  end
end





# Thanks to Mikel Lindsaar for the fix below

ActionController::Routing::Routes.draw do |map|
  Mephisto::Routing.connect_with map do
    map.contact "contact_form", 
              { :conditions=>{ :method=>:get },
                :action=>"contact_form",
                :controller=>"contact_form" }

    map.contact "contact_submit", 
              { :conditions=>{ :method=>:post },
                :action=>"contact_submit",
                :controller=>"contact_form" }
  end
end

