if !Rails.env.production?
  # This code will only run in development and test environments
  Movie.destroy_all

  Movie.create!([{
                   title: "Iron Man",
                   rating: "PG-13",
                   total_gross: 585366247,
                   description: "Tony Stark builds an armoured suit to fight the throes of evil.",
                   released_on: "2008-05-02"
                 },
                 {
                   title: "Superman",
                   rating: "PG",
                   total_gross: 300451603,
                   description: "Clark Kent grows up to be the greatest super-hero.",
                   released_on: "1978-12-15"
                 },
                 {
                   title: "Spider-Man",
                   rating: "PG-13",
                   total_gross: 825025036,
                   description: "Peter Parker gets bitten by a genetically modified spider",
                   released_on: "2002-05-03"
                 }])

  p "Created #{Movie.count} Movies"
end