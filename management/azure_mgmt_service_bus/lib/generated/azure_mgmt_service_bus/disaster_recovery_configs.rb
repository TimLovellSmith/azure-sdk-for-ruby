# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ServiceBus
  #
  # Azure Service Bus client
  #
  class DisasterRecoveryConfigs
    include MsRestAzure

    #
    # Creates and initializes a new instance of the DisasterRecoveryConfigs class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ServiceBusManagementClient] reference to the ServiceBusManagementClient
    attr_reader :client

    #
    # Gets all Alias(Disaster Recovery configurations)
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<ArmDisasterRecovery>] operation results.
    #
    def list(resource_group_name, namespace_name, custom_headers = nil)
      first_page = list_as_lazy(resource_group_name, namespace_name, custom_headers)
      first_page.get_all_items
    end

    #
    # Gets all Alias(Disaster Recovery configurations)
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(resource_group_name, namespace_name, custom_headers = nil)
      list_async(resource_group_name, namespace_name, custom_headers).value!
    end

    #
    # Gets all Alias(Disaster Recovery configurations)
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(resource_group_name, namespace_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'namespace_name is nil' if namespace_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceBus/namespaces/{namespaceName}/disasterRecoveryConfigs'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'namespaceName' => namespace_name,'subscriptionId' => @client.subscription_id},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::ServiceBus::Models::ArmDisasterRecoveryListResult.mapper()
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
    # Creates or updates a new Alias(Disaster Recovery configuration)
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param alias_parameter [String] The Disaster Recovery configuration name
    # @param parameters [ArmDisasterRecovery] Parameters required to create an
    # Alias(Disaster Recovery configuration)
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ArmDisasterRecovery] operation results.
    #
    def create_or_update(resource_group_name, namespace_name, alias_parameter, parameters, custom_headers = nil)
      response = create_or_update_async(resource_group_name, namespace_name, alias_parameter, parameters, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Creates or updates a new Alias(Disaster Recovery configuration)
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param alias_parameter [String] The Disaster Recovery configuration name
    # @param parameters [ArmDisasterRecovery] Parameters required to create an
    # Alias(Disaster Recovery configuration)
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_or_update_with_http_info(resource_group_name, namespace_name, alias_parameter, parameters, custom_headers = nil)
      create_or_update_async(resource_group_name, namespace_name, alias_parameter, parameters, custom_headers).value!
    end

    #
    # Creates or updates a new Alias(Disaster Recovery configuration)
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param alias_parameter [String] The Disaster Recovery configuration name
    # @param parameters [ArmDisasterRecovery] Parameters required to create an
    # Alias(Disaster Recovery configuration)
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_update_async(resource_group_name, namespace_name, alias_parameter, parameters, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'namespace_name is nil' if namespace_name.nil?
      fail ArgumentError, 'alias_parameter is nil' if alias_parameter.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = Azure::ARM::ServiceBus::Models::ArmDisasterRecovery.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceBus/namespaces/{namespaceName}/disasterRecoveryConfigs/{alias}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'namespaceName' => namespace_name,'alias' => alias_parameter,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 201
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::ServiceBus::Models::ArmDisasterRecovery.mapper()
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
    # Deletes an Alias(Disaster Recovery configuration)
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param alias_parameter [String] The Disaster Recovery configuration name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(resource_group_name, namespace_name, alias_parameter, custom_headers = nil)
      response = delete_async(resource_group_name, namespace_name, alias_parameter, custom_headers).value!
      nil
    end

    #
    # Deletes an Alias(Disaster Recovery configuration)
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param alias_parameter [String] The Disaster Recovery configuration name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(resource_group_name, namespace_name, alias_parameter, custom_headers = nil)
      delete_async(resource_group_name, namespace_name, alias_parameter, custom_headers).value!
    end

    #
    # Deletes an Alias(Disaster Recovery configuration)
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param alias_parameter [String] The Disaster Recovery configuration name
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(resource_group_name, namespace_name, alias_parameter, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'namespace_name is nil' if namespace_name.nil?
      fail ArgumentError, 'alias_parameter is nil' if alias_parameter.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceBus/namespaces/{namespaceName}/disasterRecoveryConfigs/{alias}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'namespaceName' => namespace_name,'alias' => alias_parameter,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Retrieves Alias(Disaster Recovery configuration) for primary or secondary
    # namespace
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param alias_parameter [String] The Disaster Recovery configuration name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ArmDisasterRecovery] operation results.
    #
    def get(resource_group_name, namespace_name, alias_parameter, custom_headers = nil)
      response = get_async(resource_group_name, namespace_name, alias_parameter, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Retrieves Alias(Disaster Recovery configuration) for primary or secondary
    # namespace
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param alias_parameter [String] The Disaster Recovery configuration name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, namespace_name, alias_parameter, custom_headers = nil)
      get_async(resource_group_name, namespace_name, alias_parameter, custom_headers).value!
    end

    #
    # Retrieves Alias(Disaster Recovery configuration) for primary or secondary
    # namespace
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param alias_parameter [String] The Disaster Recovery configuration name
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, namespace_name, alias_parameter, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'namespace_name is nil' if namespace_name.nil?
      fail ArgumentError, 'alias_parameter is nil' if alias_parameter.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceBus/namespaces/{namespaceName}/disasterRecoveryConfigs/{alias}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'namespaceName' => namespace_name,'alias' => alias_parameter,'subscriptionId' => @client.subscription_id},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::ServiceBus::Models::ArmDisasterRecovery.mapper()
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
    # This operation disables the Disaster Recovery and stops replicating changes
    # from primary to secondary namespaces
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param alias_parameter [String] The Disaster Recovery configuration name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def break_pairing(resource_group_name, namespace_name, alias_parameter, custom_headers = nil)
      response = break_pairing_async(resource_group_name, namespace_name, alias_parameter, custom_headers).value!
      nil
    end

    #
    # This operation disables the Disaster Recovery and stops replicating changes
    # from primary to secondary namespaces
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param alias_parameter [String] The Disaster Recovery configuration name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def break_pairing_with_http_info(resource_group_name, namespace_name, alias_parameter, custom_headers = nil)
      break_pairing_async(resource_group_name, namespace_name, alias_parameter, custom_headers).value!
    end

    #
    # This operation disables the Disaster Recovery and stops replicating changes
    # from primary to secondary namespaces
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param alias_parameter [String] The Disaster Recovery configuration name
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def break_pairing_async(resource_group_name, namespace_name, alias_parameter, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'namespace_name is nil' if namespace_name.nil?
      fail ArgumentError, 'alias_parameter is nil' if alias_parameter.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceBus/namespaces/{namespaceName}/disasterRecoveryConfigs/{alias}/breakPairing'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'namespaceName' => namespace_name,'alias' => alias_parameter,'subscriptionId' => @client.subscription_id},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # envokes GEO DR failover and reconfigure the alias to point to the secondary
    # namespace
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param alias_parameter [String] The Disaster Recovery configuration name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def fail_over(resource_group_name, namespace_name, alias_parameter, custom_headers = nil)
      response = fail_over_async(resource_group_name, namespace_name, alias_parameter, custom_headers).value!
      nil
    end

    #
    # envokes GEO DR failover and reconfigure the alias to point to the secondary
    # namespace
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param alias_parameter [String] The Disaster Recovery configuration name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def fail_over_with_http_info(resource_group_name, namespace_name, alias_parameter, custom_headers = nil)
      fail_over_async(resource_group_name, namespace_name, alias_parameter, custom_headers).value!
    end

    #
    # envokes GEO DR failover and reconfigure the alias to point to the secondary
    # namespace
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param alias_parameter [String] The Disaster Recovery configuration name
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def fail_over_async(resource_group_name, namespace_name, alias_parameter, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'namespace_name is nil' if namespace_name.nil?
      fail ArgumentError, 'alias_parameter is nil' if alias_parameter.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceBus/namespaces/{namespaceName}/disasterRecoveryConfigs/{alias}/failover'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'namespaceName' => namespace_name,'alias' => alias_parameter,'subscriptionId' => @client.subscription_id},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Gets all Alias(Disaster Recovery configurations)
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ArmDisasterRecoveryListResult] operation results.
    #
    def list_next(next_page_link, custom_headers = nil)
      response = list_next_async(next_page_link, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets all Alias(Disaster Recovery configurations)
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_next_with_http_info(next_page_link, custom_headers = nil)
      list_next_async(next_page_link, custom_headers).value!
    end

    #
    # Gets all Alias(Disaster Recovery configurations)
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_next_async(next_page_link, custom_headers = nil)
      fail ArgumentError, 'next_page_link is nil' if next_page_link.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{nextLink}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'nextLink' => next_page_link},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::ServiceBus::Models::ArmDisasterRecoveryListResult.mapper()
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
    # Gets all Alias(Disaster Recovery configurations)
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ArmDisasterRecoveryListResult] which provide lazy access to pages of
    # the response.
    #
    def list_as_lazy(resource_group_name, namespace_name, custom_headers = nil)
      response = list_async(resource_group_name, namespace_name, custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_next_async(next_page_link, custom_headers)
        end
        page
      end
    end

  end
end
