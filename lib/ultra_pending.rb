require "ultra_pending/version"

module UltraPending
  ADVICE = 'Pending tests are a design smell'

  def pending(*args)
    raise ADVICE
  end

  extend self
end
