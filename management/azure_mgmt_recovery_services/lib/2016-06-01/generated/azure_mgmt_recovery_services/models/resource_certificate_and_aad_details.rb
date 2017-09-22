# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServices::Api_2016_06_01
  module Models
    #
    # Certificate details representing the Vault credentials for AAD.
    #
    class ResourceCertificateAndAadDetails < ResourceCertificateDetails

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @authType = "AzureActiveDirectory"
      end

      attr_accessor :authType

      # @return [String] AAD tenant authority.
      attr_accessor :aad_authority

      # @return [String] AAD tenant Id.
      attr_accessor :aad_tenant_id

      # @return [String] AAD service principal clientId.
      attr_accessor :service_principal_client_id

      # @return [String] AAD service principal ObjectId.
      attr_accessor :service_principal_object_id

      # @return [String] Azure Management Endpoint Audience.
      attr_accessor :azure_management_endpoint_audience


      #
      # Mapper for ResourceCertificateAndAadDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AzureActiveDirectory',
          type: {
            name: 'Composite',
            class_name: 'ResourceCertificateAndAadDetails',
            model_properties: {
              certificate: {
                required: false,
                serialized_name: 'certificate',
                type: {
                  name: 'ByteArray'
                }
              },
              friendly_name: {
                required: false,
                serialized_name: 'friendlyName',
                type: {
                  name: 'String'
                }
              },
              issuer: {
                required: false,
                serialized_name: 'issuer',
                type: {
                  name: 'String'
                }
              },
              resource_id: {
                required: false,
                serialized_name: 'resourceId',
                type: {
                  name: 'Number'
                }
              },
              subject: {
                required: false,
                serialized_name: 'subject',
                type: {
                  name: 'String'
                }
              },
              thumbprint: {
                required: false,
                serialized_name: 'thumbprint',
                type: {
                  name: 'String'
                }
              },
              valid_from: {
                required: false,
                serialized_name: 'validFrom',
                type: {
                  name: 'DateTime'
                }
              },
              valid_to: {
                required: false,
                serialized_name: 'validTo',
                type: {
                  name: 'DateTime'
                }
              },
              authType: {
                required: true,
                serialized_name: 'authType',
                type: {
                  name: 'String'
                }
              },
              aad_authority: {
                required: true,
                serialized_name: 'aadAuthority',
                type: {
                  name: 'String'
                }
              },
              aad_tenant_id: {
                required: true,
                serialized_name: 'aadTenantId',
                type: {
                  name: 'String'
                }
              },
              service_principal_client_id: {
                required: true,
                serialized_name: 'servicePrincipalClientId',
                type: {
                  name: 'String'
                }
              },
              service_principal_object_id: {
                required: true,
                serialized_name: 'servicePrincipalObjectId',
                type: {
                  name: 'String'
                }
              },
              azure_management_endpoint_audience: {
                required: true,
                serialized_name: 'azureManagementEndpointAudience',
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
