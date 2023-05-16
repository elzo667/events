class PagesController < ApplicationController
    def welcome
        @first_name = params[:id]
        puts params[:id].inspect
      end
    
      def team
      end
    
      def contact
      end
end
