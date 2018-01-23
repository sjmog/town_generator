class HitPoints
  def self.for(person)
    return Occupation.hit_die_for(person.occupation).roll if person.level == 1

    (1..person.level).inject(0) do |hit_points|
      hit_points += Occupation.hit_die_for(person.occupation).roll + Modifier.for(person.constitution).raw
    end
  end
end