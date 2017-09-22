# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::CustomerInsights::Api_2017_04_26
  module Models
    #
    # The response of suggest relationship links operation.
    #
    class SuggestRelationshipLinksResponse

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The interaction name.
      attr_accessor :interaction_name

      # @return [Array<RelationshipsLookup>] Suggested relationships for the
      # type.
      attr_accessor :suggested_relationships


      #
      # Mapper for SuggestRelationshipLinksResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SuggestRelationshipLinksResponse',
          type: {
            name: 'Composite',
            class_name: 'SuggestRelationshipLinksResponse',
            model_properties: {
              interaction_name: {
                required: false,
                read_only: true,
                serialized_name: 'interactionName',
                type: {
                  name: 'String'
                }
              },
              suggested_relationships: {
                required: false,
                read_only: true,
                serialized_name: 'suggestedRelationships',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'RelationshipsLookupElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RelationshipsLookup'
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
