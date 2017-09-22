# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network::Api_2016_09_01
  module Models
    #
    # Pool of backend IP addresses.
    #
    class BackendAddressPool < MsRestAzure::SubResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<NetworkInterfaceIPConfiguration>] Gets collection of
      # references to IP addresses defined in network interfaces.
      attr_accessor :backend_ipconfigurations

      # @return [Array<SubResource>] Gets load balancing rules that use this
      # backend address pool.
      attr_accessor :load_balancing_rules

      # @return [SubResource] Gets outbound rules that use this backend address
      # pool.
      attr_accessor :outbound_nat_rule

      # @return [String] Get provisioning state of the public IP resource.
      # Possible values are: 'Updating', 'Deleting', and 'Failed'.
      attr_accessor :provisioning_state

      # @return [String] Gets name of the resource that is unique within a
      # resource group. This name can be used to access the resource.
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag


      #
      # Mapper for BackendAddressPool class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BackendAddressPool',
          type: {
            name: 'Composite',
            class_name: 'BackendAddressPool',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              backend_ipconfigurations: {
                required: false,
                read_only: true,
                serialized_name: 'properties.backendIPConfigurations',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'NetworkInterfaceIPConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'NetworkInterfaceIPConfiguration'
                      }
                  }
                }
              },
              load_balancing_rules: {
                required: false,
                read_only: true,
                serialized_name: 'properties.loadBalancingRules',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'SubResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SubResource'
                      }
                  }
                }
              },
              outbound_nat_rule: {
                required: false,
                read_only: true,
                serialized_name: 'properties.outboundNatRule',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              provisioning_state: {
                required: false,
                serialized_name: 'properties.provisioningState',
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
              },
              etag: {
                required: false,
                serialized_name: 'etag',
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
