require 'spec_helper'

describe UsController do

  describe "GET 'index'" do
    it 'shows the index template' do
      get :index

      expect(response).to render_template :index
    end
  end

end
