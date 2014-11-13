 class PeerAlliesController < ApplicationController
  # GET /peer_allies
  # GET /peer_allies.json
  def index
    @peer_allies = PeerAlly.all

    # respond_to do |format|
    #   format.html # index.html.erb
    #   format.json { render json: @peer_allies }
    # end
    # redirect_to '/app/views/peer_allies/ally_list.html.erb'
  end

  def ally_list
    @peer_allies = PeerAlly.all
    
    # respond_to do |format|
    #   format.html # show.html.erb
    #   format.json { render json: @peer_ally }
    # end
  end

  def calendar
    @peer_allies = PeerAlly.all

  end

  # GET /peer_allies/1
  # GET /peer_allies/1.json
  def show
    @peer_ally = PeerAlly.find(params[:id])

    # respond_to do |format|
    #   format.html # show.html.erb
    #   format.json { render json: @peer_ally }


    # end
  end

  # GET /peer_allies/new
  # GET /peer_allies/new.json
  def new
    # @peer_ally = PeerAlly.new
    # respond_to do |format|
    #   format.html # new.html.erb
    #   format.json { render json: @peer_ally }
    # end
  end

  # GET /peer_allies/1/edit
  def edit
    @peer_ally = PeerAlly.find(params[:id])
  end

  # POST /peer_allies
  # POST /peer_allies.json
  def create
    @peer_ally = PeerAlly.create!(params[:peer_ally])

    respond_to do |format|
      if @peer_ally.save
        format.html { redirect_to @peer_ally, notice: 'Peer ally was successfully created.' }
        format.json { render json: @peer_ally, status: :created, location: @peer_ally }
      else
        format.html { render action: "new" }
        format.json { render json: @peer_ally.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /peer_allies/1
  # PUT /peer_allies/1.json
  def update
    @peer_ally = PeerAlly.find(params[:id])

    respond_to do |format|
      if @peer_ally.update_attributes(params[:peer_ally])
        format.html { redirect_to @peer_ally, notice: 'Peer ally was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @peer_ally.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /peer_allies/1
  # DELETE /peer_allies/1.json
  def destroy
    @peer_ally = PeerAlly.find(params[:id])
    @peer_ally.destroy

    respond_to do |format|
      format.html { redirect_to peer_allies_url }
      format.json { head :no_content }
    end
  end

  def contact
    # right now this just sends an email to a hardcoded email address
    # which is actually the email I set up for this project: peeralliesups@gmail.com
    # later functionality should include

    # if you want to test the email functionality just change the hard-coded
    # email address in app / mailers / ally_mailer.rb
    # to an email you have access to
    # at least until we get the form set up
    AllyMailer.notification_email.deliver

    # this is just so the route works for now
    # this is a TEMPORARY SOLUTION as far as I know
    redirect_to :index
    
  end

end
