# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StreamAnalytics::Api_2016_03_01
  module Models
    #
    # Describes an Azure Data Lake Store output data source.
    #
    class AzureDataLakeStoreOutputDataSource < OutputDataSource

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @type = "Microsoft.DataLake/Accounts"
      end

      attr_accessor :type

      # @return [String] A refresh token that can be used to obtain a valid
      # access token that can then be used to authenticate with the data
      # source. A valid refresh token is currently only obtainable via the
      # Azure Portal. It is recommended to put a dummy string value here when
      # creating the data source and then going to the Azure Portal to
      # authenticate the data source which will update this property with a
      # valid refresh token. Required on PUT (CreateOrReplace) requests.
      attr_accessor :refresh_token

      # @return [String] The user principal name (UPN) of the user that was
      # used to obtain the refresh token. Use this property to help remember
      # which user was used to obtain the refresh token.
      attr_accessor :token_user_principal_name

      # @return [String] The user display name of the user that was used to
      # obtain the refresh token. Use this property to help remember which user
      # was used to obtain the refresh token.
      attr_accessor :token_user_display_name

      # @return [String] The name of the Azure Data Lake Store account.
      # Required on PUT (CreateOrReplace) requests.
      attr_accessor :account_name

      # @return [String] The tenant id of the user used to obtain the refresh
      # token. Required on PUT (CreateOrReplace) requests.
      attr_accessor :tenant_id

      # @return [String] The location of the file to which the output should be
      # written to. Required on PUT (CreateOrReplace) requests.
      attr_accessor :file_path_prefix

      # @return [String] The date format. Wherever {date} appears in
      # filePathPrefix, the value of this property is used as the date format
      # instead.
      attr_accessor :date_format

      # @return [String] The time format. Wherever {time} appears in
      # filePathPrefix, the value of this property is used as the time format
      # instead.
      attr_accessor :time_format


      #
      # Mapper for AzureDataLakeStoreOutputDataSource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Microsoft.DataLake/Accounts',
          type: {
            name: 'Composite',
            class_name: 'AzureDataLakeStoreOutputDataSource',
            model_properties: {
              type: {
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              refresh_token: {
                required: false,
                serialized_name: 'properties.refreshToken',
                type: {
                  name: 'String'
                }
              },
              token_user_principal_name: {
                required: false,
                serialized_name: 'properties.tokenUserPrincipalName',
                type: {
                  name: 'String'
                }
              },
              token_user_display_name: {
                required: false,
                serialized_name: 'properties.tokenUserDisplayName',
                type: {
                  name: 'String'
                }
              },
              account_name: {
                required: false,
                serialized_name: 'properties.accountName',
                type: {
                  name: 'String'
                }
              },
              tenant_id: {
                required: false,
                serialized_name: 'properties.tenantId',
                type: {
                  name: 'String'
                }
              },
              file_path_prefix: {
                required: false,
                serialized_name: 'properties.filePathPrefix',
                type: {
                  name: 'String'
                }
              },
              date_format: {
                required: false,
                serialized_name: 'properties.dateFormat',
                type: {
                  name: 'String'
                }
              },
              time_format: {
                required: false,
                serialized_name: 'properties.timeFormat',
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
