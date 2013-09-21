require './examples/aggressive'
require './examples/defensive'

extend Aggressive
extend Defensive

@chooser = Proc.new do
  # act mean 30% of the time.
  rand() <= 0.3 ? act_aggressively : act_defensively
end

on_turn do
  @chooser.call
end
