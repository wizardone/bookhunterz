require 'spec_helper'

describe PagesController do

  describe "GET 'index'" do
    it 'shows the main index page with reviews' do
      get :index

      expect(response).to render_template :index
    end
  end

end
