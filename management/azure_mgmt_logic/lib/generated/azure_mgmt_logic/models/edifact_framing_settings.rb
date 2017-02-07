# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Logic
  module Models
    #
    # Model object.
    #
    #
    class EdifactFramingSettings

      include MsRestAzure

      # @return [String] The service code list directory version.
      attr_accessor :service_code_list_directory_version

      # @return [String] The character encoding.
      attr_accessor :character_encoding

      # @return [Integer] The protocol version.
      attr_accessor :protocol_version

      # @return [Integer] The data element separator.
      attr_accessor :data_element_separator

      # @return [Integer] The component separator.
      attr_accessor :component_separator

      # @return [Integer] The segment terminator.
      attr_accessor :segment_terminator

      # @return [Integer] The release indicator.
      attr_accessor :release_indicator

      # @return [Integer] The repetition separator.
      attr_accessor :repetition_separator

      # @return [EdifactCharacterSet] The EDIFACT frame setting characterSet.
      # Possible values include: 'NotSpecified', 'UNOB', 'UNOA', 'UNOC',
      # 'UNOD', 'UNOE', 'UNOF', 'UNOG', 'UNOH', 'UNOI', 'UNOJ', 'UNOK', 'UNOX',
      # 'UNOY', 'KECA'
      attr_accessor :character_set

      # @return [EdifactDecimalIndicator] The EDIFACT frame setting decimal
      # indicator. Possible values include: 'NotSpecified', 'Comma', 'Decimal'
      attr_accessor :decimal_point_indicator

      # @return [SegmentTerminatorSuffix] The EDIFACT frame setting segment
      # terminator suffix. Possible values include: 'NotSpecified', 'None',
      # 'CR', 'LF', 'CRLF'
      attr_accessor :segment_terminator_suffix


      #
      # Mapper for EdifactFramingSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EdifactFramingSettings',
          type: {
            name: 'Composite',
            class_name: 'EdifactFramingSettings',
            model_properties: {
              service_code_list_directory_version: {
                required: false,
                serialized_name: 'serviceCodeListDirectoryVersion',
                type: {
                  name: 'String'
                }
              },
              character_encoding: {
                required: false,
                serialized_name: 'characterEncoding',
                type: {
                  name: 'String'
                }
              },
              protocol_version: {
                required: false,
                serialized_name: 'protocolVersion',
                type: {
                  name: 'Number'
                }
              },
              data_element_separator: {
                required: false,
                serialized_name: 'dataElementSeparator',
                type: {
                  name: 'Number'
                }
              },
              component_separator: {
                required: false,
                serialized_name: 'componentSeparator',
                type: {
                  name: 'Number'
                }
              },
              segment_terminator: {
                required: false,
                serialized_name: 'segmentTerminator',
                type: {
                  name: 'Number'
                }
              },
              release_indicator: {
                required: false,
                serialized_name: 'releaseIndicator',
                type: {
                  name: 'Number'
                }
              },
              repetition_separator: {
                required: false,
                serialized_name: 'repetitionSeparator',
                type: {
                  name: 'Number'
                }
              },
              character_set: {
                required: false,
                serialized_name: 'characterSet',
                type: {
                  name: 'Enum',
                  module: 'EdifactCharacterSet'
                }
              },
              decimal_point_indicator: {
                required: false,
                serialized_name: 'decimalPointIndicator',
                type: {
                  name: 'Enum',
                  module: 'EdifactDecimalIndicator'
                }
              },
              segment_terminator_suffix: {
                required: false,
                serialized_name: 'segmentTerminatorSuffix',
                type: {
                  name: 'Enum',
                  module: 'SegmentTerminatorSuffix'
                }
              }
            }
          }
        }
      end
    end
  end
end
