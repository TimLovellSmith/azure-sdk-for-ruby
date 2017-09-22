# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL::Api_2014_04_01
  module Models
    #
    # A backup long term retention vault
    #
    class BackupLongTermRetentionVault < ProxyResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The geo-location where the resource lives
      attr_accessor :location

      # @return [String] The azure recovery services vault resource id
      attr_accessor :recovery_services_vault_resource_id


      #
      # Mapper for BackupLongTermRetentionVault class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BackupLongTermRetentionVault',
          type: {
            name: 'Composite',
            class_name: 'BackupLongTermRetentionVault',
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
                read_only: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              recovery_services_vault_resource_id: {
                required: true,
                serialized_name: 'properties.recoveryServicesVaultResourceId',
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
