# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ApiManagement::Api_2017_07_14
  module Models
    #
    # Properties of the Service Fabric Type Backend.
    #
    class BackendServiceFabricClusterProperties

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The client certificate thumbprint for the management
      # endpoint.
      attr_accessor :client_certificatethumbprint

      # @return [Integer] Maximum number of retries while attempting resolve
      # the parition.
      attr_accessor :max_partition_resolution_retries

      # @return [Array<String>] The cluster management endpoint.
      attr_accessor :management_endpoints

      # @return [Array<String>] Thumbprints of certificates cluster management
      # service uses for tls communication
      attr_accessor :server_certificate_thumbprints

      # @return [Array<X509CertificateName>] Server X509 Certificate Names
      # Collection
      attr_accessor :server_x509names


      #
      # Mapper for BackendServiceFabricClusterProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BackendServiceFabricClusterProperties',
          type: {
            name: 'Composite',
            class_name: 'BackendServiceFabricClusterProperties',
            model_properties: {
              client_certificatethumbprint: {
                required: true,
                serialized_name: 'clientCertificatethumbprint',
                type: {
                  name: 'String'
                }
              },
              max_partition_resolution_retries: {
                required: false,
                serialized_name: 'maxPartitionResolutionRetries',
                type: {
                  name: 'Number'
                }
              },
              management_endpoints: {
                required: true,
                serialized_name: 'managementEndpoints',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              server_certificate_thumbprints: {
                required: false,
                serialized_name: 'serverCertificateThumbprints',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              server_x509names: {
                required: false,
                serialized_name: 'serverX509Names',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'X509CertificateNameElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'X509CertificateName'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
