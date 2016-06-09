require "ultra_pending/version"

module UltraPending
  def pending(*args)
    raise args.map(&:to_s).join(' ')
  end

  extend self
end
