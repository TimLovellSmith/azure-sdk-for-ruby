# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Description of a backup which will be performed.
    #
    class BackupRequest < MsRestAzure::Resource

      include MsRestAzure

      # @return [String] Name of the backup.
      attr_accessor :backup_request_name

      # @return [Boolean] True if the backup schedule is enabled (must be
      # included in that case), false if the backup schedule should be
      # disabled.
      attr_accessor :enabled

      # @return [String] SAS URL to the container.
      attr_accessor :storage_account_url

      # @return [BackupSchedule] Schedule for the backup if it is executed
      # periodically.
      attr_accessor :backup_schedule

      # @return [Array<DatabaseBackupSetting>] Databases included in the
      # backup.
      attr_accessor :databases

      # @return [BackupRestoreOperationType] Type of the backup. Possible
      # values include: 'Default', 'Clone', 'Relocation'
      attr_accessor :backup_request_type


      #
      # Mapper for BackupRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BackupRequest',
          type: {
            name: 'Composite',
            class_name: 'BackupRequest',
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
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              kind: {
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
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
              backup_request_name: {
                required: false,
                serialized_name: 'properties.name',
                type: {
                  name: 'String'
                }
              },
              enabled: {
                required: false,
                serialized_name: 'properties.enabled',
                type: {
                  name: 'Boolean'
                }
              },
              storage_account_url: {
                required: false,
                serialized_name: 'properties.storageAccountUrl',
                type: {
                  name: 'String'
                }
              },
              backup_schedule: {
                required: false,
                serialized_name: 'properties.backupSchedule',
                type: {
                  name: 'Composite',
                  class_name: 'BackupSchedule'
                }
              },
              databases: {
                required: false,
                serialized_name: 'properties.databases',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'DatabaseBackupSettingElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DatabaseBackupSetting'
                      }
                  }
                }
              },
              backup_request_type: {
                required: false,
                serialized_name: 'properties.type',
                type: {
                  name: 'Enum',
                  module: 'BackupRestoreOperationType'
                }
              }
            }
          }
        }
      end
    end
  end
end
