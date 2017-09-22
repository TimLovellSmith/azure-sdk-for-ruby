# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MachineLearning::CommitmentPlans::Api_2016_05_01_preview
  module Models
    #
    # A page of commitment association resources.
    #
    class CommitmentAssociationListResult

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] A URI to retrieve the next page of results.
      attr_accessor :next_link

      # @return [Array<CommitmentAssociation>] The set of results for this
      # page.
      attr_accessor :value

      # return [Proc] with next page method call.
      attr_accessor :next_method

      #
      # Gets the rest of the items for the request, enabling auto-pagination.
      #
      # @return [Array<CommitmentAssociation>] operation results.
      #
      def get_all_items
        items = @value
        page = self
        while page.next_link != nil do
          page = page.get_next_page
          items.concat(page.value)
        end
        items
      end

      #
      # Gets the next page of results.
      #
      # @return [CommitmentAssociationListResult] with next page content.
      #
      def get_next_page
        response = @next_method.call(@next_link).value! unless @next_method.nil?
        unless response.nil?
          @next_link = response.body.next_link
          @value = response.body.value
          self
        end
      end

      #
      # Mapper for CommitmentAssociationListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CommitmentAssociationListResult',
          type: {
            name: 'Composite',
            class_name: 'CommitmentAssociationListResult',
            model_properties: {
              next_link: {
                required: false,
                serialized_name: 'nextLink',
                type: {
                  name: 'String'
                }
              },
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'CommitmentAssociationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'CommitmentAssociation'
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
