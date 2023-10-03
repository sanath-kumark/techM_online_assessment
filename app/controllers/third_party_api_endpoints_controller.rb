class ThirdPartyApiEndpointsController < ApplicationController
  before_action :set_third_party_api_endpoint, only: %i[ show edit update destroy ]

  # GET /third_party_api_endpoints or /third_party_api_endpoints.json
  def index
    @third_party_api_endpoints = ThirdPartyApiEndpoint.all
  end

  # GET /third_party_api_endpoints/1 or /third_party_api_endpoints/1.json
  def show
  end

  # GET /third_party_api_endpoints/new
  def new
    @third_party_api_endpoint = ThirdPartyApiEndpoint.new
  end

  # GET /third_party_api_endpoints/1/edit
  def edit
  end

  # POST /third_party_api_endpoints or /third_party_api_endpoints.json
  def create
    @third_party_api_endpoint = ThirdPartyApiEndpoint.new(third_party_api_endpoint_params)

    respond_to do |format|
      if @third_party_api_endpoint.save
        format.html { redirect_to third_party_api_endpoint_url(@third_party_api_endpoint), notice: "Third party api endpoint was successfully created." }
        format.json { render :show, status: :created, location: @third_party_api_endpoint }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @third_party_api_endpoint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /third_party_api_endpoints/1 or /third_party_api_endpoints/1.json
  def update
    respond_to do |format|
      if @third_party_api_endpoint.update(third_party_api_endpoint_params)
        format.html { redirect_to third_party_api_endpoint_url(@third_party_api_endpoint), notice: "Third party api endpoint was successfully updated." }
        format.json { render :show, status: :ok, location: @third_party_api_endpoint }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @third_party_api_endpoint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /third_party_api_endpoints/1 or /third_party_api_endpoints/1.json
  def destroy
    @third_party_api_endpoint.destroy

    respond_to do |format|
      format.html { redirect_to third_party_api_endpoints_url, notice: "Third party api endpoint was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_third_party_api_endpoint
      @third_party_api_endpoint = ThirdPartyApiEndpoint.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def third_party_api_endpoint_params
      params.require(:third_party_api_endpoint).permit(:endpoint)
    end
end
