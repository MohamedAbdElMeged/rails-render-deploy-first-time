module Api
  module V1
    class ConsumerController < Api::ApplicationController
      def consume
        result = Organizers::ConsumeExternalRequestOrganizer.call(consume_params)
        if result.success?

          render json: { ticket: result.ticket, excavator: result.excavator }, status: 201
        else
          render json: result.message, status: 422
        end
      end

      private

      def consume_params
        params.permit(:RequestNumber, :SequenceNumber, :RequestType, :RequestAction,
                      DateTimes: %i[ResponseDueDateTime], ServiceArea: [{ PrimaryServiceAreaCode: {} }, { AdditionalServiceAreaCodes: { SACode: [] } }],
                      Excavator: %i[CompanyName Address State City Zip CrewOnsite],
                      ExcavationInfo: { DigsiteInfo: %i[WellKnownText] })
      end
    end
  end
end
