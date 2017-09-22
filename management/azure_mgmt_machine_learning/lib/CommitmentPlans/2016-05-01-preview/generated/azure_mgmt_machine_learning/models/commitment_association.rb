# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MachineLearning::CommitmentPlans::Api_2016_05_01_preview
  module Models
    #
    # Represents the association between a commitment plan and some other
    # resource, such as a Machine Learning web service.
    #
    class CommitmentAssociation < MsRestAzure::Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] An entity tag used to enforce optimistic concurrency.
      attr_accessor :etag

      # @return [CommitmentAssociationProperties] The properties of the
      # commitment association resource.
      attr_accessor :properties


      #
      # Mapper for CommitmentAssociation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CommitmentAssociation',
          type: {
            name: 'Composite',
            class_name: 'CommitmentAssociation',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              etag: {
                required: false,
                serialized_name: 'etag',
                type: {
                  name: 'String'
                }
              },
              properties: {
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'CommitmentAssociationProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
