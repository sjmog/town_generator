module PeopleHelper
  def viewing_town_guard?
    params[:occupation] == ["Warrior", "Fighter"]
  end
end