class RedirectController < ApplicationController
   def cacti
     redirect_to "http://cacti.positech.net"
   end
end
