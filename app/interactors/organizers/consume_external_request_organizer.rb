module Organizers
  class ConsumeExternalRequestOrganizer
    include Interactor::Organizer
    organize TicketInteractors::ExtractTicketData, TicketInteractors::CreateTicket,
             ExcavatorInteractors::CreateExcavator
  end
end
