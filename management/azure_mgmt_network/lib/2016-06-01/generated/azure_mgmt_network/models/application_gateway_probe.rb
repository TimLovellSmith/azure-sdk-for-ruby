# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network::Api_2016_06_01
  module Models
    #
    # Probe of application gateway
    #
    class ApplicationGatewayProbe < MsRestAzure::SubResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [ApplicationGatewayProtocol] Protocol. Possible values include:
      # 'Http', 'Https'
      attr_accessor :protocol

      # @return [String] Host to send probe to
      attr_accessor :host

      # @return [String] Relative path of probe
      attr_accessor :path

      # @return [Integer] Probing interval in seconds
      attr_accessor :interval

      # @return [Integer] Probing timeout in seconds
      attr_accessor :timeout

      # @return [Integer] Probing unhealthy threshold
      attr_accessor :unhealthy_threshold

      # @return [String] Provisioning state of the backend http settings
      # resource Updating/Deleting/Failed
      attr_accessor :provisioning_state

      # @return [String] Name of the resource that is unique within a resource
      # group. This name can be used to access the resource
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated
      attr_accessor :etag


      #
      # Mapper for ApplicationGatewayProbe class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ApplicationGatewayProbe',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayProbe',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              protocol: {
                required: false,
                serialized_name: 'properties.protocol',
                type: {
                  name: 'String'
                }
              },
              host: {
                required: false,
                serialized_name: 'properties.host',
                type: {
                  name: 'String'
                }
              },
              path: {
                required: false,
                serialized_name: 'properties.path',
                type: {
                  name: 'String'
                }
              },
              interval: {
                required: false,
                serialized_name: 'properties.interval',
                type: {
                  name: 'Number'
                }
              },
              timeout: {
                required: false,
                serialized_name: 'properties.timeout',
                type: {
                  name: 'Number'
                }
              },
              unhealthy_threshold: {
                required: false,
                serialized_name: 'properties.unhealthyThreshold',
                type: {
                  name: 'Number'
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
