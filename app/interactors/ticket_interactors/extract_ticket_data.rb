module TicketInteractors
  class ExtractTicketData
    include Interactor
    def call
      extract_ticket_data
    end

    private

    def extract_ticket_data
      params = context.to_h

      context.ticket = Ticket.new(
        request_number: params[:RequestNumber],
        sequence_number: params[:SequenceNumber],
        request_type: params[:RequestType],
        request_action: params[:RequestAction],
        response_due_date_time: params&.[](:DateTimes)&.[](:ResponseDueDateTime),
        primary_service_area_code: params&.[](:ServiceArea)&.[](:PrimaryServiceAreaCode)&.[](:SACode),
        additional_service_area_codes: params&.[](:ServiceArea)&.[](:AdditionalServiceAreaCodes)&.[](:SACode),
        well_known_text: params&.[](:ExcavationInfo)&.[](:DigsiteInfo)&.[](:WellKnownText)
      )
    end
  end
end

#      <%= javascript_tag 'application', 'data-turbolinks-track': 'reload' %>
