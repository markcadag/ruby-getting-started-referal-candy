class PurchasesController < ApplicationController
  before_action :set_purchase, only: %i[ show edit update destroy ]
  require 'faker'
  require 'digest'

  # GET /purchases or /purchases.json
  def index
    @email = params[:email]
    @lastname = Faker::Name.last_name
    @name = Faker::Name.first_name
    @amount = Faker::Number.number(digits: 3)
    @timestamp = Time.now.to_i
    @external_id = Faker::Alphanumeric.alpha(number: 5)
    @account_secret = "55a66d3725684e3038b2d4326eb622f4"
    @data = "#{@email},#{@name},#{@amount},#{@timestamp},#{@account_secret}"
    @data_signature = Digest::MD5.hexdigest(@data)
  end
end
