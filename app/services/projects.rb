class Projects
  def initialize
  end
  def get_response
    response = JSON.parse(RestClient.get("https://api.github.com/users/devinludwig/starred?access_token=#{ENV['GITHUB_TOKEN']}"))
  rescue RestClient::BadRequest => error
   message = JSON.parse(error.response)['message']
   errors.add(:base, message)
   throw(:abort)
  end
end
