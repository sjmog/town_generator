class Age
  HUMAN = {
    'BABY'       => 0..4,
    'CHILD'      => 5..11,
    'ADOLESCENT' => 12..17,
    'ADULT'      => 18..44,
    'MIDDLE_AGE' => 45..65,
    'OLD_AGE'    => 66..80,
    'VENERABLE'  => 80..100
  }

  HUMAN_DISTRIBUTION = {
    1..5    => HUMAN['BABY'], # 5%
    6..15   => HUMAN['CHILD'], # 10%
    16..30  => HUMAN['ADOLESCENT'], # 15%
    31..60  => HUMAN['ADULT'], # 30%
    61..80  => HUMAN['MIDDLE_AGE'], # 20%
    81..95  => HUMAN['OLD_AGE'], # 15%
    96..100 => HUMAN['VENERABLE'] # 5%
  }

  HALF_ELF = {
    'BABY'       => 0..6,
    'CHILD'      => 7..17,
    'ADOLESCENT' => 18..34,
    'ADULT'      => 35..89,
    'MIDDLE_AGE' => 90..119,
    'OLD_AGE'    => 120..139,
    'VENERABLE'  => 140..175
  }

  HALF_ELF_DISTRIBUTION = {
    1..5    => HALF_ELF['BABY'], # 5%
    6..15   => HALF_ELF['CHILD'], # 10%
    16..30  => HALF_ELF['ADOLESCENT'], # 15%
    31..60  => HALF_ELF['ADULT'], # 30%
    61..80  => HALF_ELF['MIDDLE_AGE'], # 20%
    81..95  => HALF_ELF['OLD_AGE'], # 15%
    96..100 => HALF_ELF['VENERABLE'] # 5%
  }

  HALFLING = {
    'BABY'       => 0..4,
    'CHILD'      => 5..14,
    'ADOLESCENT' => 15..19,
    'ADULT'      => 20..49,
    'MIDDLE_AGE' => 50..74,
    'OLD_AGE'    => 75..99,
    'VENERABLE'  => 100..180
  }

  HALFLING_DISTRIBUTION = {
    1..5    => HALFLING['BABY'], # 5%
    6..15   => HALFLING['CHILD'], # 10%
    16..30  => HALFLING['ADOLESCENT'], # 15%
    31..60  => HALFLING['ADULT'], # 30%
    61..80  => HALFLING['MIDDLE_AGE'], # 20%
    81..95  => HALFLING['OLD_AGE'], # 15%
    96..100 => HALFLING['VENERABLE'] # 5%
  }

  DWARF = {
    'BABY'       => 0..7,
    'CHILD'      => 8..24,
    'ADOLESCENT' => 25..49,
    'ADULT'      => 50..124,
    'MIDDLE_AGE' => 125..187,
    'OLD_AGE'    => 188..249,
    'VENERABLE'  => 250..400
  }

  DWARF_DISTRIBUTION = {
    1..5    => DWARF['BABY'], # 5%
    6..15   => DWARF['CHILD'], # 10%
    16..30  => DWARF['ADOLESCENT'], # 15%
    31..60  => DWARF['ADULT'], # 30%
    61..80  => DWARF['MIDDLE_AGE'], # 20%
    81..95  => DWARF['OLD_AGE'], # 15%
    96..100 => DWARF['VENERABLE'] # 5%
  }

  TIEFLING = {
    'BABY'       => 0..4,
    'CHILD'      => 5..11,
    'ADOLESCENT' => 12..17,
    'ADULT'      => 18..44,
    'MIDDLE_AGE' => 45..65,
    'OLD_AGE'    => 66..80,
    'VENERABLE'  => 80..100
  }

  TIEFLING_DISTRIBUTION = {
    1..5    => TIEFLING['BABY'], # 5%
    6..15   => TIEFLING['CHILD'], # 10%
    16..30  => TIEFLING['ADOLESCENT'], # 15%
    31..60  => TIEFLING['ADULT'], # 30%
    61..80  => TIEFLING['MIDDLE_AGE'], # 20%
    81..95  => TIEFLING['OLD_AGE'], # 15%
    96..100 => TIEFLING['VENERABLE'] # 5%
  }

  ELF = {
    'BABY'       => 0..4,
    'CHILD'      => 5..11,
    'ADOLESCENT' => 12..99,
    'ADULT'      => 100..174,
    'MIDDLE_AGE' => 175..262,
    'OLD_AGE'    => 263..349,
    'VENERABLE'  => 350..700
  }

  ELF_DISTRIBUTION = {
    1..5    => ELF['BABY'], # 5%
    6..15   => ELF['CHILD'], # 10%
    16..30  => ELF['ADOLESCENT'], # 15%
    31..60  => ELF['ADULT'], # 30%
    61..80  => ELF['MIDDLE_AGE'], # 20%
    81..95  => ELF['OLD_AGE'], # 15%
    96..100 => ELF['VENERABLE'] # 5%
  }

  HALF_ORC = {
    'BABY'       => 0..2,
    'CHILD'      => 3..8,
    'ADOLESCENT' => 9..13,
    'ADULT'      => 14..29,
    'MIDDLE_AGE' => 30..44,
    'OLD_AGE'    => 45..59,
    'VENERABLE'  => 60..75
  }

  HALF_ORC_DISTRIBUTION = {
    1..5    => HALF_ORC['BABY'], # 5%
    6..15   => HALF_ORC['CHILD'], # 10%
    16..30  => HALF_ORC['ADOLESCENT'], # 15%
    31..60  => HALF_ORC['ADULT'], # 30%
    61..80  => HALF_ORC['MIDDLE_AGE'], # 20%
    81..95  => HALF_ORC['OLD_AGE'], # 15%
    96..100 => HALF_ORC['VENERABLE'] # 5%
  }

  DRAGONBORN = {
    'BABY'       => 0..1,
    'CHILD'      => 2..4,
    'ADOLESCENT' => 5..14,
    'ADULT'      => 15..39,
    'MIDDLE_AGE' => 40..59,
    'OLD_AGE'    => 60..74,
    'VENERABLE'  => 75..90
  }

  DRAGONBORN_DISTRIBUTION = {
    1..5    => DRAGONBORN['BABY'], # 5%
    6..15   => DRAGONBORN['CHILD'], # 10%
    16..30  => DRAGONBORN['ADOLESCENT'], # 15%
    31..60  => DRAGONBORN['ADULT'], # 30%
    61..80  => DRAGONBORN['MIDDLE_AGE'], # 20%
    81..95  => DRAGONBORN['OLD_AGE'], # 15%
    96..100 => DRAGONBORN['VENERABLE'] # 5%
  }

  def self.generate(race)
    random_number = Kernel.rand(1..100)

    age_range = const_get("#{race.underscore.upcase}_DISTRIBUTION").select { |age_index| age_index === random_number }.values.first
    
    Kernel.rand(age_range)
  end

  def self.child?(age, race)
    age < lowest_age_for(race, 'ADOLESCENT')
  end

  def self.adolescent?(age, race)
    age < lowest_age_for(race, 'ADULT') && !child?(age, race)
  end

  def self.adult?(age, race)
    age >= lowest_age_for(race, 'ADULT')
  end

  def self.lowest_age_for(race, stage)
    const_get("#{race.underscore.upcase}")[stage].first
  end
end