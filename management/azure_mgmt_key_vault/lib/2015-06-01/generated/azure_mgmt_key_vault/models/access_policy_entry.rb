# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::KeyVault::Api_2015_06_01
  module Models
    #
    # An identity that have access to the key vault. All identities in the
    # array must use the same tenant ID as the key vault's tenant ID.
    #
    class AccessPolicyEntry

      include MsRestAzure

      include MsRest::JSONable
      # @return The Azure Active Directory tenant ID that should be used for
      # authenticating requests to the key vault.
      attr_accessor :tenant_id

      # @return [String] The object ID of a user, service principal or security
      # group in the Azure Active Directory tenant for the vault. The object ID
      # must be unique for the list of access policies.
      attr_accessor :object_id

      # @return  Application ID of the client making request on behalf of a
      # principal
      attr_accessor :application_id

      # @return [Permissions] Permissions the identity has for keys, secrets
      # and certificates.
      attr_accessor :permissions


      #
      # Mapper for AccessPolicyEntry class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AccessPolicyEntry',
          type: {
            name: 'Composite',
            class_name: 'AccessPolicyEntry',
            model_properties: {
              tenant_id: {
                required: true,
                serialized_name: 'tenantId',
                type: {
                  name: 'String'
                }
              },
              object_id: {
                required: true,
                serialized_name: 'objectId',
                type: {
                  name: 'String'
                }
              },
              application_id: {
                required: false,
                serialized_name: 'applicationId',
                type: {
                  name: 'String'
                }
              },
              permissions: {
                required: true,
                serialized_name: 'permissions',
                type: {
                  name: 'Composite',
                  class_name: 'Permissions'
                }
              }
            }
          }
        }
      end
    end
  end
end
