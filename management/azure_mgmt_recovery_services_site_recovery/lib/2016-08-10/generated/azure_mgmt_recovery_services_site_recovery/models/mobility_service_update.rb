# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10
  module Models
    #
    # The Mobility Service update details.
    #
    class MobilityServiceUpdate

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The version of the latest update.
      attr_accessor :version

      # @return [String] The reboot status of the update - whether it is
      # required or not.
      attr_accessor :reboot_status

      # @return [String] The OS type.
      attr_accessor :os_type


      #
      # Mapper for MobilityServiceUpdate class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'MobilityServiceUpdate',
          type: {
            name: 'Composite',
            class_name: 'MobilityServiceUpdate',
            model_properties: {
              version: {
                required: false,
                serialized_name: 'version',
                type: {
                  name: 'String'
                }
              },
              reboot_status: {
                required: false,
                serialized_name: 'rebootStatus',
                type: {
                  name: 'String'
                }
              },
              os_type: {
                required: false,
                serialized_name: 'osType',
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
