class PagesController < ApplicationController

    def home
        render html: '<h1>Hello World</h1>'
    end

    # def cogoport
    #     render html: '<h1>Cogoport</h1>'
    # end
    skip_before_action :verify_authenticity_token
    def about
        render html: '<h1>About</h1>'
    end
    # def contact
    #     render html: '<h1>8954859939</h1>'
    # end        
end
