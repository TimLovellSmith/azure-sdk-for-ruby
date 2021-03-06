# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::AnalysisServices
  module Models
    #
    # Detail of gateway errors.
    #
    class GatewayError

      include MsRestAzure

      # @return [String] Error code of list gateway.
      attr_accessor :code

      # @return [String] Error message of list gateway.
      attr_accessor :message


      #
      # Mapper for GatewayError class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'GatewayError',
          type: {
            name: 'Composite',
            class_name: 'GatewayError',
            model_properties: {
              code: {
                required: false,
                serialized_name: 'code',
                type: {
                  name: 'String'
                }
              },
              message: {
                required: false,
                serialized_name: 'message',
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
