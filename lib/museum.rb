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

  def patrons_by_exhibit_interest
    patrons_by_exhibit_interest = Hash.new { |h, k| h[k] = []}
    @exhibits.each do |exhibit|
      patrons_by_exhibit_interest[exhibit]
      @patrons.each do |patron|
        if recommend_exhibits(patron).include?(exhibit)
          patrons_by_exhibit_interest[exhibit] << patron
        end
      end
  end
    patrons_by_exhibit_interest
  end

  def ticket_lottery_contestants(exhibit)
    @patrons.find_all do |patron|
      patron.spending_money < exhibit.cost
    end 
  end
end
