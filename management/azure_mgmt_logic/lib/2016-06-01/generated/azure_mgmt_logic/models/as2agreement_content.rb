# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Logic::Api_2016_06_01
  module Models
    #
    # The integration account AS2 agreement content.
    #
    class AS2AgreementContent

      include MsRestAzure

      include MsRest::JSONable
      # @return [AS2OneWayAgreement] The AS2 one-way receive agreement.
      attr_accessor :receive_agreement

      # @return [AS2OneWayAgreement] The AS2 one-way send agreement.
      attr_accessor :send_agreement


      #
      # Mapper for AS2AgreementContent class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AS2AgreementContent',
          type: {
            name: 'Composite',
            class_name: 'AS2AgreementContent',
            model_properties: {
              receive_agreement: {
                required: true,
                serialized_name: 'receiveAgreement',
                type: {
                  name: 'Composite',
                  class_name: 'AS2OneWayAgreement'
                }
              },
              send_agreement: {
                required: true,
                serialized_name: 'sendAgreement',
                type: {
                  name: 'Composite',
                  class_name: 'AS2OneWayAgreement'
                }
              }
            }
          }
        }
      end
    end
  end
end
