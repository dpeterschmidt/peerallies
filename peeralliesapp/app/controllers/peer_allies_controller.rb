class PeerAlliesController < ApplicationController
  # GET /peer_allies
  # GET /peer_allies.json
  def index

    @peer_allies = PeerAlly.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @peer_allies }
    end
    # redirect_to '/app/views/peer_allies/ally_list.html.erb'
  end

  def action
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @peer_ally }
    end
  end

  # GET /peer_allies/1
  # GET /peer_allies/1.json
  def show
    @peer_ally = PeerAlly.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @peer_ally }


    end
  end

  # GET /peer_allies/new
  # GET /peer_allies/new.json
  def new
    @peer_ally = PeerAlly.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @peer_ally }
    end
  end

  # GET /peer_allies/1/edit
  def edit
    @peer_ally = PeerAlly.find(params[:id])
  end

  # POST /peer_allies
  # POST /peer_allies.json
  def create
    @peer_ally = PeerAlly.new(params[:peer_ally])

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

end
