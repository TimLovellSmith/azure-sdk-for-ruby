# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Search::Api_2015_08_19
  #
  # Client that can be used to manage Azure Search services and API keys.
  #
  class QueryKeys
    include MsRestAzure

    #
    # Creates and initializes a new instance of the QueryKeys class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [SearchManagementClient] reference to the SearchManagementClient
    attr_reader :client

    #
    # Generates a new query key for the specified Search service. You can create up
    # to 50 query keys per service.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # current subscription. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param search_service_name [String] The name of the Azure Search service
    # associated with the specified resource group.
    # @param name [String] The name of the new query API key.
    # @param search_management_request_options [SearchManagementRequestOptions]
    # Additional parameters for the operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [QueryKey] operation results.
    #
    def create(resource_group_name, search_service_name, name, search_management_request_options = nil, custom_headers = nil)
      response = create_async(resource_group_name, search_service_name, name, search_management_request_options, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Generates a new query key for the specified Search service. You can create up
    # to 50 query keys per service.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # current subscription. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param search_service_name [String] The name of the Azure Search service
    # associated with the specified resource group.
    # @param name [String] The name of the new query API key.
    # @param search_management_request_options [SearchManagementRequestOptions]
    # Additional parameters for the operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_with_http_info(resource_group_name, search_service_name, name, search_management_request_options = nil, custom_headers = nil)
      create_async(resource_group_name, search_service_name, name, search_management_request_options, custom_headers).value!
    end

    #
    # Generates a new query key for the specified Search service. You can create up
    # to 50 query keys per service.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # current subscription. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param search_service_name [String] The name of the Azure Search service
    # associated with the specified resource group.
    # @param name [String] The name of the new query API key.
    # @param search_management_request_options [SearchManagementRequestOptions]
    # Additional parameters for the operation
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_async(resource_group_name, search_service_name, name, search_management_request_options = nil, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'search_service_name is nil' if search_service_name.nil?
      fail ArgumentError, 'name is nil' if name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?

      client_request_id = nil
      unless search_management_request_options.nil?
        client_request_id = search_management_request_options.clientRequestId
      end

      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      request_headers['x-ms-client-request-id'] = client_request_id.to_s unless client_request_id.to_s.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Search/searchServices/{searchServiceName}/createQueryKey/{name}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'searchServiceName' => search_service_name,'name' => name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::Search::Api_2015_08_19::Models::QueryKey.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Returns the list of query API keys for the given Azure Search service.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # current subscription. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param search_service_name [String] The name of the Azure Search service
    # associated with the specified resource group.
    # @param search_management_request_options [SearchManagementRequestOptions]
    # Additional parameters for the operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ListQueryKeysResult] operation results.
    #
    def list_by_search_service(resource_group_name, search_service_name, search_management_request_options = nil, custom_headers = nil)
      response = list_by_search_service_async(resource_group_name, search_service_name, search_management_request_options, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Returns the list of query API keys for the given Azure Search service.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # current subscription. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param search_service_name [String] The name of the Azure Search service
    # associated with the specified resource group.
    # @param search_management_request_options [SearchManagementRequestOptions]
    # Additional parameters for the operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_search_service_with_http_info(resource_group_name, search_service_name, search_management_request_options = nil, custom_headers = nil)
      list_by_search_service_async(resource_group_name, search_service_name, search_management_request_options, custom_headers).value!
    end

    #
    # Returns the list of query API keys for the given Azure Search service.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # current subscription. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param search_service_name [String] The name of the Azure Search service
    # associated with the specified resource group.
    # @param search_management_request_options [SearchManagementRequestOptions]
    # Additional parameters for the operation
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_search_service_async(resource_group_name, search_service_name, search_management_request_options = nil, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'search_service_name is nil' if search_service_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?

      client_request_id = nil
      unless search_management_request_options.nil?
        client_request_id = search_management_request_options.clientRequestId
      end

      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      request_headers['x-ms-client-request-id'] = client_request_id.to_s unless client_request_id.to_s.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Search/searchServices/{searchServiceName}/listQueryKeys'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'searchServiceName' => search_service_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::Search::Api_2015_08_19::Models::ListQueryKeysResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Deletes the specified query key. Unlike admin keys, query keys are not
    # regenerated. The process for regenerating a query key is to delete and then
    # recreate it.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # current subscription. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param search_service_name [String] The name of the Azure Search service
    # associated with the specified resource group.
    # @param key [String] The query key to be deleted. Query keys are identified by
    # value, not by name.
    # @param search_management_request_options [SearchManagementRequestOptions]
    # Additional parameters for the operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(resource_group_name, search_service_name, key, search_management_request_options = nil, custom_headers = nil)
      response = delete_async(resource_group_name, search_service_name, key, search_management_request_options, custom_headers).value!
      nil
    end

    #
    # Deletes the specified query key. Unlike admin keys, query keys are not
    # regenerated. The process for regenerating a query key is to delete and then
    # recreate it.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # current subscription. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param search_service_name [String] The name of the Azure Search service
    # associated with the specified resource group.
    # @param key [String] The query key to be deleted. Query keys are identified by
    # value, not by name.
    # @param search_management_request_options [SearchManagementRequestOptions]
    # Additional parameters for the operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(resource_group_name, search_service_name, key, search_management_request_options = nil, custom_headers = nil)
      delete_async(resource_group_name, search_service_name, key, search_management_request_options, custom_headers).value!
    end

    #
    # Deletes the specified query key. Unlike admin keys, query keys are not
    # regenerated. The process for regenerating a query key is to delete and then
    # recreate it.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # current subscription. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param search_service_name [String] The name of the Azure Search service
    # associated with the specified resource group.
    # @param key [String] The query key to be deleted. Query keys are identified by
    # value, not by name.
    # @param search_management_request_options [SearchManagementRequestOptions]
    # Additional parameters for the operation
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(resource_group_name, search_service_name, key, search_management_request_options = nil, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'search_service_name is nil' if search_service_name.nil?
      fail ArgumentError, 'key is nil' if key.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?

      client_request_id = nil
      unless search_management_request_options.nil?
        client_request_id = search_management_request_options.clientRequestId
      end

      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      request_headers['x-ms-client-request-id'] = client_request_id.to_s unless client_request_id.to_s.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Search/searchServices/{searchServiceName}/deleteQueryKey/{key}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'searchServiceName' => search_service_name,'key' => key,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 204 || status_code == 404
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

  end
end
