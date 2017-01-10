# -*- encoding: utf-8 -*-

require 'rumoji/emoji'
require 'set'

module Rumoji
  class Emoji
    OBJECTS = SortedSet[
      self.new("\u{1F38D}", [:bamboo], "PINE DECORATION"), # "Japanese new year's door decoration
      self.new("\u{1F49D}", [:gift_heart], "HEART WITH RIBBON"),
      self.new("\u{1F38E}", [:dolls], "JAPANESE DOLLS"), # "Japanese Hinamatsuri or girls' doll festival"
      self.new("\u{1F49D}", [:gift_heart], "HEART WITH RIBBON"),
      self.new("\u{1F392}", [:school_satchel]), # "Japanese school entrance ceremony"
      self.new("\u{1F393}", [:mortar_board], "GRADUATION CAP"), # "graduation ceremony"
      self.new("\u{1F38F}", [:flags], "CARP STREAMER"),
      self.new("\u{1F386}", [:fireworks]),
      self.new("\u{1F387}", [:sparkler], "FIREWORK SPARKLER"),
      self.new("\u{1F390}", [:wind_chime]),
      self.new("\u{1F391}", [:rice_scene], "MOON VIEWING CEREMONY"), # "Japanese Otsukimi harvest celebration"
      self.new("\u{1F383}", [:jack_o_lantern], "JACK-O-LANTERN"), # "Hallowe'en"
      self.new("\u{1F47B}", [:ghost]),
      self.new("\u{1F385}", [:santa], "FATHER CHRISTMAS"), # "Santa Claus"
      self.new("\u{1f3b1}", [:"8ball"]),
      self.new("\u{23f0}" , [:alarm_clock]),
      self.new("\u{1f34e}", [:apple]),
      self.new("\u{1f3a8}", [:art]),
      self.new("\u{1f37c}", [:baby_bottle]),
      self.new("\u{1f388}", [:balloon]),
      self.new("\u{1f34c}", [:banana]),
      self.new("\u{1f4ca}", [:bar_chart]),
      self.new("\u{26be}" , [:baseball]),
      self.new("\u{1f3c0}", [:basketball]),
      self.new("\u{1f6c0}", [:bath]),
      self.new("\u{1f6c1}", [:bathtub]),
      self.new("\u{1f50b}", [:battery]),
      self.new("\u{1f37a}", [:beer]),
      self.new("\u{1f37b}", [:beers]),
      self.new("\u{1f514}", [:bell]),
      self.new("\u{1f371}", [:bento]),
      self.new("\u{1f6b4}", [:bicyclist]),
      self.new("\u{1f459}", [:bikini]),
      self.new("\u{1f382}", [:birthday]),
      self.new("\u{1f0cf}", [:black_joker]),
      self.new("\u{2712}" , [:black_nib]),
      self.new("\u{1f4d8}", [:blue_book]),
      self.new("\u{1f4a3}", [:bomb]),
      self.new("\u{1f516}", [:bookmark]),
      self.new("\u{1f4d1}", [:bookmark_tabs]),
      self.new("\u{1f4da}", [:books]),
      self.new("\u{1f462}", [:boot]),
      self.new("\u{1f3b3}", [:bowling]),
      self.new("\u{1f35e}", [:bread]),
      self.new("\u{1f4bc}", [:briefcase]),
      self.new("\u{1f4a1}", [:bulb]),
      self.new("\u{1f370}", [:cake]),
      self.new("\u{1f4c6}", [:calendar]),
      self.new("\u{1f4f2}", [:calling]),
      self.new("\u{1f4f7}", [:camera]),
      self.new("\u{1f36c}", [:candy]),
      self.new("\u{1f4c7}", [:card_index]),
      self.new("\u{1f4bf}", [:cd]),
      self.new("\u{1f4c9}", [:chart_with_downwards_trend]),
      self.new("\u{1f4c8}", [:chart_with_upwards_trend]),
      self.new("\u{1f352}", [:cherries]),
      self.new("\u{1f36b}", [:chocolate_bar]),
      self.new("\u{1f384}", [:christmas_tree]),
      self.new("\u{1f3ac}", [:clapper]),
      self.new("\u{1f4cb}", [:clipboard]),
      self.new("\u{1f4d5}", [:closed_book]),
      self.new("\u{1f510}", [:closed_lock_with_key]),
      self.new("\u{1f302}", [:closed_umbrella]),
      self.new("\u{2663}" , [:clubs]),
      self.new("\u{1f378}", [:cocktail]),
      self.new("\u{2615}" , [:coffee]),
      self.new("\u{1f4bb}", [:computer]),
      self.new("\u{1f38a}", [:confetti_ball]),
      self.new("\u{1f36a}", [:cookie]),
      self.new("\u{1f33d}", [:corn]),
      self.new("\u{1f4b3}", [:credit_card]),
      self.new("\u{1f451}", [:crown]),
      self.new("\u{1f52e}", [:crystal_ball]),
      self.new("\u{1f35b}", [:curry]),
      self.new("\u{1f36e}", [:custard]),
      self.new("\u{1f361}", [:dango]),
      self.new("\u{1f3af}", [:dart]),
      self.new("\u{1f4c5}", [:date]),
      self.new("\u{2666}" , [:diamonds]),
      self.new("\u{1f4b5}", [:dollar]),
      self.new("\u{1f6aa}", [:door]),
      self.new("\u{1f369}", [:doughnut]),
      self.new("\u{1f457}", [:dress]),
      self.new("\u{1f4c0}", [:dvd]),
      self.new("\u{1f4e7}", [:"e-mail"]),
      self.new("\u{1f373}", [:egg]),
      self.new("\u{1f346}", [:eggplant]),
      self.new("\u{1f50c}", [:electric_plug]),
      self.new("\u{2709}" , [:email, :envelope]),
      self.new("\u{1f4b6}", [:euro]),
      self.new("\u{1f453}", [:eyeglasses]),
      self.new("\u{1f4e0}", [:fax]),
      self.new("\u{1f4c1}", [:file_folder]),
      self.new("\u{1f365}", [:fish_cake]),
      self.new("\u{1f3a3}", [:fishing_pole_and_fish]),
      self.new("\u{1f526}", [:flashlight]),
      self.new("\u{1f4be}", [:floppy_disk]),
      self.new("\u{1f3b4}", [:flower_playing_cards]),
      self.new("\u{1f3c8}", [:football]),
      self.new("\u{1f374}", [:fork_and_knife]),
      self.new("\u{1f364}", [:fried_shrimp]),
      self.new("\u{1f35f}", [:fries]),
      self.new("\u{1f3b2}", [:game_die]),
      self.new("\u{1f48e}", [:gem]),
      self.new("\u{1f381}", [:gift]),
      self.new("\u{26f3}" , [:golf]),
      self.new("\u{1f347}", [:grapes]),
      self.new("\u{1f34f}", [:green_apple]),
      self.new("\u{1f4d7}", [:green_book]),
      self.new("\u{1f3b8}", [:guitar]),
      self.new("\u{1f52b}", [:gun]),
      self.new("\u{1f354}", [:hamburger]),
      self.new("\u{1f528}", [:hammer]),
      self.new("\u{1f45c}", [:handbag]),
      self.new("\u{1f3a7}", [:headphones]),
      self.new("\u{2665 FE0F}", [:hearts]),
      self.new("\u{2665}" , [:hearts]),
      self.new("\u{1f506}", [:high_brightness]),
      self.new("\u{1f460}", [:high_heel]),
      self.new("\u{1f52a}", [:hocho]),
      self.new("\u{1f36f}", [:honey_pot]),
      self.new("\u{1f3c7}", [:horse_racing]),
      self.new("\u{231b}" , [:hourglass]),
      self.new("\u{23f3}" , [:hourglass_flowing_sand]),
      self.new("\u{1f368}", [:ice_cream]),
      self.new("\u{1f366}", [:icecream]),
      self.new("\u{1f4e5}", [:inbox_tray]),
      self.new("\u{1f4e8}", [:incoming_envelope]),
      self.new("\u{1f4f1}", [:iphone]),
      self.new("\u{1f456}", [:jeans]),
      self.new("\u{1f511}", [:key]),
      self.new("\u{1f458}", [:kimono]),
      self.new("\u{1f4d2}", [:ledger]),
      self.new("\u{1f34b}", [:lemon]),
      self.new("\u{1f484}", [:lipstick]),
      self.new("\u{1f512}", [:lock]),
      self.new("\u{1f50f}", [:lock_with_ink_pen]),
      self.new("\u{1f36d}", [:lollipop]),
      self.new("\u{27bf}" , [:loop]),
      self.new("\u{1f4e2}", [:loudspeaker]),
      self.new("\u{1f505}", [:low_brightness]),
      self.new("\u{1f50d}", [:mag]),
      self.new("\u{1f50e}", [:mag_right]),
      self.new("\u{1f004}", [:mahjong]),
      self.new("\u{1f4eb}", [:mailbox]),
      self.new("\u{1f4ea}", [:mailbox_closed]),
      self.new("\u{1f4ec}", [:mailbox_with_mail]),
      self.new("\u{1f4ed}", [:mailbox_with_no_mail]),
      self.new("\u{1f45e}", [:mans_shoe, :shoe]),
      self.new("\u{1f356}", [:meat_on_bone]),
      self.new("\u{1f4e3}", [:mega]),
      self.new("\u{1f348}", [:melon]),
      self.new("\u{1f4dd}", [:memo, :pencil]),
      self.new("\u{1f3a4}", [:microphone]),
      self.new("\u{1f52c}", [:microscope]),
      self.new("\u{1f4bd}", [:minidisc]),
      self.new("\u{1f4b8}", [:money_with_wings]),
      self.new("\u{1f4b0}", [:moneybag]),
      self.new("\u{1f6b5}", [:mountain_bicyclist]),
      self.new("\u{1f3a5}", [:movie_camera]),
      self.new("\u{1f3b9}", [:musical_keyboard]),
      self.new("\u{1f3bc}", [:musical_score]),
      self.new("\u{1f507}", [:mute]),
      self.new("\u{1f4db}", [:name_badge]),
      self.new("\u{1f454}", [:necktie]),
      self.new("\u{1f4f0}", [:newspaper]),
      self.new("\u{1f515}", [:no_bell]),
      self.new("\u{1f4d3}", [:notebook]),
      self.new("\u{1f4d4}", [:notebook_with_decorative_cover]),
      self.new("\u{1f529}", [:nut_and_bolt]),
      self.new("\u{1f362}", [:oden]),
      self.new("\u{1f4c2}", [:open_file_folder]),
      self.new("\u{1f4d9}", [:orange_book]),
      self.new("\u{1f4e4}", [:outbox_tray]),
      self.new("\u{1f4c4}", [:page_facing_up]),
      self.new("\u{1f4c3}", [:page_with_curl]),
      self.new("\u{1f4df}", [:pager]),
      self.new("\u{1f4ce}", [:paperclip]),
      self.new("\u{1f351}", [:peach]),
      self.new("\u{1f350}", [:pear]),
      self.new("\u{270f}" , [:pencil2]),
      self.new("\u{260e}" , [:phone, :telephone]),
      self.new("\u{1f48a}", [:pill]),
      self.new("\u{1f34d}", [:pineapple]),
      self.new("\u{1f355}", [:pizza]),
      self.new("\u{1f4ef}", [:postal_horn]),
      self.new("\u{1f4ee}", [:postbox]),
      self.new("\u{1f45d}", [:pouch]),
      self.new("\u{1f357}", [:poultry_leg]),
      self.new("\u{1f4b7}", [:pound]),
      self.new("\u{1f45b}", [:purse]),
      self.new("\u{1f4cc}", [:pushpin]),
      self.new("\u{1f4fb}", [:radio]),
      self.new("\u{1f35c}", [:ramen]),
      self.new("\u{1f380}", [:ribbon]),
      self.new("\u{1f35a}", [:rice]),
      self.new("\u{1f359}", [:rice_ball]),
      self.new("\u{1f358}", [:rice_cracker]),
      self.new("\u{1f48d}", [:ring]),
      self.new("\u{1f3c9}", [:rugby_football]),
      self.new("\u{1f3bd}", [:running_shirt_with_sash]),
      self.new("\u{1f376}", [:sake]),
      self.new("\u{1f461}", [:sandal]),
      self.new("\u{1f4e1}", [:satellite]),
      self.new("\u{1f3b7}", [:saxophone]),
      self.new("\u{2702}" , [:scissors]),
      self.new("\u{1f4dc}", [:scroll]),
      self.new("\u{1f4ba}", [:seat]),
      self.new("\u{1f367}", [:shaved_ice]),
      self.new("\u{1f455}", [:shirt, :tshirt]),
      self.new("\u{1f6bf}", [:shower]),
      self.new("\u{1f3bf}", [:ski]),
      self.new("\u{1f6ac}", [:smoking]),
      self.new("\u{1f3c2}", [:snowboarder]),
      self.new("\u{26bd}" , [:soccer]),
      self.new("\u{1f509}", [:sound, :speaker_with_one_sound_wave]),
      self.new("\u{1f47e}", [:space_invader]),
      self.new("\u{2660}" , [:spades]),
      self.new("\u{1f35d}", [:spaghetti]),
      self.new("\u{1f50a}", [:speaker, :speaker_with_three_sound_waves]),
      self.new("\u{1f372}", [:stew]),
      self.new("\u{1f4cf}", [:straight_ruler]),
      self.new("\u{1f353}", [:strawberry]),
      self.new("\u{1f3c4}", [:surfer]),
      self.new("\u{1f363}", [:sushi]),
      self.new("\u{1f360}", [:sweet_potato]),
      self.new("\u{1f3ca}", [:swimmer]),
      self.new("\u{1f489}", [:syringe]),
      self.new("\u{1f389}", [:tada]),
      self.new("\u{1f38b}", [:tanabata_tree]),
      self.new("\u{1f34a}", [:tangerine]),
      self.new("\u{1f375}", [:tea]),
      self.new("\u{1f4de}", [:telephone_receiver]),
      self.new("\u{1f52d}", [:telescope]),
      self.new("\u{1f3be}", [:tennis]),
      self.new("\u{1f6bd}", [:toilet]),
      self.new("\u{1f345}", [:tomato]),
      self.new("\u{1f3a9}", [:tophat]),
      self.new("\u{1f4d0}", [:triangular_ruler]),
      self.new("\u{1f3c6}", [:trophy]),
      self.new("\u{1f379}", [:tropical_drink]),
      self.new("\u{1f3ba}", [:trumpet]),
      self.new("\u{1f4fa}", [:tv]),
      self.new("\u{1f513}", [:unlock]),
      self.new("\u{1f4fc}", [:vhs]),
      self.new("\u{1f4f9}", [:video_camera]),
      self.new("\u{1f3ae}", [:video_game]),
      self.new("\u{1f3bb}", [:violin]),
      self.new("\u{231a}" , [:watch]),
      self.new("\u{1f349}", [:watermelon]),
      self.new("\u{1f377}", [:wine_glass]),
      self.new("\u{1f45a}", [:womans_clothes]),
      self.new("\u{1f452}", [:womans_hat]),
      self.new("\u{1f527}", [:wrench]),
      self.new("\u{1f4b4}", [:yen]),
      self.new("\u{1f6CD}", [:shopping_bags], "SHOPPING BAGS"),
      self.new("\u{1f4ff}", [:prayer_beads], "PRAYER BEADS"),
      self.new("\u{1f336}", [:hot_pepper]),
      self.new("\u{1f9c0}", [:cheese_wedge]),
      self.new("\u{1f32d}", [:hot_dog, :hotdog]),
      self.new("\u{1f32e}", [:taco]),
      self.new("\u{1f32f}", [:burrito]),
      self.new("\u{1f37f}", [:popcorn]),
      self.new("\u{1f37e}", [:bottle_popping_cork, :champagne]),
      self.new("\u{1f3fa}", [:amphora]),
      self.new("\u{1f579}", [:joystick]),
      self.new("\u{1f3f9}", [:bow_arrow, :bow_and_arrow]),
      self.new("\u{1f5e1}", [:dagger_knife]),
      self.new("\u{1f3f3}", [:waving_white_flag]),
      self.new("\u{1f3f4}", [:waving_black_flag]),
      self.new("\u{1f6e2}", [:oil_drum]),
      self.new("\u{1f6e1}", [:shield]),
      self.new("\u{1f5dc}", [:compression]),
      self.new("\u{1f6e0}", [:hammer_wrench, :hammer_and_wrench]),
      self.new("\u{1f5dd}", [:old_key]),
      self.new("\u{1f5d1}", [:wastebasket]),
      self.new("\u{1f5c4}", [:file_cabinet]),
      self.new("\u{1f5c3}", [:card_file_box]),
      self.new("\u{1f587}", [:linked_paperclips]),
      self.new("\u{1f5d3}", [:spiral_calendar, :spiral_calendar_pad]),
      self.new("\u{1f5d2}", [:spiral_note_pad]),
      self.new("\u{1f5c2}", [:card_index_dividers]),
      self.new("\u{1f58d}", [:lower_left_crayon]),
      self.new("\u{1f58c}", [:lower_left_paintbrush]),
      self.new("\u{1f58a}", [:lower_left_ballpoint]),
      self.new("\u{1f58b}", [:lower_left_fountain]),
      self.new("\u{1f5f3}", [:ballot_box_with_ballot]),
      self.new("\u{1f5de}", [:rollet_newspaper]),
      self.new("\u{1f56f}", [:candle]),
      self.new("\u{1f4f8}", [:camera_flash, :camera_with_flash]),
      self.new("\u{1f4fd}", [:film_projector]),
      self.new("\u{1f5b2}", [:trackball]),
      self.new("\u{1f5b1}", [:three_button_mouse]),
      self.new("\u{1f5a8}", [:printer]),
      self.new("\u{1f4bb}", [:desktop_computer]),
      self.new("\u{1f39b}", [:control_knobs]),
      self.new("\u{1f39a}", [:level_slider]),
      self.new("\u{1f399}", [:studio_microphone]),
      self.new("\u{1f321}", [:thermometer]),
      self.new("\u{1f570}", [:mantelpiece_clock]),
      self.new("\u{1f6cb}", [:couch_lamp, :couch_and_lamp]),
      self.new("\u{1f6cf}", [:bed]),
      self.new("\u{1f6cc}", [:person_bed]),
      self.new("\u{1f6ce}", [:bellhop_bell]),
      self.new("\u{1f37d}", [:fork_knife_plate, :knife_fork_plate]),
      self.new("\u{2328}", [:keyboard], "KEYBOARD"),
      self.new("\u{23f1}", [:stopwatch], "STOPWATCH"),
      self.new("\u{23f2}", [:timer_clock], "TIMER CLOCK"),
      self.new("\u{2620}", [:skull_and_crossbones], "SKULL AND CROSSBONES"),
      self.new("\u{2692}", [:hammer_and_pick], "HAMMER AND PICK"),
      self.new("\u{2694}", [:crossed_swords], "CROSSED SWORDS"),
      self.new("\u{2696}", [:scales], "SCALES"),
      self.new("\u{2697}", [:alembic], "ALEMBIC"),
      self.new("\u{2699}", [:gear], "GEAR"),
      self.new("\u{26b0}", [:coffin], "COFFIN"),
      self.new("\u{26b1}", [:funeral_urn], "FUNERAL URN"),
      self.new("\u{26cf}", [:pick], "PICK"),
      self.new("\u{26d3}", [:chains], "CHAINS"),
      self.new("\u{26f1}", [:umbrella_on_ground], "UMBRELLA ON GROUND"),
      self.new("\u{1f3ee}", [:izakaya_lantern], "IZAKAYA LANTERN"),
      self.new("\u{1f4d6}", [:book], "OPEN BOOK"),
      self.new("\u{1f4e6}", [:package], "PACKAGE"),
      self.new("\u{1f4e9}", [:envelope_with_arrow], "ENVELOPE WITH DOWNWARDS ARROW ABOVE"),
      self.new("\u{1f58a}", [:lower_left_ballpoint_pen], "LOWER LEFT BALLPOINT PEN"),
      self.new("\u{1f58b}", [:lower_left_fountain_pen], "LOWER LEFT FOUNTAIN PEN"),
      self.new("\u{1f5de}", [:rolled_up_newspaper], "ROLLED-UP NEWSPAPER"),
      self.new("\u{1f396}", [:military_medal, :medal], "MILITARY MEDAL"),
      self.new("\u{1f3c5}", [:sports_medal], "SPORTS MEDAL"),
      self.new("\u{26f8}", [:ice_skate], "ICE SKATE"),
    ]
  end
end
