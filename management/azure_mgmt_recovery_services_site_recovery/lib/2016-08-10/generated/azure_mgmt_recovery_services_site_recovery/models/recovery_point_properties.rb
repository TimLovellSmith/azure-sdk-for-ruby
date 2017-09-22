# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10
  module Models
    #
    # Recovery point properties.
    #
    class RecoveryPointProperties

      include MsRestAzure

      include MsRest::JSONable
      # @return [DateTime] The recovery point time.
      attr_accessor :recovery_point_time

      # @return [String] The recovery point type: ApplicationConsistent,
      # CrashConsistent.
      attr_accessor :recovery_point_type

      # @return [ProviderSpecificRecoveryPointDetails] The provider specific
      # details for the recovery point.
      attr_accessor :provider_specific_details


      #
      # Mapper for RecoveryPointProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RecoveryPointProperties',
          type: {
            name: 'Composite',
            class_name: 'RecoveryPointProperties',
            model_properties: {
              recovery_point_time: {
                required: false,
                serialized_name: 'recoveryPointTime',
                type: {
                  name: 'DateTime'
                }
              },
              recovery_point_type: {
                required: false,
                serialized_name: 'recoveryPointType',
                type: {
                  name: 'String'
                }
              },
              provider_specific_details: {
                required: false,
                serialized_name: 'providerSpecificDetails',
                type: {
                  name: 'Composite',
                  class_name: 'ProviderSpecificRecoveryPointDetails'
                }
              }
            }
          }
        }
      end
    end
  end
end
