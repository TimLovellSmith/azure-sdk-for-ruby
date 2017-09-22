# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MachineLearning::CommitmentPlans::Api_2016_05_01_preview
  #
  # These APIs allow end users to operate on Azure Machine Learning Commitment
  # Plans resources and their child Commitment Association resources. They
  # support CRUD operations for commitment plans, get and list operations for
  # commitment associations, moving commitment associations between commitment
  # plans, and retrieving commitment plan usage history.
  #
  class CommitmentAssociations
    include MsRestAzure

    #
    # Creates and initializes a new instance of the CommitmentAssociations class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [AzureMLCommitmentPlansManagementClient] reference to the AzureMLCommitmentPlansManagementClient
    attr_reader :client

    #
    # Get a commitment association.
    #
    # @param resource_group_name [String] The resource group name.
    # @param commitment_plan_name [String] The Azure ML commitment plan name.
    # @param commitment_association_name [String] The commitment association name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [CommitmentAssociation] operation results.
    #
    def get(resource_group_name, commitment_plan_name, commitment_association_name, custom_headers = nil)
      response = get_async(resource_group_name, commitment_plan_name, commitment_association_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get a commitment association.
    #
    # @param resource_group_name [String] The resource group name.
    # @param commitment_plan_name [String] The Azure ML commitment plan name.
    # @param commitment_association_name [String] The commitment association name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, commitment_plan_name, commitment_association_name, custom_headers = nil)
      get_async(resource_group_name, commitment_plan_name, commitment_association_name, custom_headers).value!
    end

    #
    # Get a commitment association.
    #
    # @param resource_group_name [String] The resource group name.
    # @param commitment_plan_name [String] The Azure ML commitment plan name.
    # @param commitment_association_name [String] The commitment association name.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, commitment_plan_name, commitment_association_name, custom_headers = nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'commitment_plan_name is nil' if commitment_plan_name.nil?
      fail ArgumentError, 'commitment_association_name is nil' if commitment_association_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MachineLearning/commitmentPlans/{commitmentPlanName}/commitmentAssociations/{commitmentAssociationName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'commitmentPlanName' => commitment_plan_name,'commitmentAssociationName' => commitment_association_name},
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
            result_mapper = Azure::ARM::MachineLearning::CommitmentPlans::Api_2016_05_01_preview::Models::CommitmentAssociation.mapper()
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
    # Get all commitment associations for a parent commitment plan.
    #
    # @param resource_group_name [String] The resource group name.
    # @param commitment_plan_name [String] The Azure ML commitment plan name.
    # @param skip_token [String] Continuation token for pagination.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<CommitmentAssociation>] operation results.
    #
    def list(resource_group_name, commitment_plan_name, skip_token = nil, custom_headers = nil)
      first_page = list_as_lazy(resource_group_name, commitment_plan_name, skip_token, custom_headers)
      first_page.get_all_items
    end

    #
    # Get all commitment associations for a parent commitment plan.
    #
    # @param resource_group_name [String] The resource group name.
    # @param commitment_plan_name [String] The Azure ML commitment plan name.
    # @param skip_token [String] Continuation token for pagination.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(resource_group_name, commitment_plan_name, skip_token = nil, custom_headers = nil)
      list_async(resource_group_name, commitment_plan_name, skip_token, custom_headers).value!
    end

    #
    # Get all commitment associations for a parent commitment plan.
    #
    # @param resource_group_name [String] The resource group name.
    # @param commitment_plan_name [String] The Azure ML commitment plan name.
    # @param skip_token [String] Continuation token for pagination.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(resource_group_name, commitment_plan_name, skip_token = nil, custom_headers = nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'commitment_plan_name is nil' if commitment_plan_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MachineLearning/commitmentPlans/{commitmentPlanName}/commitmentAssociations'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'commitmentPlanName' => commitment_plan_name},
          query_params: {'$skipToken' => skip_token,'api-version' => @client.api_version},
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
            result_mapper = Azure::ARM::MachineLearning::CommitmentPlans::Api_2016_05_01_preview::Models::CommitmentAssociationListResult.mapper()
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
    # Re-parent a commitment association from one commitment plan to another.
    #
    # @param resource_group_name [String] The resource group name.
    # @param commitment_plan_name [String] The Azure ML commitment plan name.
    # @param commitment_association_name [String] The commitment association name.
    # @param move_payload [MoveCommitmentAssociationRequest] The move request
    # payload.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [CommitmentAssociation] operation results.
    #
    def move(resource_group_name, commitment_plan_name, commitment_association_name, move_payload, custom_headers = nil)
      response = move_async(resource_group_name, commitment_plan_name, commitment_association_name, move_payload, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Re-parent a commitment association from one commitment plan to another.
    #
    # @param resource_group_name [String] The resource group name.
    # @param commitment_plan_name [String] The Azure ML commitment plan name.
    # @param commitment_association_name [String] The commitment association name.
    # @param move_payload [MoveCommitmentAssociationRequest] The move request
    # payload.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def move_with_http_info(resource_group_name, commitment_plan_name, commitment_association_name, move_payload, custom_headers = nil)
      move_async(resource_group_name, commitment_plan_name, commitment_association_name, move_payload, custom_headers).value!
    end

    #
    # Re-parent a commitment association from one commitment plan to another.
    #
    # @param resource_group_name [String] The resource group name.
    # @param commitment_plan_name [String] The Azure ML commitment plan name.
    # @param commitment_association_name [String] The commitment association name.
    # @param move_payload [MoveCommitmentAssociationRequest] The move request
    # payload.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def move_async(resource_group_name, commitment_plan_name, commitment_association_name, move_payload, custom_headers = nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'commitment_plan_name is nil' if commitment_plan_name.nil?
      fail ArgumentError, 'commitment_association_name is nil' if commitment_association_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'move_payload is nil' if move_payload.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = Azure::ARM::MachineLearning::CommitmentPlans::Api_2016_05_01_preview::Models::MoveCommitmentAssociationRequest.mapper()
      request_content = @client.serialize(request_mapper,  move_payload)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MachineLearning/commitmentPlans/{commitmentPlanName}/commitmentAssociations/{commitmentAssociationName}/move'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'commitmentPlanName' => commitment_plan_name,'commitmentAssociationName' => commitment_association_name},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
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
            result_mapper = Azure::ARM::MachineLearning::CommitmentPlans::Api_2016_05_01_preview::Models::CommitmentAssociation.mapper()
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
    # Get all commitment associations for a parent commitment plan.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [CommitmentAssociationListResult] operation results.
    #
    def list_next(next_page_link, custom_headers = nil)
      response = list_next_async(next_page_link, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get all commitment associations for a parent commitment plan.
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
    # Get all commitment associations for a parent commitment plan.
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
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::MachineLearning::CommitmentPlans::Api_2016_05_01_preview::Models::CommitmentAssociationListResult.mapper()
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
    # Get all commitment associations for a parent commitment plan.
    #
    # @param resource_group_name [String] The resource group name.
    # @param commitment_plan_name [String] The Azure ML commitment plan name.
    # @param skip_token [String] Continuation token for pagination.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [CommitmentAssociationListResult] which provide lazy access to pages
    # of the response.
    #
    def list_as_lazy(resource_group_name, commitment_plan_name, skip_token = nil, custom_headers = nil)
      response = list_async(resource_group_name, commitment_plan_name, skip_token, custom_headers).value!
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
