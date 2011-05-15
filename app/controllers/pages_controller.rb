# your Twilio authentication credentials
ACCOUNT_SID = 'ACfaca27470c2435d2f403b9e3bec18c85'
ACCOUNT_TOKEN = 'de22332a576b700d8a795f8e4a01c2e1'

# version of the Twilio REST API to use
API_VERSION = '2010-04-01'

# base URL of this application
BASE_URL = "http://demo.twilio.com/welcome/sms"

# Outgoing Caller ID you have previously validated with Twilio
CALLER_ID = '4155992671'
require "twiliolib.rb"



class PagesController < ApplicationController

  # Use the Twilio REST API to initiate an outgoing call
  def sendtext
    if !params['number']
      redirect_to({ :action => '.', 'msg' => 'Invalid phone number' })
      return
    end

    # parameters sent to Twilio REST API
    d = {
      'From' => CALLER_ID,
      'To' => params['number'],
      'Body' => 'test text message from srini',
    }
    begin
      account = Twilio::RestAccount.new(ACCOUNT_SID, ACCOUNT_TOKEN)
      resp = account.request("/#{API_VERSION}/Accounts/#{ACCOUNT_SID}/SMS/Messages", 'POST', d)
      resp.error! unless resp.kind_of? Net::HTTPSuccess
            
    rescue StandardError => bang
      redirect_to({ :action => '.', 'msg' => "Error #{ bang }" })
      return
    end

    redirect_to({ :action => '.',
        'msg' => "Calling #{ params['number'] }..." })
  end

  def home
    @title = "Home"
    @bfst_messages = Message.find_all_by_category ('breakfast')
    @lunch_messages = Message.find_all_by_category('lunch')
    @snack_messages = Message.find_all_by_category('snack')
    @dinner_messages = Message.find_all_by_category('dinner')
    @receiver = Receiver.new
  end

  
  def save_receiver_data
    #unless params[:receiver].blank?
      @receiver = Receiver.new(params[:receiver])
      @receiver.messages << Message.find(params[:messages]) unless params[:messages].blank?
      @receiver.save
      if @receiver.save
        flash[:notice] = 'Saved Successfully'
        redirect_to :controller => :pages, :action => :home
      else
        flash[:notice] = 'Not Saved'
        render :action => :home
      end
      # end
  end

  def contact
    @title = "Contact"
  end
  
  def about
    @title = "About"
  end
  
  def help
    @title = "Help"
  end
end
