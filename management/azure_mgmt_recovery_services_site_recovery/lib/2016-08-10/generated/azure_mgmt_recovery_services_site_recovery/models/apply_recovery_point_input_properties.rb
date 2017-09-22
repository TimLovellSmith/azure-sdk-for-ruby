# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10
  module Models
    #
    # Input properties to apply recovery point.
    #
    class ApplyRecoveryPointInputProperties

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The recovery point Id.
      attr_accessor :recovery_point_id

      # @return [ApplyRecoveryPointProviderSpecificInput] Provider specific
      # input for applying recovery point.
      attr_accessor :provider_specific_details


      #
      # Mapper for ApplyRecoveryPointInputProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ApplyRecoveryPointInputProperties',
          type: {
            name: 'Composite',
            class_name: 'ApplyRecoveryPointInputProperties',
            model_properties: {
              recovery_point_id: {
                required: false,
                serialized_name: 'recoveryPointId',
                type: {
                  name: 'String'
                }
              },
              provider_specific_details: {
                required: false,
                serialized_name: 'providerSpecificDetails',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'instanceType',
                  uber_parent: 'ApplyRecoveryPointProviderSpecificInput',
                  class_name: 'ApplyRecoveryPointProviderSpecificInput'
                }
              }
            }
          }
        }
      end
    end
  end
end
