# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10
  module Models
    #
    # This class represents the vm NicUpdates task details.
    #
    class VmNicUpdatesTaskDetails < TaskTypeDetails

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @instanceType = "VmNicUpdatesTaskDetails"
      end

      attr_accessor :instanceType

      # @return [String] Virtual machine Id.
      attr_accessor :vm_id

      # @return [String] Nic Id.
      attr_accessor :nic_id

      # @return [String] Name of the Nic.
      attr_accessor :name


      #
      # Mapper for VmNicUpdatesTaskDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VmNicUpdatesTaskDetails',
          type: {
            name: 'Composite',
            class_name: 'VmNicUpdatesTaskDetails',
            model_properties: {
              instanceType: {
                required: true,
                serialized_name: 'instanceType',
                type: {
                  name: 'String'
                }
              },
              vm_id: {
                required: false,
                serialized_name: 'vmId',
                type: {
                  name: 'String'
                }
              },
              nic_id: {
                required: false,
                serialized_name: 'nicId',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
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
