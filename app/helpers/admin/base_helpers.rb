module Merb
  module Admin
    module BaseHelper
      LOREM= "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
  
  
      def admin_navbar_links(model)
        link_to model, "/"
      end
  
  
      # GENERATORS ----------------
  
      def generate_a_user(x= rand(9999))
        # User.create(
        #   :email => "#{x}@random.com",
        #   :password => "test", :password_confirmation => "test",
        #   :activated_at => Time.new
        # )
      end
  
  
      # --------------------------

      # def admin_merb_paginate(collection, params={})
      #   params.merge! :renderer => AdminLinkRenderer
      #   merb_paginate(collection, params) if collection.is_a? WillPaginate::Collection
      # end
  
      # my truncate method
      def t(string, length=30)
        string.size > length ? string[0..length] + "..." : string rescue ""
      end
    end
  end
end