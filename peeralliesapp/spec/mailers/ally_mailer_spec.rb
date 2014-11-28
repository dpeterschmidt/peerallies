require "spec_helper"

RSpec.describe AllyMailer, :type => :mailer do
  describe "notification_email" do
    let(:mail) { AllyMailer.notification_email }
  end

  before(:each) do
    ActionMailer::Base.delivery_method = :test
    ActionMailer::Base.perform_deliveries = true
    ActionMailer::Base.deliveries = []
    @name = "Joshua Nance"
    @email = 'jnance@pugetsound.edu'
    @message = "Message received"
    AllyMailer.notification_email(@name, @email, @message).deliver
  end

  after(:each) do
    ActionMailer::Base.deliveries.clear
  end

  it 'should send an email' do
    # ActionMailer::Base.deliveries.count.should == 1
    expect(ActionMailer::Base.deliveries.count).to eq(1)

  end

  it 'renders the receiver email' do
    # ActionMailer::Base.deliveries.first.to.should == @email
    expect(ActionMailer::Base.deliveries.second).to eq(@email)
  end

  it 'renders the sender email' do
    # ActionMailer::Base.deliveries.first.from.should == "peerallies.pugetsound.edu"
    expect(ActionMailer::Base.deliveries.first.from).to eq(@email);
  end
end