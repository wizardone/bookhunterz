require 'spec_helper'

describe TagsController do

  describe "GET 'index'" do
    it 'shows search results for tags' do
      get :index, tag: 'fantasy'

      expect(response).to render_template :index
    end
  end

end
