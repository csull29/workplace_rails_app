class Plan
    PLANS = [:limited, :premium]
    
    def self.options
        PLANS.map { |plan| [plan.capitalize, plan]}
    end
end