# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StorSimple8000Series::Api_2017_06_01
  module Models
    #
    # The StorSimple device.
    #
    class Device < BaseModel

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The friendly name of the device.
      attr_accessor :friendly_name

      # @return [DateTime] The UTC time at which the device was activated
      attr_accessor :activation_time

      # @return [String] The language culture setting on the device. For eg:
      # "en-US"
      attr_accessor :culture

      # @return [String] The device description.
      attr_accessor :device_description

      # @return [String] The version number of the software running on the
      # device.
      attr_accessor :device_software_version

      # @return [String] The friendly name of the software running on the
      # device.
      attr_accessor :friendly_software_name

      # @return [DeviceConfigurationStatus] The current configuration status of
      # the device. Possible values include: 'Complete', 'Pending'
      attr_accessor :device_configuration_status

      # @return [String] The target IQN.
      attr_accessor :target_iqn

      # @return [String] The device model.
      attr_accessor :model_description

      # @return [DeviceStatus] The current status of the device. Possible
      # values include: 'Unknown', 'Online', 'Offline', 'Deactivated',
      # 'RequiresAttention', 'MaintenanceMode', 'Creating', 'Provisioning',
      # 'Deactivating', 'Deleted', 'ReadyToSetup'
      attr_accessor :status

      # @return [String] The serial number.
      attr_accessor :serial_number

      # @return [DeviceType] The type of the device. Possible values include:
      # 'Invalid', 'Series8000VirtualAppliance', 'Series8000PhysicalAppliance'
      attr_accessor :device_type

      # @return [ControllerId] The identifier of the active controller of the
      # device. Possible values include: 'Unknown', 'None', 'Controller0',
      # 'Controller1'
      attr_accessor :active_controller

      # @return [String] The device friendly software version.
      attr_accessor :friendly_software_version

      # @return [Integer] The storage in bytes that is available locally on the
      # device.
      attr_accessor :available_local_storage_in_bytes

      # @return [Integer] The storage in bytes that is available on the device
      # for tiered volumes.
      attr_accessor :available_tiered_storage_in_bytes

      # @return [Integer] The storage in bytes that has been provisioned on the
      # device for tiered volumes.
      attr_accessor :provisioned_tiered_storage_in_bytes

      # @return [Integer] The storage in bytes used for locally pinned volumes
      # on the device (including additional local reservation).
      attr_accessor :provisioned_local_storage_in_bytes

      # @return [Integer] Total capacity in bytes of tiered and locally pinned
      # volumes on the device
      attr_accessor :provisioned_volume_size_in_bytes

      # @return [Integer] The storage in bytes that is currently being used on
      # the device, including both local and cloud.
      attr_accessor :using_storage_in_bytes

      # @return [Integer] The total tiered storage available on the device in
      # bytes.
      attr_accessor :total_tiered_storage_in_bytes

      # @return [Integer] The device agent group version.
      attr_accessor :agent_group_version

      # @return [Integer] The number of network interface cards
      attr_accessor :network_interface_card_count

      # @return [String] The location of the virtual appliance.
      attr_accessor :device_location

      # @return [VirtualMachineApiType] The virtual machine API type. Possible
      # values include: 'Classic', 'Arm'
      attr_accessor :virtual_machine_api_type

      # @return [DeviceDetails] The additional device details regarding the end
      # point count and volume container count.
      attr_accessor :details

      # @return [DeviceRolloverDetails] The additional device details for the
      # service data encryption key rollover.
      attr_accessor :rollover_details


      #
      # Mapper for Device class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Device',
          type: {
            name: 'Composite',
            class_name: 'Device',
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
              kind: {
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'Enum',
                  module: 'Kind'
                }
              },
              friendly_name: {
                required: true,
                serialized_name: 'properties.friendlyName',
                type: {
                  name: 'String'
                }
              },
              activation_time: {
                required: true,
                serialized_name: 'properties.activationTime',
                type: {
                  name: 'DateTime'
                }
              },
              culture: {
                required: true,
                serialized_name: 'properties.culture',
                type: {
                  name: 'String'
                }
              },
              device_description: {
                required: true,
                serialized_name: 'properties.deviceDescription',
                type: {
                  name: 'String'
                }
              },
              device_software_version: {
                required: true,
                serialized_name: 'properties.deviceSoftwareVersion',
                type: {
                  name: 'String'
                }
              },
              friendly_software_name: {
                required: false,
                serialized_name: 'properties.friendlySoftwareName',
                type: {
                  name: 'String'
                }
              },
              device_configuration_status: {
                required: true,
                serialized_name: 'properties.deviceConfigurationStatus',
                type: {
                  name: 'Enum',
                  module: 'DeviceConfigurationStatus'
                }
              },
              target_iqn: {
                required: true,
                serialized_name: 'properties.targetIqn',
                type: {
                  name: 'String'
                }
              },
              model_description: {
                required: true,
                serialized_name: 'properties.modelDescription',
                type: {
                  name: 'String'
                }
              },
              status: {
                required: true,
                serialized_name: 'properties.status',
                type: {
                  name: 'Enum',
                  module: 'DeviceStatus'
                }
              },
              serial_number: {
                required: true,
                serialized_name: 'properties.serialNumber',
                type: {
                  name: 'String'
                }
              },
              device_type: {
                required: true,
                serialized_name: 'properties.deviceType',
                type: {
                  name: 'Enum',
                  module: 'DeviceType'
                }
              },
              active_controller: {
                required: true,
                serialized_name: 'properties.activeController',
                type: {
                  name: 'Enum',
                  module: 'ControllerId'
                }
              },
              friendly_software_version: {
                required: true,
                serialized_name: 'properties.friendlySoftwareVersion',
                type: {
                  name: 'String'
                }
              },
              available_local_storage_in_bytes: {
                required: false,
                serialized_name: 'properties.availableLocalStorageInBytes',
                type: {
                  name: 'Number'
                }
              },
              available_tiered_storage_in_bytes: {
                required: false,
                serialized_name: 'properties.availableTieredStorageInBytes',
                type: {
                  name: 'Number'
                }
              },
              provisioned_tiered_storage_in_bytes: {
                required: false,
                serialized_name: 'properties.provisionedTieredStorageInBytes',
                type: {
                  name: 'Number'
                }
              },
              provisioned_local_storage_in_bytes: {
                required: false,
                serialized_name: 'properties.provisionedLocalStorageInBytes',
                type: {
                  name: 'Number'
                }
              },
              provisioned_volume_size_in_bytes: {
                required: false,
                serialized_name: 'properties.provisionedVolumeSizeInBytes',
                type: {
                  name: 'Number'
                }
              },
              using_storage_in_bytes: {
                required: false,
                serialized_name: 'properties.usingStorageInBytes',
                type: {
                  name: 'Number'
                }
              },
              total_tiered_storage_in_bytes: {
                required: false,
                serialized_name: 'properties.totalTieredStorageInBytes',
                type: {
                  name: 'Number'
                }
              },
              agent_group_version: {
                required: false,
                serialized_name: 'properties.agentGroupVersion',
                type: {
                  name: 'Number'
                }
              },
              network_interface_card_count: {
                required: false,
                serialized_name: 'properties.networkInterfaceCardCount',
                type: {
                  name: 'Number'
                }
              },
              device_location: {
                required: false,
                serialized_name: 'properties.deviceLocation',
                type: {
                  name: 'String'
                }
              },
              virtual_machine_api_type: {
                required: false,
                read_only: true,
                serialized_name: 'properties.virtualMachineApiType',
                type: {
                  name: 'Enum',
                  module: 'VirtualMachineApiType'
                }
              },
              details: {
                required: false,
                serialized_name: 'properties.details',
                type: {
                  name: 'Composite',
                  class_name: 'DeviceDetails'
                }
              },
              rollover_details: {
                required: false,
                serialized_name: 'properties.rolloverDetails',
                type: {
                  name: 'Composite',
                  class_name: 'DeviceRolloverDetails'
                }
              }
            }
          }
        }
      end
    end
  end
end
