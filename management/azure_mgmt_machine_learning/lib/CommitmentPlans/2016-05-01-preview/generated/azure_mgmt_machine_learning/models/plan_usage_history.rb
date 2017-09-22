# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MachineLearning::CommitmentPlans::Api_2016_05_01_preview
  module Models
    #
    # Represents historical information about usage of the Azure resources
    # associated with a commitment plan.
    #
    class PlanUsageHistory

      include MsRestAzure

      include MsRest::JSONable
      # @return [Hash{String => Float}] Overage incurred as a result of
      # deleting a commitment plan.
      attr_accessor :plan_deletion_overage

      # @return [Hash{String => Float}] Overage incurred as a result of
      # migrating a commitment plan from one SKU to another.
      attr_accessor :plan_migration_overage

      # @return [Hash{String => Float}] Included quantities remaining after
      # usage against the commitment plan's associated resources was
      # calculated.
      attr_accessor :plan_quantities_after_usage

      # @return [Hash{String => Float}] Included quantities remaining before
      # usage against the commitment plan's associated resources was
      # calculated.
      attr_accessor :plan_quantities_before_usage

      # @return [Hash{String => Float}] Usage against the commitment plan's
      # associated resources which was not covered by included quantities and
      # is therefore overage.
      attr_accessor :plan_usage_overage

      # @return [Hash{String => Float}] Usage against the commitment plan's
      # associated resources.
      attr_accessor :usage

      # @return [DateTime] The date of usage, in ISO 8601 format.
      attr_accessor :usage_date


      #
      # Mapper for PlanUsageHistory class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'PlanUsageHistory',
          type: {
            name: 'Composite',
            class_name: 'PlanUsageHistory',
            model_properties: {
              plan_deletion_overage: {
                required: false,
                serialized_name: 'planDeletionOverage',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'FloatElementType',
                      type: {
                        name: 'Double'
                      }
                  }
                }
              },
              plan_migration_overage: {
                required: false,
                serialized_name: 'planMigrationOverage',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'FloatElementType',
                      type: {
                        name: 'Double'
                      }
                  }
                }
              },
              plan_quantities_after_usage: {
                required: false,
                serialized_name: 'planQuantitiesAfterUsage',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'FloatElementType',
                      type: {
                        name: 'Double'
                      }
                  }
                }
              },
              plan_quantities_before_usage: {
                required: false,
                serialized_name: 'planQuantitiesBeforeUsage',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'FloatElementType',
                      type: {
                        name: 'Double'
                      }
                  }
                }
              },
              plan_usage_overage: {
                required: false,
                serialized_name: 'planUsageOverage',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'FloatElementType',
                      type: {
                        name: 'Double'
                      }
                  }
                }
              },
              usage: {
                required: false,
                serialized_name: 'usage',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'FloatElementType',
                      type: {
                        name: 'Double'
                      }
                  }
                }
              },
              usage_date: {
                required: false,
                serialized_name: 'usageDate',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
