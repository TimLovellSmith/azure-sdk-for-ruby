# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::CustomerInsights::Api_2017_04_26
  module Models
    #
    # Input type for getting image upload url.
    #
    class GetImageUploadUrlInput

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Type of entity. Can be Profile or Interaction.
      attr_accessor :entity_type

      # @return [String] Name of the entity type.
      attr_accessor :entity_type_name

      # @return [String] Relative path of the image.
      attr_accessor :relative_path


      #
      # Mapper for GetImageUploadUrlInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'GetImageUploadUrlInput',
          type: {
            name: 'Composite',
            class_name: 'GetImageUploadUrlInput',
            model_properties: {
              entity_type: {
                required: false,
                serialized_name: 'entityType',
                type: {
                  name: 'String'
                }
              },
              entity_type_name: {
                required: false,
                serialized_name: 'entityTypeName',
                type: {
                  name: 'String'
                }
              },
              relative_path: {
                required: false,
                serialized_name: 'relativePath',
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
