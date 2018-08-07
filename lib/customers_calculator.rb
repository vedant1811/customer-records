class CustomersCalculator
  def initialize(origin, max_dist = 100)
    @origin = origin
    @max_dist = max_dist.freeze
  end

  def filter_and_sort(customers)
    customers.select { |c| c.distance_from(@origin) <= @max_dist }
        .sort
  end
end
