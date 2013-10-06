require 'bundler/setup'
require 'docnmock'

module DocnmockGithub

end

Docnmock.api 'https://api.github.com' do

  resource_group 'Users' do

    description <<-EOD
      Many of the resources on the users API provide a shortcut for
      getting information about the currently authenticated user. If a request URL
      does not include a :user parameter then the response will be for the logged in
      user (and you must pass authentication information with your request).
    EOD

    resource :get, '/users/:user' do
      description 'Get a single user'
      parameter name: :user, description: 'The user', required: false
      example path: '/users/octocat', response: <<-EOR
      {
        "login": "octocat",
        "id": 1,
        "avatar_url": "https://github.com/images/error/octocat_happy.gif",
        "gravatar_id": "somehexcode",
        "url": "https://api.github.com/users/octocat",
        "name": "monalisa octocat",
        "company": "GitHub",
        "blog": "https://github.com/blog",
        "location": "San Francisco",
        "email": "octocat@github.com",
        "hireable": false,
        "bio": "There once was...",
        "public_repos": 2,
        "public_gists": 1,
        "followers": 20,
        "following": 0,
        "html_url": "https://github.com/octocat",
        "created_at": "2008-01-14T04:33:35Z",
        "type": "User"
      }
      EOR
    end
  end
end
