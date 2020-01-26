namespace :lists do
  desc "TODO"
  task fill: :environment do
    raise if Rails.env.production?
    List.all.each do |list|
      3.times do
        list.tasks << Task.create(
          title: "#{Faker::Verb.base.capitalize} the #{Faker::ElectricalComponents.active}",
          notes: "#{Faker::TvShows::SiliconValley.quote}"
        )
      end

      3.times do
        list.tasks << Task.create(
          title: "#{Faker::Verb.base.capitalize} the #{Faker::Creature::Dog.meme_phrase}",
          notes: "#{Faker::TvShows::BojackHorseman.quote}"
        )
      end
    end
  end
end
