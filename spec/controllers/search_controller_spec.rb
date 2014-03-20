require 'spec_helper'

describe SearchController do

  describe "GET 'index'" do
    it 'shows the main index page with reviews' do
      get :index, search: 'my_book'

      expect(response).to render_template :index
    end
  end

end
