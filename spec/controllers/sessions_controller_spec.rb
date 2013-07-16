require 'spec_helper'

describe SessionsController do
  subject(:user) { Fabricate(:user)}

  describe "POST #create" do
    it "logs an authenticated user in and redirects to site#index"

    it "redisplays login form for unauthenticated users"

    it "sets code and expires_at for a password reset request"

  end
  
end