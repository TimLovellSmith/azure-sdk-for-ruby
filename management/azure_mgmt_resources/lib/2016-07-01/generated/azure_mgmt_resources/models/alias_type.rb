# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Resources::Api_2016_07_01
  module Models
    #
    # The alias type.
    #
    class AliasType

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The alias name.
      attr_accessor :name

      # @return [Array<AliasPathType>] The paths for an alias.
      attr_accessor :paths


      #
      # Mapper for AliasType class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AliasType',
          type: {
            name: 'Composite',
            class_name: 'AliasType',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              paths: {
                required: false,
                serialized_name: 'paths',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'AliasPathTypeElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AliasPathType'
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
