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

RSpec.describe DestinationsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Destination. As you add validations to Destination, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    { maximum_product_price: 1000.00 }
  }

  let(:invalid_attributes) {
    { maximum_product_price: 'HELLO' }
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DestinationsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all destinations as @destinations" do
      destination = Destination.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:destinations)).to eq([destination])
    end
  end

  describe "GET #show" do
    it "assigns the requested destination as @destination" do
      destination = Destination.create! valid_attributes
      get :show, params: {id: destination.to_param}, session: valid_session
      expect(assigns(:destination)).to eq(destination)
    end
  end

  describe "GET #new" do
    it "assigns a new destination as @destination" do
      get :new, params: {}, session: valid_session
      expect(assigns(:destination)).to be_a_new(Destination)
    end
  end

  describe "GET #edit" do
    it "assigns the requested destination as @destination" do
      destination = Destination.create! valid_attributes
      get :edit, params: {id: destination.to_param}, session: valid_session
      expect(assigns(:destination)).to eq(destination)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Destination" do
        expect {
          post :create, params: {destination: valid_attributes}, session: valid_session
        }.to change(Destination, :count).by(1)
      end

      it "assigns a newly created destination as @destination" do
        post :create, params: {destination: valid_attributes}, session: valid_session
        expect(assigns(:destination)).to be_a(Destination)
        expect(assigns(:destination)).to be_persisted
      end

      it "redirects to the created destination" do
        post :create, params: {destination: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Destination.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved destination as @destination" do
        post :create, params: {destination: invalid_attributes}, session: valid_session
        expect(assigns(:destination)).to be_a_new(Destination)
      end

      it "re-renders the 'new' template" do
        post :create, params: {destination: invalid_attributes}, session: valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        { maximum_product_price: 2000.00 }
      }

      it "updates the requested destination" do
        destination = Destination.create! valid_attributes
        put :update, params: {id: destination.to_param, destination: new_attributes}, session: valid_session
        destination.reload
        expect(destination.maximum_product_price).to eq 2000.00
      end

      it "assigns the requested destination as @destination" do
        destination = Destination.create! valid_attributes
        put :update, params: {id: destination.to_param, destination: valid_attributes}, session: valid_session
        expect(assigns(:destination)).to eq(destination)
      end

      it "redirects to the destination" do
        destination = Destination.create! valid_attributes
        put :update, params: {id: destination.to_param, destination: valid_attributes}, session: valid_session
        expect(response).to redirect_to(destination)
      end
    end

    context "with invalid params" do
      it "assigns the destination as @destination" do
        destination = Destination.create! valid_attributes
        put :update, params: {id: destination.to_param, destination: invalid_attributes}, session: valid_session
        expect(assigns(:destination)).to eq(destination)
      end

      it "re-renders the 'edit' template" do
        destination = Destination.create! valid_attributes
        put :update, params: {id: destination.to_param, destination: invalid_attributes}, session: valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested destination" do
      destination = Destination.create! valid_attributes
      expect {
        delete :destroy, params: {id: destination.to_param}, session: valid_session
      }.to change(Destination, :count).by(-1)
    end

    it "redirects to the destinations list" do
      destination = Destination.create! valid_attributes
      delete :destroy, params: {id: destination.to_param}, session: valid_session
      expect(response).to redirect_to(destinations_url)
    end
  end

end
