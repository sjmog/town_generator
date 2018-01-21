class JobTitle
  attr_reader :title

  INN_JOBS = ["Cook", "Waiter", "Cleaner"]
  SMITHY_JOBS = ["Blacksmith", "Apprentice"]
  KEEP_JOBS = ["Guard"]

  def initialize(establishment_type)
    @title = self.class.const_get("#{establishment_type.underscore.upcase}_JOBS").sample
  end

  def self.generate(establishment)
    new(establishment.type).title
  end
end