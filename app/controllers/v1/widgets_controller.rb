module V1
  class WidgetsController < ApplicationController
    before_action :set_widget, only: [:show, :update, :destroy]

    # GET /widgets
    def index
      @widgets = Widget.all
      if @widgets.length == 0
        bad_request
      else
        render json: @widgets
      end
    end

    # GET /widgets/1
    def show
      render json: @widget
    end

    # POST /widgets
    def create
      @widget = Widget.new(widget_params)

      if @widget.save
        render json: @widget, status: :ok
      else
        render json: @widget.errors, status: :bad_request
      end
    end

    # PATCH/PUT /widgets/1
    def update
      @widget = Widget.find(params[:id])

      if @widget.update(widget_params)
        head :ok
      else
        render json: @widget.errors, status: :bad_request
      end
    end

    # DELETE /widgets/1
    def destroy
      @widget.destroy
      head :ok
    end

    def bad_request
      render json: { error: "Resource not found." }, status: :bad_request
    end

    private

      def set_widget
        @widget = Widget.find(params[:id])
        rescue ActiveRecord::RecordNotFound
          bad_request
      end

      def widget_params
        params.require(:widget).permit(:name, :description, :ready_on)
      end
  end
end
