module Api
  module V1
    class UsersController < ApplicationController
      include Knock::Authenticable 
      
      def create
        user = User.create(email: params[:email], password: params[:password])
      end

      def show 
        # byebug
        user = User.find(params[:id])
        render json: UserAnalytics.run(user)
      end

      def populate
        # byebug
        render json: UserAnalytics.run(current_user)
      end

      
      # def update
      #   user = User.find(params[:id])
      #   game = Game.create(board_id: params[:board_id], user_id: user.id, final_score: params[:final_score])
      #   user.games.push(game)
      #   user.save
      # end

      def analytics
        render json: User.leader_board
      end

      
    end
  end
end
