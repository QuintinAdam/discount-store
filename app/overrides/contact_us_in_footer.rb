Deface::Override.new(virtual_path: "spree/shared/_footer",
                     name: "contact_us_in_footer",
                     insert_bottom: " #footer-right #footer-pages ul",
                     text: "<li class='<%= (request.fullpath.gsub('//','/') == '/contact-us') ? 'current' : 'not'%>'><%= link_to Spree.t(:contact_us_title), '/contact-us'  %></li>",
                     original: '45ce7795da02814069b4c8421126cecb872df0d1')
