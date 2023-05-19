module TicketInteractors
  class CreateTicket
    include Interactor
    def call
      return unless context.ticket

      create_ticket
    end

    private

    def create_ticket
      context.ticket.save!
      context.ticket = context.ticket.reload
    rescue  StandardError => e
        context.fail!(message: e)
    end
  end
end
