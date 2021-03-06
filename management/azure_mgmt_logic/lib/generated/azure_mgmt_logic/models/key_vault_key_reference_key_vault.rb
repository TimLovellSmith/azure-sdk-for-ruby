# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Logic
  module Models
    #
    # The key vault reference.
    #
    class KeyVaultKeyReferenceKeyVault

      include MsRestAzure

      # @return [String] The resource id.
      attr_accessor :id

      # @return [String] The resource name.
      attr_accessor :name

      # @return [String] The resource type.
      attr_accessor :type


      #
      # Mapper for KeyVaultKeyReferenceKeyVault class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'KeyVaultKeyReference_keyVault',
          type: {
            name: 'Composite',
            class_name: 'KeyVaultKeyReferenceKeyVault',
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
              }
            }
          }
        }
      end
    end
  end
end
