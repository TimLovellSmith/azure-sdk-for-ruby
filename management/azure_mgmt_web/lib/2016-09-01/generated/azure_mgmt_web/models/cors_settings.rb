# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web::Api_2016_09_01
  module Models
    #
    # Cross-Origin Resource Sharing (CORS) settings for the app.
    #
    class CorsSettings

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<String>] Gets or sets the list of origins that should be
      # allowed to make cross-origin
      # calls (for example: http://example.com:12345). Use "*" to allow all.
      attr_accessor :allowed_origins


      #
      # Mapper for CorsSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CorsSettings',
          type: {
            name: 'Composite',
            class_name: 'CorsSettings',
            model_properties: {
              allowed_origins: {
                required: false,
                serialized_name: 'allowedOrigins',
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
              }
            }
          }
        }
      end
    end
  end
end
