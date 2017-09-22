# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Locks::Api_2016_09_01
  module Models
    #
    # The lock information.
    #
    class ManagementLockObject

      include MsRestAzure

      include MsRest::JSONable
      # @return [LockLevel] The level of the lock. Possible values are:
      # NotSpecified, CanNotDelete, ReadOnly. CanNotDelete means authorized
      # users are able to read and modify the resources, but not delete.
      # ReadOnly means authorized users can only read from a resource, but they
      # can't modify or delete it. Possible values include: 'NotSpecified',
      # 'CanNotDelete', 'ReadOnly'
      attr_accessor :level

      # @return [String] Notes about the lock. Maximum of 512 characters.
      attr_accessor :notes

      # @return [Array<ManagementLockOwner>] The owners of the lock.
      attr_accessor :owners

      # @return [String] The resource ID of the lock.
      attr_accessor :id

      # @return [String] The resource type of the lock -
      # Microsoft.Authorization/locks.
      attr_accessor :type

      # @return [String] The name of the lock.
      attr_accessor :name


      #
      # Mapper for ManagementLockObject class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ManagementLockObject',
          type: {
            name: 'Composite',
            class_name: 'ManagementLockObject',
            model_properties: {
              level: {
                required: true,
                serialized_name: 'properties.level',
                type: {
                  name: 'String'
                }
              },
              notes: {
                required: false,
                serialized_name: 'properties.notes',
                type: {
                  name: 'String'
                }
              },
              owners: {
                required: false,
                serialized_name: 'properties.owners',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ManagementLockOwnerElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ManagementLockOwner'
                      }
                  }
                }
              },
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
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
              name: {
                required: false,
                serialized_name: 'name',
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
