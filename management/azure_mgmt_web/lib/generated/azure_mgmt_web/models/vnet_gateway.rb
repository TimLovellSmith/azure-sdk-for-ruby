# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # The Virtual Network gateway contract. This is used to give the Virtual
    # Network gateway access to the VPN package.
    #
    class VnetGateway < ProxyOnlyResource

      include MsRestAzure

      # @return [String] The Virtual Network name.
      attr_accessor :vnet_name

      # @return [String] The URI where the VPN package can be downloaded.
      attr_accessor :vpn_package_uri


      #
      # Mapper for VnetGateway class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VnetGateway',
          type: {
            name: 'Composite',
            class_name: 'VnetGateway',
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
              kind: {
                required: false,
                serialized_name: 'kind',
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
              vnet_name: {
                required: false,
                serialized_name: 'properties.vnetName',
                type: {
                  name: 'String'
                }
              },
              vpn_package_uri: {
                required: false,
                serialized_name: 'properties.vpnPackageUri',
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
