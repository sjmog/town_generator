module ApplicationHelper
  def modifier(score)
    return "+0" if score == 10

    raw = ((score - 10).to_f / 2).round

    "#{ raw.positive? ? "+" : "" }#{raw}"
  end
end
