require 'spec_helper'

describe PhoneNumbersController do
  before(:each) do
    mock_contact({
      :add_phone_number => nil,
      :phone_numbers => [],
      :first_name => '',
      :last_name => ''
    })
    Contact.stub(:find).and_return(@contact)
  end
  
  describe "GET index, :contact_id => integer" do
    it "loads a contact as @contact" do
      load_contact{ get :index, :contact_id => 1 }
    end
  end
  
  describe "GET new, :contact_id => integer" do
    before(:each) do
      @new_phone_number = mock_model(PhoneNumber).as_new_record
      @contact.stub_chain(:phone_numbers, :build).and_return(@new_phone_number)
    end
    it "loads a contact as @contact" do
      load_contact{ get :new, :contact_id => 1 }
    end
    it "instantiates a new phone number as @phone_number" do
      get :new, :contact_id => 1
      assigns[:phone_number].should eql @new_phone_number
    end
  end
  
  describe "GET show, :id => integer, :contact_id => integer" do
    it "loads a contact as @contact" do
      load_contact{ get :show, :id => 1, :contact_id => 1 }
    end
    it "loads a phone number as @phone_number" do
      @contact.phone_numbers.should_receive(:find).and_return(mock_phone_number)
      get :show, :id => 1, :contact_id => 1
      assigns[:phone_number].should eql @phone_number
    end
  end
  
  describe "POST create, :contact_id => integer, :phone_number => {}" do
    it "loads a contact as @contact" do
      load_contact{ post :create, :contact_id => 1 }
    end
    it "saves the new phone number" do
      @contact.should_receive(:add_phone_number)
      post :create, :contact_id => 1
    end
    context "save succeeds :)" do
      before(:each) do
        @contact.stub(:add_phone_number).and_return(true)
      end
      it "sets a flash[:notice]" do
        post :create, :contact_id => 1
        flash[:notice].should_not be_nil
      end
      it "redirects to the contact show page" do
        post :create, :contact_id => 1
        response.should redirect_to contact_path(@contact)
      end
    end
    context "save fails :(" do
      before(:each) do
        @contact.stub(:add_phone_number).and_return(false)
      end
      it "renders the new template" do
        post :create, :contact_id => 1
        response.should render_template("phone_numbers/new")
      end
    end
  end
  
  describe "GET edit, :id => integer, :contact_id => integer" do
    it "loads a contact as @contact" do
      load_contact{ get :edit, :id => 1, :contact_id => 1 }
    end
    it "loads a phone number as @phone_number" do
      @contact.phone_numbers.should_receive(:find).and_return(mock_phone_number)
      get :edit, :id => 1, :contact_id => 1
      assigns[:phone_number].should eql mock_phone_number
    end
  end
  
  describe "PUT :update, :id => integer, :contact_id => integer, :phone_number => {}" do
    before(:each) do
      mock_phone_number({
        :update_attributes => nil
      })
      @contact.phone_numbers.stub(:find).and_return(@phone_number)
    end
    it "loads a phone number as @phone_number" do
      @contact.phone_numbers.should_receive(:find).and_return(@phone_number)
      put :update, :id => 1, :contact_id => 1
      assigns[:phone_number].should eql @phone_number
    end
    it "updates the attributes for @phone_number" do
      @phone_number.should_receive(:update_attributes)
      put :update, :id => 1, :contact_id => 1
    end
    context "update succeeds :)" do
      before(:each) do
        @phone_number.stub(:update_attributes).and_return(true)
      end
      it "sets a flash[:notice]" do
        put :update, :id => 1, :contact_id => 1
        flash[:notice].should_not be_nil
      end
      it "redirects to the contact show page" do
        put :update, :id => 1, :contact_id => 1
        response.should redirect_to contact_path(@contact)
      end
    end
    context "update fails :(" do
      before(:each) do
        @phone_number.stub(:update_attributes).and_return(false)
      end
      it "renders the edit template" do
        put :update, :id => 1, :contact_id => 1
        response.should render_template("phone_numbers/edit")
      end
    end
  end
end
