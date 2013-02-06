class Vision::ResourceController < Vision::ApplicationController
  inherit_resources
  load_and_authorize_resource

  respond_to :html
  has_scope :page, default:1
  self.responder = Vision::Responder

  helper_method :attributes, :form_attributes, :sort_column, :sort_direction, :association_attributes, :associations, :searchable?

  private

  def collection
    if searchable?
      super.search(params[:q]).order(sort_column + " " + sort_direction)
    else
      super.order(sort_column + " " + sort_direction)
    end
  end

  def sort_column
    resource_class.column_names.include?(params[:sort]) ? params[:sort] : "updated_at"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "desc"
  end

  def attributes
    resource_class.attribute_names - %w(id created_at updated_at)
  end

  def form_attributes
    attributes
  end

  def association_attributes
    associations(:belongs_to).map{|a| a.options[:foreign_key] || "#{a.name}_id"}
  end

  def associations(macro=nil)
    assoc=resource_class.reflect_on_all_associations
    assoc.select!{|a| a.macro==macro.to_sym} unless macro.blank?
    assoc
  end

  def searchable?
    resource_class.respond_to? :searchable
  end

  def read_written_by
    can? :read
  end



end