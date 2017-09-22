# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL::Api_2015_05_01_preview
  module Models
    #
    # A virtual network rule.
    #
    class VirtualNetworkRule < ProxyResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The ARM resource id of the virtual network subnet.
      attr_accessor :virtual_network_subnet_id


      #
      # Mapper for VirtualNetworkRule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualNetworkRule',
          type: {
            name: 'Composite',
            class_name: 'VirtualNetworkRule',
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
              virtual_network_subnet_id: {
                required: true,
                serialized_name: 'properties.virtualNetworkSubnetId',
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
