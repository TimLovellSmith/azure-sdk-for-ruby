# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup::Api_2016_12_01
  module Models
    #
    # KEK is encryption key for BEK.
    #
    class KEKDetails

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Key is KEK.
      attr_accessor :key_url

      # @return [String] Key Vault ID where this Key is stored.
      attr_accessor :key_vault_id

      # @return [String] KEK data.
      attr_accessor :key_backup_data


      #
      # Mapper for KEKDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'KEKDetails',
          type: {
            name: 'Composite',
            class_name: 'KEKDetails',
            model_properties: {
              key_url: {
                required: false,
                serialized_name: 'keyUrl',
                type: {
                  name: 'String'
                }
              },
              key_vault_id: {
                required: false,
                serialized_name: 'keyVaultId',
                type: {
                  name: 'String'
                }
              },
              key_backup_data: {
                required: false,
                serialized_name: 'keyBackupData',
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
