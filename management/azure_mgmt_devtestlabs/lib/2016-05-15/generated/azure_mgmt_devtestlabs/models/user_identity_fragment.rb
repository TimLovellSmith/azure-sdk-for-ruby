# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs::Api_2016_05_15
  module Models
    #
    # Identity attributes of a lab user.
    #
    class UserIdentityFragment

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Set to the principal name / UPN of the client JWT
      # making the request.
      attr_accessor :principal_name

      # @return [String] Set to the principal Id of the client JWT making the
      # request. Service principal will not have the principal Id.
      attr_accessor :principal_id

      # @return [String] Set to the tenant ID of the client JWT making the
      # request.
      attr_accessor :tenant_id

      # @return [String] Set to the object Id of the client JWT making the
      # request. Not all users have object Id. For CSP (reseller) scenarios for
      # example, object Id is not available.
      attr_accessor :object_id

      # @return [String] Set to the app Id of the client JWT making the
      # request.
      attr_accessor :app_id


      #
      # Mapper for UserIdentityFragment class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'UserIdentityFragment',
          type: {
            name: 'Composite',
            class_name: 'UserIdentityFragment',
            model_properties: {
              principal_name: {
                required: false,
                serialized_name: 'principalName',
                type: {
                  name: 'String'
                }
              },
              principal_id: {
                required: false,
                serialized_name: 'principalId',
                type: {
                  name: 'String'
                }
              },
              tenant_id: {
                required: false,
                serialized_name: 'tenantId',
                type: {
                  name: 'String'
                }
              },
              object_id: {
                required: false,
                serialized_name: 'objectId',
                type: {
                  name: 'String'
                }
              },
              app_id: {
                required: false,
                serialized_name: 'appId',
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
