require 'opt_in'

describe OptIn::Client do
  let(:service_url) { "http://localhost:8000" }

  subject { described_class.new(service_url) }

  it 'should initialize with url' do
    described_class.new(service_url).should_not be_nil
  end

  describe '#create' do
    it 'requests a creation of new OptIn with given params' do
      params = {first_name: "some_name", email: "some@email.com"}
      RestClient.should_receive(:post).with(service_url, params).and_return('{"id": 1}')
      subject.create(params)
    end
  end

  describe '#update' do
    it 'requests an updating OptIn with params' do
      params = {id: 13, first_name: "new_name"}
      RestClient.should_receive(:put).with(service_url, params)
      subject.update(params)
    end
  end

  describe '#deactivate' do
    it 'requests deactivation of OptIn with given id' do
      id = 13
      RestClient.should_receive(:delete).with(URI.join(service_url, '13').to_s)
      subject.deactivate(id)
    end
  end
end
