require 'spec_helper'

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

describe ConsultationsController do

  # This should return the minimal set of attributes required to create a valid
  # Consultation. As you add validations to Consultation, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all consultations as @consultations" do
      consultation = Consultation.create! valid_attributes
      get :index
      assigns(:consultations).should eq([consultation])
    end
  end

  describe "GET show" do
    it "assigns the requested consultation as @consultation" do
      consultation = Consultation.create! valid_attributes
      get :show, :id => consultation.id.to_s
      assigns(:consultation).should eq(consultation)
    end
  end

  describe "GET new" do
    it "assigns a new consultation as @consultation" do
      get :new
      assigns(:consultation).should be_a_new(Consultation)
    end
  end

  describe "GET edit" do
    it "assigns the requested consultation as @consultation" do
      consultation = Consultation.create! valid_attributes
      get :edit, :id => consultation.id.to_s
      assigns(:consultation).should eq(consultation)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Consultation" do
        expect {
          post :create, :consultation => valid_attributes
        }.to change(Consultation, :count).by(1)
      end

      it "assigns a newly created consultation as @consultation" do
        post :create, :consultation => valid_attributes
        assigns(:consultation).should be_a(Consultation)
        assigns(:consultation).should be_persisted
      end

      it "redirects to the created consultation" do
        post :create, :consultation => valid_attributes
        response.should redirect_to(Consultation.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved consultation as @consultation" do
        # Trigger the behavior that occurs when invalid params are submitted
        Consultation.any_instance.stub(:save).and_return(false)
        post :create, :consultation => {}
        assigns(:consultation).should be_a_new(Consultation)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Consultation.any_instance.stub(:save).and_return(false)
        post :create, :consultation => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested consultation" do
        consultation = Consultation.create! valid_attributes
        # Assuming there are no other consultations in the database, this
        # specifies that the Consultation created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Consultation.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => consultation.id, :consultation => {'these' => 'params'}
      end

      it "assigns the requested consultation as @consultation" do
        consultation = Consultation.create! valid_attributes
        put :update, :id => consultation.id, :consultation => valid_attributes
        assigns(:consultation).should eq(consultation)
      end

      it "redirects to the consultation" do
        consultation = Consultation.create! valid_attributes
        put :update, :id => consultation.id, :consultation => valid_attributes
        response.should redirect_to(consultation)
      end
    end

    describe "with invalid params" do
      it "assigns the consultation as @consultation" do
        consultation = Consultation.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Consultation.any_instance.stub(:save).and_return(false)
        put :update, :id => consultation.id.to_s, :consultation => {}
        assigns(:consultation).should eq(consultation)
      end

      it "re-renders the 'edit' template" do
        consultation = Consultation.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Consultation.any_instance.stub(:save).and_return(false)
        put :update, :id => consultation.id.to_s, :consultation => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested consultation" do
      consultation = Consultation.create! valid_attributes
      expect {
        delete :destroy, :id => consultation.id.to_s
      }.to change(Consultation, :count).by(-1)
    end

    it "redirects to the consultations list" do
      consultation = Consultation.create! valid_attributes
      delete :destroy, :id => consultation.id.to_s
      response.should redirect_to(consultations_url)
    end
  end

end
