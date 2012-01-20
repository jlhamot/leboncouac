# encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Instrument.create(:name => "Accordéon")

Instrument.create(:name => "Balalaïka")
Instrument.create(:name => "Banjo")
Instrument.create(:name => "Basson")
Instrument.create(:name => "Batterie")
Instrument.create(:name => "Bombarde")

Instrument.create(:name => "Chant")
Instrument.create(:name => "Clairon")
Instrument.create(:name => "Clarinette")
Instrument.create(:name => "Clarinette basse")
Instrument.create(:name => "Clavecin")
Instrument.create(:name => "Contrebasse")
Instrument.create(:name => "Contrebasson")
Instrument.create(:name => "Cor")
Instrument.create(:name => "Cornemuse")

Instrument.create(:name => "Darbouka")
Instrument.create(:name => "Didgeridoo")
Instrument.create(:name => "Djembé")

Instrument.create(:name => "Flûte à bec")
Instrument.create(:name => "Flûte de pan")

Instrument.create(:name => "Guimbarde")
Instrument.create(:name => "Guitare acoustique")
Instrument.create(:name => "Guitare basse")
Instrument.create(:name => "Guitare électrique")
Instrument.create(:name => "Guitare folk")

Instrument.create(:name => "Harmonica")
Instrument.create(:name => "Harmonium")
Instrument.create(:name => "Harpe")
Instrument.create(:name => "Hautbois")

Instrument.create(:name => "Luth")
Instrument.create(:name => "Lyre")

Instrument.create(:name => "Mandoline")
Instrument.create(:name => "Maracas")
Instrument.create(:name => "Marimba")

Instrument.create(:name => "Orgue")

Instrument.create(:name => "Percussion")
Instrument.create(:name => "Piano")
Instrument.create(:name => "Piccolo")

Instrument.create(:name => "Saxophone basse", :tonality => "Bb")
Instrument.create(:name => "Saxophone baryton", :tonality => "Eb")
Instrument.create(:name => "Saxophone ténor", :tonality => "Bb")
Instrument.create(:name => "Saxophone alto", :tonality => "Eb")
Instrument.create(:name => "Saxophone soprano", :tonality => "Bb")
Instrument.create(:name => "Scie musicale")

Instrument.create(:name => "Tambour")
Instrument.create(:name => "Timbales")
Instrument.create(:name => "Trombone")
Instrument.create(:name => "Trompette")
Instrument.create(:name => "Tuba")

Instrument.create(:name => "Ukulélé")

Instrument.create(:name => "Violon")
Instrument.create(:name => "Violon alto")
Instrument.create(:name => "Violoncelle")

Instrument.create(:name => "Xylophone")

Instrument.create(:name => "Autre")