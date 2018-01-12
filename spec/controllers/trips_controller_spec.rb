require 'rails_helper'

RSpec.describe TripsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Trip. As you add validations to Trip, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {
      :status => "ongoing"
    }
  }

  let(:invalid_attributes) {
    {
      :status => nil
    }
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TripsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      trip = Trip.create! valid_attributes
      get :index, {}, valid_session
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      trip = Trip.create! valid_attributes
      get :show, {:id => trip.to_param}, valid_session
      expect(response).to be_success
    end
  end



  describe "POST #create" do
    context "with valid params" do
      it "creates a new Trip" do
        expect {
          post :create, {:trip => valid_attributes}, valid_session
        }.to change(Trip, :count).by(1)
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        {
          :status => "completed"
        }
      }

      let!(:trip){create(:trip, status: 'ongoing')}
      it "updates the requested trip" do
        put :update, {:id => trip.to_param, :trip => new_attributes}, valid_session
        trip.reload
        expect(trip.status).to eq("completed")
      end
    end
    context "with inValid params" do
      let(:new_attributes) {
        {
          :status => "ongoing"
        }
      }

      let!(:trip){create(:trip, status: 'completed')}
      it " doesn't updates the requested trip" do
        put :update, {:id => trip.to_param, :trip => new_attributes}, valid_session
        expect(response.body).to eq('{"status":["value should be updated if its value is ongoing only!"]}')
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested trip" do
      trip = Trip.create! valid_attributes
      expect {
        delete :destroy, {:id => trip.to_param}, valid_session
      }.to change(Trip, :count).by(-1)
    end
  end

end
