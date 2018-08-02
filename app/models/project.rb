class Project < ApplicationRecord
  belongs_to :tenant
  validates_uniqueness_of :title
  validate :limited_plan_can_only_have_one_project
  
  def limited_plan_can_only_have_one_project
      if self.new_record? && (tenant.projects.count > 0) && (tenant.plan == 'limited')
          errors.add(:base, "Limited plan cannot have any more than one project per account")
      end
  end
  
  def self.by_plan_and_tenant(tenant_id)
      tenant = Tenant.find(tenant_id)
      if tenant.plan == 'premium'
          tenant.projects
      else
          tenant.projects.order(:id).limit(1)
      end
  end
end
