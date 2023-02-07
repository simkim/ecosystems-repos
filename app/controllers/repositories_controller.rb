class RepositoriesController < ApplicationController
  def show
    @host = Host.find_by_name!(params[:host_id])
    @repository = @host.repositories.find_by('lower(full_name) = ?', params[:id].downcase)
    if @repository.nil?
      @host.sync_repository_async(params[:id])
      raise ActiveRecord::RecordNotFound
    else
      @manifests = @repository.manifests.includes(:dependencies).order('kind DESC')
      @tags = @repository.tags.order('published_at DESC')
      @sha = params[:sha] || @repository.default_branch
    end
  end

  def funding
    @host = Host.find_by_name!(params[:host_id])
    @repository = @host.repositories.find_by('lower(full_name) = ?', params[:id].downcase)
    @manifests = @repository.manifests.includes(:dependencies).order('kind DESC')
    @dependencies = @manifests.map(&:dependencies).flatten
    @dependencies.map(&:package_usage).compact.uniq.each{|pu| pu.sync_async }
  end
end