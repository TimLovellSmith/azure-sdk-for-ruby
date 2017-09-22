# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10
  module Models
    #
    # InMage Azure V2 input to update replication protected item.
    #
    class A2AUpdateReplicationProtectedItemInput < UpdateReplicationProtectedItemProviderInput

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @instanceType = "A2A"
      end

      attr_accessor :instanceType

      # @return [String] The target cloud service ARM Id (for V1).
      attr_accessor :recovery_cloud_service_id

      # @return [String] The target resource group ARM Id (for V2).
      attr_accessor :recovery_resource_group_id


      #
      # Mapper for A2AUpdateReplicationProtectedItemInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'A2A',
          type: {
            name: 'Composite',
            class_name: 'A2AUpdateReplicationProtectedItemInput',
            model_properties: {
              instanceType: {
                required: true,
                serialized_name: 'instanceType',
                type: {
                  name: 'String'
                }
              },
              recovery_cloud_service_id: {
                required: false,
                serialized_name: 'recoveryCloudServiceId',
                type: {
                  name: 'String'
                }
              },
              recovery_resource_group_id: {
                required: false,
                serialized_name: 'recoveryResourceGroupId',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
