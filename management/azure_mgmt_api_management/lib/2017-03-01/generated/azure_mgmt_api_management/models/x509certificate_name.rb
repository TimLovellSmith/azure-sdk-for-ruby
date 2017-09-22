# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ApiManagement::Api_2017_07_14
  module Models
    #
    # Properties of server X509Names.
    #
    class X509CertificateName

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Common Name of the Certificate.
      attr_accessor :name

      # @return [String] Thumbprint for the Issuer of the Certificate.
      attr_accessor :issuer_certificate_thumbprint


      #
      # Mapper for X509CertificateName class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'X509CertificateName',
          type: {
            name: 'Composite',
            class_name: 'X509CertificateName',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              issuer_certificate_thumbprint: {
                required: false,
                serialized_name: 'issuerCertificateThumbprint',
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
