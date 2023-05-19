module ExcavatorInteractors
  class CreateExcavator
    include Interactor
    def call
      create_excavator
    end

    private

    def create_excavator
      params = context.to_h
      context.excavator = context.ticket.build_excavator
      context.excavator.company_name = params&.[](:Excavator)&.[](:CompanyName)
      context.excavator.address = map_excavator_address(params&.[](:Excavator))
      context.excavator.crew_on_site = params&.[](:Excavator)&.[](:CrewOnsite)
      context.excavator.save!
    rescue  StandardError => e
        context.fail!(message: e)
    end

    def map_excavator_address(excavator)
      "Address: #{excavator&.[](:Address)} , City:  #{excavator&.[](:City)} , State: #{excavator&.[](:State)} , Zip: #{excavator&.[](:Zip)}   "
    end
  end
end
