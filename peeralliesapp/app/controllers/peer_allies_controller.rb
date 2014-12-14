 class PeerAlliesController < ApplicationController

  def index
    @peer_ally = PeerAlly.all
  end

  def ally_list
    @peer_allies = PeerAlly.all 
  end

  def calendar
    # @peer_allies = PeerAlly.all
  end

  def show
    @peer_ally = PeerAlly.find(params[:id])
  end

  def new
    @peer_ally = PeerAlly.new
  end

  def edit
    @peer_ally = PeerAlly.find(params[:id])
  end

  def create
    @peer_ally = PeerAlly.new(params[:peer_ally])

    if @peer_ally.valid?
      @peer_ally.save
      flash[:notice] = "Your profile was successfully created!"
      redirect_to(@peer_ally) and return
    else
      render(:action => :new)
      end
    end

  def update
    @peer_ally = PeerAlly.find(params[:id])

    respond_to do |format|
      if @peer_ally.update_attributes(params[:peer_ally])
        format.html { redirect_to @peer_ally, notice: 'Your profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @peer_ally.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @peer_ally = PeerAlly.find(params[:id])
    @peer_ally.destroy
    redirect_to ally_list_path

    # respond_to do |format|
    #   format.html { redirect_to ally_list }
    #   format.json { head :no_content }
    # end
  end
  
  def email_this_ally
    @email = params[:specific_email]
    @name = params[:specific_name]
    render partial: 'email_this_ally', :locals => {:ally_email => @email, :ally_name => @name}

     #   # @peer_ally = PeerAlly.find(params[:id])
  #   # @peer_ally.email = @peer_ally.ups_id + "@pugetsound.edu"
  #   respond_to do |format|
  #     format.html { render partial: 'email_this_ally' }
  #   end
  end

  def email

    # variables sent in via the form's HTTP request
    name = params[:name]
    email = params[:email]
    message = params[:message]

    # send email using the given parameters
    # to notify an ally that a victim has requested help
    AllyMailer.notification_email(name, email, message).deliver

    # send another email to the provided email address
    # letting them know that the allies have received
    # their request sent through the form
    AllyMailer.confirmation_email(name, email).deliver

    # confirmation page
    redirect_to :conf_yes
    
  end
  
  def email_specific_ally
    
    # all of the victim info from the form
    victim_name = params[:name]
    victim_email = params[:email]
    victim_message = params[:message]
    
    # the specific_ally to which the victim
    # wishes to send an email
    recipient_email = params[:ally_email]
    
    # deliver the victim's message to the intended ally
    AllyMailer.specific_ally_email(victim_name, victim_email, victim_message, recipient_email).deliver
    
    # deliver a confirmation email to the victim
    AllyMailer.confirmation_email(victim_name, victim_email).deliver
    
    redirect_to :conf_yes
    
  end

end
