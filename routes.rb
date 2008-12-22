    map.contact "contact_form", 
              { :conditions=>{ :method=>:get },
                :action=>"contact_form",
                :controller=>"contact_form" }

    map.contact "contact_submit", 
              { :conditions=>{ :method=>:post },
                :action=>"contact_submit",
                :controller=>"contact_form" }
