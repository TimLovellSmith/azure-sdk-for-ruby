# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Logic::Api_2016_06_01
  module Models
    #
    # The X12 delimiter override settings.
    #
    class X12DelimiterOverrides

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The protocol version.
      attr_accessor :protocol_version

      # @return [String] The message id.
      attr_accessor :message_id

      # @return [Integer] The data element separator.
      attr_accessor :data_element_separator

      # @return [Integer] The component separator.
      attr_accessor :component_separator

      # @return [Integer] The segment terminator.
      attr_accessor :segment_terminator

      # @return [SegmentTerminatorSuffix] The segment terminator suffix.
      # Possible values include: 'NotSpecified', 'None', 'CR', 'LF', 'CRLF'
      attr_accessor :segment_terminator_suffix

      # @return [Integer] The replacement character.
      attr_accessor :replace_character

      # @return [Boolean] The value indicating whether to replace separators in
      # payload.
      attr_accessor :replace_separators_in_payload

      # @return [String] The target namespace on which this delimiter settings
      # has to be applied.
      attr_accessor :target_namespace


      #
      # Mapper for X12DelimiterOverrides class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'X12DelimiterOverrides',
          type: {
            name: 'Composite',
            class_name: 'X12DelimiterOverrides',
            model_properties: {
              protocol_version: {
                required: false,
                serialized_name: 'protocolVersion',
                type: {
                  name: 'String'
                }
              },
              message_id: {
                required: false,
                serialized_name: 'messageId',
                type: {
                  name: 'String'
                }
              },
              data_element_separator: {
                required: true,
                serialized_name: 'dataElementSeparator',
                type: {
                  name: 'Number'
                }
              },
              component_separator: {
                required: true,
                serialized_name: 'componentSeparator',
                type: {
                  name: 'Number'
                }
              },
              segment_terminator: {
                required: true,
                serialized_name: 'segmentTerminator',
                type: {
                  name: 'Number'
                }
              },
              segment_terminator_suffix: {
                required: true,
                serialized_name: 'segmentTerminatorSuffix',
                type: {
                  name: 'Enum',
                  module: 'SegmentTerminatorSuffix'
                }
              },
              replace_character: {
                required: true,
                serialized_name: 'replaceCharacter',
                type: {
                  name: 'Number'
                }
              },
              replace_separators_in_payload: {
                required: true,
                serialized_name: 'replaceSeparatorsInPayload',
                type: {
                  name: 'Boolean'
                }
              },
              target_namespace: {
                required: false,
                serialized_name: 'targetNamespace',
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
