class Museum
  attr_reader :name,
              :exhibits,
              :patrons

  def initialize(name)
    @name     = name
    @exhibits = []
    @patrons  = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def patron_intrests_one_at_a_time
  end

  def recommend_exhibits(patron)
    recommendations = []
    @exhibits.find_all do |exhibit|
      if patron.interests.include?(exhibit.name)
        recommendations << exhibit
      end
    end
    recommendations
  end

  def admit(patron)
    @patrons << patron 
  end
end
