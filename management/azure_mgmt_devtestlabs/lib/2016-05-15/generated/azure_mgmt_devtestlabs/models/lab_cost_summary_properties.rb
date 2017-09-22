# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs::Api_2016_05_15
  module Models
    #
    # The properties of the cost summary.
    #
    class LabCostSummaryProperties

      include MsRestAzure

      include MsRest::JSONable
      # @return [Float] The cost component of the cost item.
      attr_accessor :estimated_lab_cost


      #
      # Mapper for LabCostSummaryProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'LabCostSummaryProperties',
          type: {
            name: 'Composite',
            class_name: 'LabCostSummaryProperties',
            model_properties: {
              estimated_lab_cost: {
                required: false,
                serialized_name: 'estimatedLabCost',
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
