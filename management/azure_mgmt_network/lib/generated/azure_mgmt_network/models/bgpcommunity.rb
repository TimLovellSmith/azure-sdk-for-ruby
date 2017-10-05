# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  module Models
    #
    # Contains bgp community information offered in Service Community
    # resources.
    #
    class BGPCommunity

      include MsRestAzure

      # @return [String] The region which the service support. e.g. For O365,
      # region is Global.
      attr_accessor :service_supported_region

      # @return [String] The name of the bgp community. e.g. Skype.
      attr_accessor :community_name

      # @return [String] The value of the bgp community. For more information:
      # https://docs.microsoft.com/en-us/azure/expressroute/expressroute-routing.
      attr_accessor :community_value

      # @return [Array<String>] The prefixes that the bgp community contains.
      attr_accessor :community_prefixes

      # @return [Boolean] Customer is authorized to use bgp community or not.
      attr_accessor :is_authorized_to_use

      # @return [String] The service group of the bgp community contains.
      attr_accessor :service_group


      #
      # Mapper for BGPCommunity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BGPCommunity',
          type: {
            name: 'Composite',
            class_name: 'BGPCommunity',
            model_properties: {
              service_supported_region: {
                required: false,
                serialized_name: 'serviceSupportedRegion',
                type: {
                  name: 'String'
                }
              },
              community_name: {
                required: false,
                serialized_name: 'communityName',
                type: {
                  name: 'String'
                }
              },
              community_value: {
                required: false,
                serialized_name: 'communityValue',
                type: {
                  name: 'String'
                }
              },
              community_prefixes: {
                required: false,
                serialized_name: 'communityPrefixes',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              is_authorized_to_use: {
                required: false,
                serialized_name: 'isAuthorizedToUse',
                type: {
                  name: 'Boolean'
                }
              },
              service_group: {
                required: false,
                serialized_name: 'serviceGroup',
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