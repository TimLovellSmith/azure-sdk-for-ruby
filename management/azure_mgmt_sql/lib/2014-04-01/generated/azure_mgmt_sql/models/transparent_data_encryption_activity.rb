# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL::Api_2014_04_01
  module Models
    #
    # Represents a database transparent data encryption Scan.
    #
    class TransparentDataEncryptionActivity < ProxyResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Resource location.
      attr_accessor :location

      # @return [TransparentDataEncryptionActivityStatus] The status of the
      # database. Possible values include: 'Encrypting', 'Decrypting'
      attr_accessor :status

      # @return [Float] The percent complete of the transparent data encryption
      # scan for a database.
      attr_accessor :percent_complete


      #
      # Mapper for TransparentDataEncryptionActivity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'TransparentDataEncryptionActivity',
          type: {
            name: 'Composite',
            class_name: 'TransparentDataEncryptionActivity',
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
              status: {
                required: false,
                read_only: true,
                serialized_name: 'properties.status',
                type: {
                  name: 'String'
                }
              },
              percent_complete: {
                required: false,
                read_only: true,
                serialized_name: 'properties.percentComplete',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
