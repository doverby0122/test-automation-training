class User
  attr_accessor :first_name, :last_name, :email, :full_name
  #accessor is writer and a reader, if only reader, use attr_reader
  #shortcut for defining methods
  def initialize(access_token)
    dev_url     = 'https://api-dev.vitalsource.com'
    endpt       = '/v4/users/'
    api_key     = ENV['API_KEY']
    url         = "#{dev_url}#{endpt}#{access_token}"
    h1          = {'X-VitalSource-API-Key': api_key}
    api_resp    = RestClient.get url, h1
    user_info   = JSON.parse(api_resp)
###### keep these inside your class definition, once outside they won't be available to you
    @first_name = user_info['first_name']
    @last_name  = user_info['last_name']
    @email      = user_info['email']
    @full_name  = @first_name + ' ' + @last_name
    # the above is the below which uses string interpolation
    # we still use concatenation to create the fancy space which lives between the first and last name
    # @full_name   = user_info['first_name'] + ' ' + user_info['last_name']
  end
end
