class Api::V1::UsersController < ApplicationController
  # CSRF Token Validations SKIP
  protect_from_forgery with: :null_session

  def login
    # Check available user
    user = User.find_by(name: params[:name])
    if user.nil?
      render json: { status: 'error', message: 'User does not exist. Sign up to continue.' }, status: 422
    else
      render status: 200, json: { message: 'Login success', status: 200, id: user.id, name: user.name }
    end
  end

  def register
    # Updated to find by either name or full_name
    user = User.find_by(name: params[:name]) || User.find_by(full_name: params[:full_name])

    if user.nil?
      # Updated to include full_name in the user creation
      user = User.new(name: params[:name], full_name: params[:full_name])

      if user.save
        render status: 201,
               json: { message: 'You are successfully registered.', id: user.id, name: user.name,
                       full_name: user.full_name,
                       status: 201 }
      else
        render status: 500, json: { message: 'Something went wrong. Please try again later.', status: 500 }
      end
    else
      render status: 400,
             json: { message: 'User already exists.', id: user.id, name: user.name,
                     full_name: user.full_name, status: 400 }
    end
  end
end
