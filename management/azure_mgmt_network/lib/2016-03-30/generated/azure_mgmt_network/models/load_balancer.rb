# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network::Api_2016_03_30
  module Models
    #
    # LoadBalancer resource
    #
    class LoadBalancer < MsRestAzure::Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<FrontendIPConfiguration>] Gets or sets frontend IP
      # addresses of the load balancer
      attr_accessor :frontend_ipconfigurations

      # @return [Array<BackendAddressPool>] Gets or sets Pools of backend IP
      # addresseses
      attr_accessor :backend_address_pools

      # @return [Array<LoadBalancingRule>] Gets or sets loadbalancing rules
      attr_accessor :load_balancing_rules

      # @return [Array<Probe>] Gets or sets list of Load balancer probes
      attr_accessor :probes

      # @return [Array<InboundNatRule>] Gets or sets list of inbound rules
      attr_accessor :inbound_nat_rules

      # @return [Array<InboundNatPool>] Gets or sets inbound NAT pools
      attr_accessor :inbound_nat_pools

      # @return [Array<OutboundNatRule>] Gets or sets outbound NAT rules
      attr_accessor :outbound_nat_rules

      # @return [String] Gets or sets resource guid property of the Load
      # balancer resource
      attr_accessor :resource_guid

      # @return [String] Gets or sets Provisioning state of the PublicIP
      # resource Updating/Deleting/Failed
      attr_accessor :provisioning_state

      # @return [String] Gets a unique read-only string that changes whenever
      # the resource is updated
      attr_accessor :etag


      #
      # Mapper for LoadBalancer class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'LoadBalancer',
          type: {
            name: 'Composite',
            class_name: 'LoadBalancer',
            model_properties: {
              id: {
                required: false,
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
              location: {
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              frontend_ipconfigurations: {
                required: false,
                serialized_name: 'properties.frontendIPConfigurations',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'FrontendIPConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'FrontendIPConfiguration'
                      }
                  }
                }
              },
              backend_address_pools: {
                required: false,
                serialized_name: 'properties.backendAddressPools',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'BackendAddressPoolElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'BackendAddressPool'
                      }
                  }
                }
              },
              load_balancing_rules: {
                required: false,
                serialized_name: 'properties.loadBalancingRules',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'LoadBalancingRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'LoadBalancingRule'
                      }
                  }
                }
              },
              probes: {
                required: false,
                serialized_name: 'properties.probes',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ProbeElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Probe'
                      }
                  }
                }
              },
              inbound_nat_rules: {
                required: false,
                serialized_name: 'properties.inboundNatRules',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'InboundNatRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'InboundNatRule'
                      }
                  }
                }
              },
              inbound_nat_pools: {
                required: false,
                serialized_name: 'properties.inboundNatPools',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'InboundNatPoolElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'InboundNatPool'
                      }
                  }
                }
              },
              outbound_nat_rules: {
                required: false,
                serialized_name: 'properties.outboundNatRules',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'OutboundNatRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'OutboundNatRule'
                      }
                  }
                }
              },
              resource_guid: {
                required: false,
                serialized_name: 'properties.resourceGuid',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                required: false,
                serialized_name: 'properties.provisioningState',
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
