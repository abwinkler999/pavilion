class StaticPagesController < ApplicationController

  include ApplicationHelper

  def home
  end

  def splash
    if user_signed_in?
      redirect_to :home and return
    end
  end

  def teacher
    if params[:q] != "yourock123"
      redirect_to :root, alert: "Sorry, teacher password was not correct." and return
    end
    redirect_to :home
  end

  def admin
  	bounce_nonadmin
  end

  def csv_girls
  	bounce_nonadmin
  	@girls = Girl.all.order(:last_name)
  	respond_to do |format|
  		format.html
  		format.csv {
  			headers['Content-Disposition'] = 'attachment; filename=girl-registrations-list.csv'
  			headers['Content-Type'] ||= 'text/csv'
  		}
  	end
  end

  def csv_adults
  	bounce_nonadmin
  	@adults = Adult.all.order(:last_name)
  	respond_to do |format|
  		format.html
  		format.csv {
  			headers['Content-Disposition'] = 'attachment; filename=adult-registrations-list.csv'
  			headers['Content-Type'] ||= 'text/csv'
  		}
    end
  end

  def csv_sessions
  	bounce_nonadmin
  	@girls = Girl.all.order(:last_name)
  	respond_to do |format|
  		format.html
  		format.csv {
  			headers['Content-Disposition'] = 'attachment; filename=sessions-list.csv'
  			headers['Content-Type'] ||= 'text/csv'
  		}
    end
  end

  def csv_medications
  	bounce_nonadmin
  	@girls = Girl.where(medications:true).all.order(:last_name)
  	respond_to do |format|
  		format.html
  		format.csv {
  			headers['Content-Disposition'] = 'attachment; filename=medications-list.csv'
  			headers['Content-Type'] ||= 'text/csv'
  		}
    end
  end

  def csv_dietary
    bounce_nonadmin
    @girls = Girl.where("length(dietary) > 0").all.order(:last_name)
    respond_to do |format|
      format.html
      format.csv {
        headers['Content-Disposition'] = 'attachment; filename=dietary-list.csv'
        headers['Content-Type'] ||= 'text/csv'
      }
    end
  end

  def csv_gluten
    bounce_nonadmin
    @girls = Girl.where(no_gluten:true).all.order(:last_name)
    respond_to do |format|
      format.html
      format.csv {
        headers['Content-Disposition'] = 'attachment; filename=gluten-list.csv'
        headers['Content-Type'] ||= 'text/csv'
      }
    end
  end

  def csv_release
    bounce_nonadmin
    @girls = Girl.where(release:false).all.order(:last_name)
    respond_to do |format|
      format.html
      format.csv {
        headers['Content-Disposition'] = 'attachment; filename=media-release-list.csv'
        headers['Content-Type'] ||= 'text/csv'
      }
    end
  end

  def csv_units
    bounce_nonadmin
    @girls = Girl.all.order(:level_id, :last_name)
    respond_to do |format|
      format.html
      format.csv {
        headers['Content-Disposition'] = 'attachment; filename=unit-list.csv'
        headers['Content-Type'] ||= 'text/csv'
      }
    end
  end

  def csv_troops
    bounce_nonadmin
    @girls = Girl.all.order(:troopnumber, :last_name)
    respond_to do |format|
      format.html
      format.csv {
        headers['Content-Disposition'] = 'attachment; filename=troop-list.csv'
        headers['Content-Type'] ||= 'text/csv'
      }
    end
  end

private

  def bounce_nonadmin
  	unless user_signed_in? && current_user.is_admin?
  		redirect_to action: "home"
  	end
  end

end
