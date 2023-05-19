class TicketsController < ApplicationController
  before_action :set_ticket, only: [:show]
  def index
    @tickets = Ticket.includes(:excavator).all
  end

  def show; end

  private

  def set_ticket
    @ticket = Ticket.find_by(id: params[:id])
    raise ActionController::RoutingError, 'Not Found' unless @ticket
  end
end
