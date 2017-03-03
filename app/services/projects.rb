class Projects
  def initialize
  end
  def get_response
    response = RestClient::Request.new(
    :method => :get,
    url: "https://api.github.com/users/devinludwig/repos?access_token=#{ENV['GITHUB_TOKEN']}").execute
  rescue RestClient::BadRequest => error
   message = JSON.parse(error.response)['message']
   errors.add(:base, message)
   throw(:abort)
  end
end

#

# basic_auth: { username: "devinludwig", password: "#{ENV['GITHUB_TOKEN']}" },
# :headers=>{
#   "User-Agent" => "devinludwig",
#   "Authorization" => "token #{ENV['GITHUB_TOKEN']}"
# })
# username:"#{ENV['GITHUB_TOKEN']}"
