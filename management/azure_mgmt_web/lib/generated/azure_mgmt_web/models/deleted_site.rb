# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # A deleted app.
    #
    class DeletedSite

      include MsRestAzure

      # @return [Integer] Numeric id for the deleted site
      attr_accessor :id

      # @return [String] Time in UTC when the app was deleted.
      attr_accessor :deleted_timestamp

      # @return [String] Subscription containing the deleted site
      attr_accessor :subscription

      # @return [String] ResourceGroup that contained the deleted site
      attr_accessor :resource_group

      # @return [String] Name of the deleted site
      attr_accessor :name


      #
      # Mapper for DeletedSite class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DeletedSite',
          type: {
            name: 'Composite',
            class_name: 'DeletedSite',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'Number'
                }
              },
              deleted_timestamp: {
                required: false,
                read_only: true,
                serialized_name: 'deletedTimestamp',
                type: {
                  name: 'String'
                }
              },
              subscription: {
                required: false,
                read_only: true,
                serialized_name: 'subscription',
                type: {
                  name: 'String'
                }
              },
              resource_group: {
                required: false,
                read_only: true,
                serialized_name: 'resourceGroup',
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
              }
            }
          }
        }
      end
    end
  end
end
