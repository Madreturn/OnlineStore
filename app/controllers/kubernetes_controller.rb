class KubernetesController < ApplicationController

  def index
    # uri = URI::HTTP.build(host: "106.75.96.108", port: 6443)
    # @client = Kubeclient::Client.new(uri)

    auth_options = {
        username: 'testk8s',
        password: 'testk8s'
    }
    client = Kubeclient::Client.new(
        'https://106.75.96.108:6443/api/', 'v1', auth_options: auth_options
    )

  end
end
