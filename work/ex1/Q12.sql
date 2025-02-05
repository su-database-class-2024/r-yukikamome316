SELECT
  title
FROM
  film
WHERE
  replacement_cost = (
    SELECT
      MAX(replacement_cost)
    FROM
      film
  );

-- Result:
--           title
-- -------------------------
--  Arabia Dogma
--  Ballroom Mockingbird
--  Blindness Gun
--  Bonnie Holocaust
--  Chariots Conspiracy
--  Clockwork Paradise
--  Clyde Theory
--  Cruelty Unforgiven
--  Cupboard Sinners
--  Desperate Trainspotting
--  Dirty Ace
--  Doctor Grail
--  Earth Vision
--  Everyone Craft
--  Extraordinary Conquerer
--  Fantasia Park
--  Feud Frogmen
--  Flatliners Killer
--  Floats Garden
--  Gilmore Boiled
--  Goldfinger Sensibility
--  Graffiti Love
--  Hills Neighbors
--  Hollywood Anonymous
--  Honey Ties
--  Idols Snatchers
--  Japanese Run
--  Jeepers Wedding
--  Jericho Mulan
--  Jingle Sagebrush
--  Lawless Vision
--  Loathing Legally
--  Lover Truman
--  Oscar Gold
--  Patient Sister
--  Poseidon Forever
--  Princess Giant
--  Quest Mussolini
--  Random Go
--  Reign Gentlemen
--  Reservoir Adaptation
--  Right Cranes
--  River Outlaw
--  Salute Apollo
--  Sassy Packer
--  Slacker Liaisons
--  Smile Earring
--  Song Hedwig
--  Tracy Cider
--  Uncut Suicides
--  Virgin Daisy
--  West Lion
--  Wyoming Storm
-- (53 rows)
