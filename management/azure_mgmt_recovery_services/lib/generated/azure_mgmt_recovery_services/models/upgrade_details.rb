# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServices
  module Models
    #
    # Details for upgrading vault.
    #
    class UpgradeDetails

      include MsRestAzure

      # @return [String] ID of the vault upgrade operation.
      attr_accessor :operation_id

      # @return [DateTime] UTC time at which the upgrade operation has started.
      attr_accessor :start_time_utc

      # @return [DateTime] UTC time at which the upgrade operation status was
      # last updated.
      attr_accessor :last_updated_time_utc

      # @return [DateTime] UTC time at which the upgrade operation has ended.
      attr_accessor :end_time_utc

      # @return [VaultUpgradeState] Status of the vault upgrade operation.
      # Possible values include: 'Unknown', 'InProgress', 'Upgraded', 'Failed'
      attr_accessor :status

      # @return [String] Message to the user containing information about the
      # upgrade operation.
      attr_accessor :message

      # @return [TriggerType] The way the vault upgradation was triggered.
      # Possible values include: 'UserTriggered', 'ForcedUpgrade'
      attr_accessor :trigger_type

      # @return [String] Resource ID of the upgraded vault.
      attr_accessor :upgraded_resource_id

      # @return [String] Resource ID of the vault before the upgrade.
      attr_accessor :previous_resource_id


      #
      # Mapper for UpgradeDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'UpgradeDetails',
          type: {
            name: 'Composite',
            class_name: 'UpgradeDetails',
            model_properties: {
              operation_id: {
                required: false,
                read_only: true,
                serialized_name: 'operationId',
                type: {
                  name: 'String'
                }
              },
              start_time_utc: {
                required: false,
                read_only: true,
                serialized_name: 'startTimeUtc',
                type: {
                  name: 'DateTime'
                }
              },
              last_updated_time_utc: {
                required: false,
                read_only: true,
                serialized_name: 'lastUpdatedTimeUtc',
                type: {
                  name: 'DateTime'
                }
              },
              end_time_utc: {
                required: false,
                read_only: true,
                serialized_name: 'endTimeUtc',
                type: {
                  name: 'DateTime'
                }
              },
              status: {
                required: false,
                read_only: true,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              message: {
                required: false,
                read_only: true,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              trigger_type: {
                required: false,
                read_only: true,
                serialized_name: 'triggerType',
                type: {
                  name: 'String'
                }
              },
              upgraded_resource_id: {
                required: false,
                read_only: true,
                serialized_name: 'upgradedResourceId',
                type: {
                  name: 'String'
                }
              },
              previous_resource_id: {
                required: false,
                read_only: true,
                serialized_name: 'previousResourceId',
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
