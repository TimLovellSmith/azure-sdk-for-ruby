# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ContainerRegistry
  module Models
    #
    # The parameters for updating a container registry.
    #
    class RegistryUpdateParameters

      include MsRestAzure

      # @return [Hash{String => String}] The tags for the container registry.
      attr_accessor :tags

      # @return [Sku] The SKU of the container registry.
      attr_accessor :sku

      # @return [Boolean] The value that indicates whether the admin user is
      # enabled.
      attr_accessor :admin_user_enabled

      # @return [StorageAccountProperties] The parameters of a storage account
      # for the container registry. Only applicable to Classic SKU. If
      # specified, the storage account must be in the same physical location as
      # the container registry.
      attr_accessor :storage_account


      #
      # Mapper for RegistryUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RegistryUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'RegistryUpdateParameters',
            model_properties: {
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
              sku: {
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              admin_user_enabled: {
                required: false,
                serialized_name: 'properties.adminUserEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              storage_account: {
                required: false,
                serialized_name: 'properties.storageAccount',
                type: {
                  name: 'Composite',
                  class_name: 'StorageAccountProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
