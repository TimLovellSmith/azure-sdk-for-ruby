# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL::Api_2014_04_01
  module Models
    #
    # Represents a Service Tier Advisor.
    #
    class ServiceTierAdvisor < ProxyResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [DateTime] The observation period start (ISO8601 format).
      attr_accessor :observation_period_start

      # @return [DateTime] The observation period start (ISO8601 format).
      attr_accessor :observation_period_end

      # @return [Float] The activeTimeRatio for service tier advisor.
      attr_accessor :active_time_ratio

      # @return [Float] Gets or sets minDtu for service tier advisor.
      attr_accessor :min_dtu

      # @return [Float] Gets or sets avgDtu for service tier advisor.
      attr_accessor :avg_dtu

      # @return [Float] Gets or sets maxDtu for service tier advisor.
      attr_accessor :max_dtu

      # @return [Float] Gets or sets maxSizeInGB for service tier advisor.
      attr_accessor :max_size_in_gb

      # @return [Array<SloUsageMetric>] Gets or sets
      # serviceLevelObjectiveUsageMetrics for the service tier advisor.
      attr_accessor :service_level_objective_usage_metrics

      # @return [String] Gets or sets currentServiceLevelObjective for service
      # tier advisor.
      attr_accessor :current_service_level_objective

      # @return Gets or sets currentServiceLevelObjectiveId for service tier
      # advisor.
      attr_accessor :current_service_level_objective_id

      # @return [String] Gets or sets
      # usageBasedRecommendationServiceLevelObjective for service tier advisor.
      attr_accessor :usage_based_recommendation_service_level_objective

      # @return Gets or sets usageBasedRecommendationServiceLevelObjectiveId
      # for service tier advisor.
      attr_accessor :usage_based_recommendation_service_level_objective_id

      # @return [String] Gets or sets
      # databaseSizeBasedRecommendationServiceLevelObjective for service tier
      # advisor.
      attr_accessor :database_size_based_recommendation_service_level_objective

      # @return Gets or sets
      # databaseSizeBasedRecommendationServiceLevelObjectiveId for service tier
      # advisor.
      attr_accessor :database_size_based_recommendation_service_level_objective_id

      # @return [String] Gets or sets
      # disasterPlanBasedRecommendationServiceLevelObjective for service tier
      # advisor.
      attr_accessor :disaster_plan_based_recommendation_service_level_objective

      # @return Gets or sets
      # disasterPlanBasedRecommendationServiceLevelObjectiveId for service tier
      # advisor.
      attr_accessor :disaster_plan_based_recommendation_service_level_objective_id

      # @return [String] Gets or sets
      # overallRecommendationServiceLevelObjective for service tier advisor.
      attr_accessor :overall_recommendation_service_level_objective

      # @return Gets or sets overallRecommendationServiceLevelObjectiveId for
      # service tier advisor.
      attr_accessor :overall_recommendation_service_level_objective_id

      # @return [Float] Gets or sets confidence for service tier advisor.
      attr_accessor :confidence


      #
      # Mapper for ServiceTierAdvisor class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ServiceTierAdvisor',
          type: {
            name: 'Composite',
            class_name: 'ServiceTierAdvisor',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              observation_period_start: {
                required: false,
                read_only: true,
                serialized_name: 'properties.observationPeriodStart',
                type: {
                  name: 'DateTime'
                }
              },
              observation_period_end: {
                required: false,
                read_only: true,
                serialized_name: 'properties.observationPeriodEnd',
                type: {
                  name: 'DateTime'
                }
              },
              active_time_ratio: {
                required: false,
                read_only: true,
                serialized_name: 'properties.activeTimeRatio',
                type: {
                  name: 'Double'
                }
              },
              min_dtu: {
                required: false,
                read_only: true,
                serialized_name: 'properties.minDtu',
                type: {
                  name: 'Double'
                }
              },
              avg_dtu: {
                required: false,
                read_only: true,
                serialized_name: 'properties.avgDtu',
                type: {
                  name: 'Double'
                }
              },
              max_dtu: {
                required: false,
                read_only: true,
                serialized_name: 'properties.maxDtu',
                type: {
                  name: 'Double'
                }
              },
              max_size_in_gb: {
                required: false,
                read_only: true,
                serialized_name: 'properties.maxSizeInGB',
                type: {
                  name: 'Double'
                }
              },
              service_level_objective_usage_metrics: {
                required: false,
                read_only: true,
                serialized_name: 'properties.serviceLevelObjectiveUsageMetrics',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'SloUsageMetricElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SloUsageMetric'
                      }
                  }
                }
              },
              current_service_level_objective: {
                required: false,
                read_only: true,
                serialized_name: 'properties.currentServiceLevelObjective',
                type: {
                  name: 'String'
                }
              },
              current_service_level_objective_id: {
                required: false,
                read_only: true,
                serialized_name: 'properties.currentServiceLevelObjectiveId',
                type: {
                  name: 'String'
                }
              },
              usage_based_recommendation_service_level_objective: {
                required: false,
                read_only: true,
                serialized_name: 'properties.usageBasedRecommendationServiceLevelObjective',
                type: {
                  name: 'String'
                }
              },
              usage_based_recommendation_service_level_objective_id: {
                required: false,
                read_only: true,
                serialized_name: 'properties.usageBasedRecommendationServiceLevelObjectiveId',
                type: {
                  name: 'String'
                }
              },
              database_size_based_recommendation_service_level_objective: {
                required: false,
                read_only: true,
                serialized_name: 'properties.databaseSizeBasedRecommendationServiceLevelObjective',
                type: {
                  name: 'String'
                }
              },
              database_size_based_recommendation_service_level_objective_id: {
                required: false,
                read_only: true,
                serialized_name: 'properties.databaseSizeBasedRecommendationServiceLevelObjectiveId',
                type: {
                  name: 'String'
                }
              },
              disaster_plan_based_recommendation_service_level_objective: {
                required: false,
                read_only: true,
                serialized_name: 'properties.disasterPlanBasedRecommendationServiceLevelObjective',
                type: {
                  name: 'String'
                }
              },
              disaster_plan_based_recommendation_service_level_objective_id: {
                required: false,
                read_only: true,
                serialized_name: 'properties.disasterPlanBasedRecommendationServiceLevelObjectiveId',
                type: {
                  name: 'String'
                }
              },
              overall_recommendation_service_level_objective: {
                required: false,
                read_only: true,
                serialized_name: 'properties.overallRecommendationServiceLevelObjective',
                type: {
                  name: 'String'
                }
              },
              overall_recommendation_service_level_objective_id: {
                required: false,
                read_only: true,
                serialized_name: 'properties.overallRecommendationServiceLevelObjectiveId',
                type: {
                  name: 'String'
                }
              },
              confidence: {
                required: false,
                read_only: true,
                serialized_name: 'properties.confidence',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
