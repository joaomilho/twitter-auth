class SessionsController < ApplicationController
  def create
    #raise auth_hash.inspect
    auth = Authorization.find_by(uid: uid)
    unless auth
      auth = Authorization.create uid: uid, provider: provider, data: auth_hash
    end
    session[:auth] = auth.uid
    redirect_to '/'
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end

  def uid
    auth_hash.uid
  end

  def provider
    auth_hash.provider
  end

end
