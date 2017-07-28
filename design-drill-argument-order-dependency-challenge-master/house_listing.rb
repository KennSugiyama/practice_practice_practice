class HouseListing
  attr_reader :address, :asking_price, :bedroom_count, :bathroom_count, :square_footage, :listing_type, :listing_id, :year_built, :active

def initialize(listing_details)
    @address = listing_details.fetch(:address)
    @asking_price = listing_details.fetch(:asking_price)
    @square_footage = listing_details.fetch(:square_footage)
    @listing_type = listing_details.fetch(:listing_type)
    @listing_id = listing_details.fetch(:listing_id)
    @year_built = listing_details.fetch(:year_built)
    @bedroom_count = listing_details.fetch(:bedroom_count, 3)
    @bathroom_count = listing_details.fetch(:bathroom_count, 2)
    @active = listing_details.fetch(:active, true)
    @occupied = listing_details.fetch(:occupied, true)
  end

  def active?
    @active
  end

  def occupied?
    @occupied
  end
end
