class ContactsController < ApplicationController
  before_action :set_contact, only: %i[ show edit update destroy ]

  # GET /contacts or /contacts.json
  def index
    @contacts = Contact.all
  end

  # GET /contacts/1 or /contacts/1.json
  def show
  end

  # GET /contacts/new
  def new
    @user = User.find(params[:user_id])
    @contact = @user.send(set_type.pluralize).new
  end

  # GET /contacts/1/edit
  def edit
  end

  # POST /contacts or /contacts.json
  def create
    @user = User.find(params[:user_id])
    @contact = @user.send(set_type.pluralize).new(contact_params)

    if @contact.save
      redirect_to @user, notice: "#{params[:type]} Contact was successfully created."
    else
      render :new
    end
  end

  # PATCH/PUT /contacts/1 or /contacts/1.json
  def update
    if @contact.update(contact_params)
      redirect_to @user, notice: "#{params[:type]} Contact was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /contacts/1 or /contacts/1.json
  def destroy
    @contact.destroy
    redirect_to @user, notice:  "#{params[:type]} was successfully destroyed."
  end

  private
    def set_contact
      @user = User.find(params[:user_id])
      @contact = @user.send(set_type.pluralize).find(params[:id])
    end

    def set_type
      case params[:type]
      when 'Teacher'
        'teacher'
      when 'Friend'
        'friend'
      end
    end

    # Only allow a list of trusted parameters through.
    def contact_params
      params.require(set_type.to_sym).permit(:type, :name, :email, :phone, :faculty, :student_id_number, :national_lecturer_identification_number, :last_position)
    end
end
