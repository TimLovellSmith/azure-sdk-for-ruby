# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MobileEngagement::Api_2014_12_01
  module Models
    #
    # Model object.
    #
    #
    class CampaignTestNewParameters < CampaignTestSavedParameters

      include MsRestAzure

      include MsRest::JSONable
      # @return [Campaign]
      attr_accessor :data


      #
      # Mapper for CampaignTestNewParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CampaignTestNewParameters',
          type: {
            name: 'Composite',
            class_name: 'CampaignTestNewParameters',
            model_properties: {
              device_id: {
                required: true,
                serialized_name: 'deviceId',
                type: {
                  name: 'String'
                }
              },
              lang: {
                required: false,
                serialized_name: 'lang',
                type: {
                  name: 'String'
                }
              },
              data: {
                required: true,
                serialized_name: 'data',
                type: {
                  name: 'Composite',
                  class_name: 'Campaign'
                }
              }
            }
          }
        }
      end
    end
  end
end
