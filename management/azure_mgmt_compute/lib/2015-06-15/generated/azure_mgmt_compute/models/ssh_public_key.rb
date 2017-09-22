# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute::Api_2015_06_15
  module Models
    #
    # Contains information about SSH certificate public key and the path on the
    # Linux VM where the public key is placed.
    #
    class SshPublicKey

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Specifies the full path on the created VM where SSH
      # public key is stored. If the file already exists, the specified key is
      # appended to the file.
      attr_accessor :path

      # @return [String] Certificate public key used to authenticate to the VM
      # through SSH. The certificate must be in Pem format with or without
      # headers.
      attr_accessor :key_data


      #
      # Mapper for SshPublicKey class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SshPublicKey',
          type: {
            name: 'Composite',
            class_name: 'SshPublicKey',
            model_properties: {
              path: {
                required: false,
                serialized_name: 'path',
                type: {
                  name: 'String'
                }
              },
              key_data: {
                required: false,
                serialized_name: 'keyData',
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
