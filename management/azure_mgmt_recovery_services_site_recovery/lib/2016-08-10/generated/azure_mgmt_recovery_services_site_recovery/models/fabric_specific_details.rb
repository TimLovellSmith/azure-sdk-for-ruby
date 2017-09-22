# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10
  module Models
    #
    # Fabric specific details.
    #
    class FabricSpecificDetails

      include MsRestAzure

      include MsRest::JSONable
      @@discriminatorMap = Hash.new
      @@discriminatorMap["Azure"] = "AzureFabricSpecificDetails"
      @@discriminatorMap["VMM"] = "VmmDetails"
      @@discriminatorMap["HyperVSite"] = "HyperVSiteDetails"
      @@discriminatorMap["VMware"] = "VMwareDetails"
      @@discriminatorMap["VMwareV2"] = "VMwareV2FabricSpecificDetails"

      def initialize
        @instanceType = "FabricSpecificDetails"
      end

      attr_accessor :instanceType


      #
      # Mapper for FabricSpecificDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'FabricSpecificDetails',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'instanceType',
            uber_parent: 'FabricSpecificDetails',
            class_name: 'FabricSpecificDetails',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
