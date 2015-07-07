require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe WidgetsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Widget. As you add validations to Widget, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    # skip("Add a hash of attributes valid for your model")
    { name: "test" }
  }

  let(:invalid_attributes) {
    # skip("Add a hash of attributes invalid for your model")
    { name: "" }
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # WidgetsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all widgets as @widgets" do
      widget = create(:widget)
      get :index, {}, valid_session
      expect(assigns(:widgets)).to eq([widget])
    end
  end

  describe "GET #show" do
    it "assigns the requested widget as @widget" do
      widget = create(:widget)
      get :show, {:id => widget.to_param}, valid_session
      expect(assigns(:widget)).to eq(widget)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Widget" do
        expect {
          post :create, { :widget => attributes_for(:widget) }, valid_session
        }.to change(Widget, :count).by(1)
      end

      it "assigns a newly created widget as @widget" do
        post :create, { :widget => attributes_for(:widget) }, valid_session
        expect(assigns(:widget)).to be_a(Widget)
        expect(assigns(:widget)).to be_persisted
      end

      it "redirects to the created widget" do
        post :create, { :widget => attributes_for(:widget) }, valid_session
        expect(response).to be_created
      end
    end

    context "with invalid params" do
      it "responds with be_unprocessable_entity" do
        post :create, { :widget => attributes_for(:widget, :name => "") }, valid_session
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        { name: "test_new_name" }
      }

      it "updates the requested widget" do
        widget = create(:widget)
        put :update, {:id => widget.to_param, :widget => new_attributes}, valid_session
        widget.reload
        expect(widget.name).to eq "test_new_name"
      end

      it "assigns the requested widget as @widget" do
        widget = create(:widget)
        put :update, {:id => widget.to_param, :widget => valid_attributes}, valid_session
        expect(assigns(:widget)).to eq(widget)
      end

      it "redirects to the widget" do
        widget = create(:widget)
        put :update, {:id => widget.to_param, :widget => valid_attributes}, valid_session
        expect(response).to have_http_status(:no_content)
      end
    end

    context "with invalid params" do
      it "assigns the widget as @widget" do
        widget = create(:widget)
        put :update, {:id => widget.to_param, :widget => invalid_attributes}, valid_session
        expect(assigns(:widget)).to eq(widget)
      end

      it "re-renders the 'edit' template" do
        widget = create(:widget)
        put :update, {:id => widget.to_param, :widget => invalid_attributes}, valid_session
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested widget" do
      widget = create(:widget)
      expect {
        delete :destroy, {:id => widget.to_param}, valid_session
      }.to change(Widget, :count).by(-1)
    end

    it "redirects to the widgets list" do
      widget = create(:widget)
      delete :destroy, {:id => widget.to_param}, valid_session
      expect(response).to have_http_status(:no_content)
    end
  end

end
