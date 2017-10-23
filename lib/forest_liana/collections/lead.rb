class Forest::Lead
  include ForestLiana::Collection

  collection :leads
  action 'Send email'
end
