class ContactsController < AddressBook::ApplicationController
  
  def index
    @contacts = Contact.paginate :all, :page => params[:page], :per_page => params[:per_page] || 30,
      :conditions => "last_name IS NOT NULL and last_name !=''", :order => 'last_name, first_name'
      
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @contacts }
    end
  end

  def search
    @contacts = Contact.search(params[:q], :order => 'last_name, first_name',
      :narrow_fields => params[:fields] ? params[:fields].keys : nil).paginate :page => params[:page]
          
    respond_to do |format|
      format.html { render :action => :index }
      format.xml  { render :xml => @contacts }
    end
  end

  def show
    @contact = Contact.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @contact }
    end
  end

  def new
    @contact = Contact.new
  end

  def edit
    @contact = Contact.find params[:id]
  end

  def create
    @contact = Contact.new params[:contact]
    
    respond_to do |format|
      if @contact.save
        flash[:notice] = "Contact <em>#{@contact.name}</em> created.".html_safe
        format.html { redirect_to(contact_path(@contact)) }
        format.xml  { render :xml => @contact, :status => :created, :location => @contact }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @contact.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @contact = Contact.find(params[:id])
    respond_to do |format|
      if @contact.update_attributes(params[:contact])
        flash[:notice] = "Contact <em>#{@contact.name}</em> updated.".html_safe
        format.html { redirect_to(contact_path(@contact)) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @contact.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    flash[:notice] = "Contact <em>#{@contact.name}</em> deleted.".html_safe
    respond_to do |format|
      format.html { redirect_to(contacts_path) }
      format.xml  { head :ok }
    end
  end
end
