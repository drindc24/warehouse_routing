module DestinationsHelper
  def references(destination)
    destination.references.map(&:ref_code)
  end

  def categories(destination)
    destination.categories.map(&:name)
  end
end
