CREATE TABLE IF NOT EXISTS `cards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardType` varchar(12) DEFAULT NULL,
  `name` varchar(25) DEFAULT NULL,
  `cardNumber` varchar(12) DEFAULT NULL,
  `cardSuit` varchar(12) DEFAULT NULL,
  `image` varchar(25) DEFAULT NULL,
  `meaning` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `numbers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(12) DEFAULT NULL,
  `meaning` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `positions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) DEFAULT NULL,
  `meaning` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `suits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(12) DEFAULT NULL,
  `meaning` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(12) NOT NULL,
  `meaning` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (1,'Major Arcana','0 - The Fool',NULL,NULL,'tarot-fool.jpg','A new adventure begins. Take a leap of faith. Embrace all that lies ahead openly and without worry.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (2,'Major Arcana','1 - The Magician',NULL,NULL,'tarot-magician.jpg','Accept your unique gifts and talents. Realize that you have everything you need to get started.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (3,'Major Arcana','2 - The High Priestess',NULL,NULL,'tarot-highpriestess.jpg','Listen to your inner voice and instincts. Turn to yourself for guidance. Trust your intuition.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (4,'Major Arcana','3 - The Empress',NULL,NULL,'tarot-empress.jpg','Take in the abundance of the natural world around you. Nurture compassion, love, and beauty.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (5,'Major Arcana','4 - The Emperor',NULL,NULL,'tarot-emperor.jpg','Realize that all your past experiences have brought you to where you are. You have power over your life and what happens to it.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (6,'Major Arcana','5 - The Hierophant',NULL,NULL,'tarot-hierophant.jpg','Find a spiritual perspective to your journey. Earn respect and recognition by expanding your knowledge.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (7,'Major Arcana','6 - The Lovers',NULL,NULL,'tarot-lovers.jpg','Establish a personal belief system and strong values. Consider all possible consequences of your actions.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (8,'Major Arcana','7 - The Chariot',NULL,NULL,'tarot-chariot.jpg','Remember that determination comes from combining the knowledge of your mind, heart, and spirit.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (9,'Major Arcana','8 - Strength',NULL,NULL,'tarot-strength.jpg','Use not your physical strength, but the fortitude of your heart and your courage to handle what you are facing.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (10,'Major Arcana','9 - The Hermit',NULL,NULL,'tarot-hermit.jpg','Retreat from the noise of the world into a space of solitude in order to process what is happening in your life.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (11,'Major Arcana','10 - The Wheel of Fortune',NULL,NULL,'tarot-wheeloffortune.jpg','Be present in this moment. Know that nothing is permanent. Everything is constantly changing.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (12,'Major Arcana','11 - Justice',NULL,NULL,'tarot-justice.jpg','Make sure you act fairly in all your interactions because in the end we all get what we deserve.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (13,'Major Arcana','12 - The Hanged Man',NULL,NULL,'tarot-hangedman.jpg','Look at your situation from a different perspective. Let go of what is no longer working for you.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (14,'Major Arcana','13 - Death',NULL,NULL,'tarot-death.jpg','Make peace with the permanent ending of an aspect of your life to make way for something new.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (15,'Major Arcana','14 - Temperance',NULL,NULL,'tarot-temperance.jpg','Practice moderation and patience. Go with the flow of life and do not try to force its direction.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (16,'Major Arcana','15 - The Devil',NULL,NULL,'tarot-devil.jpg','Let go of your inhibitions. You may have been fooled into thinking you are trapped, but this is a lie.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (17,'Major Arcana','16 - The Tower',NULL,NULL,'tarot-tower.jpg','Accept the crumbling of established structures. It means they can be rebuilt to last longer.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (18,'Major Arcana','17 - The Star',NULL,NULL,'tarot-star.jpg','Take this time to heal and to regain optimism, faith, and inspiration. You are on the right track.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (19,'Major Arcana','18 - The Moon',NULL,NULL,'tarot-moon.jpg','Address any thoughts, feelings, doubts, and fears that may be coming from your subconscious.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (20,'Major Arcana','19 - The Sun',NULL,NULL,'tarot-sun.jpg','Appreciate all the happiness, joy, and vitality that surrounds you. Things are working well for you.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (21,'Major Arcana','20 - Judgment',NULL,NULL,'tarot-judgment.jpg','Review your past and present actions. Ensure that they are in line with were you want to go.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (22,'Major Arcana','21 - The World',NULL,NULL,'tarot-world.jpg','Your journey is complete. You have a greater understanding of who you are and you are ready for the next adventure.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (23,'Minor Arcana',NULL,'Ace','Swords','tarot-swords-01.jpg','You have been presented with a vision, an ideal that will guide you through a new endeavor. Use it well.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (24,'Minor Arcana',NULL,'Two','Swords','tarot-swords-02.jpg','You must find a way to reconcile two or more conflicting ideas to arrive at a harmonious place. Gather as much information as you can.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (25,'Minor Arcana',NULL,'Three','Swords','tarot-swords-03.jpg','Experience and understand your pain. Do not avoid it. This will give you strenght, truth, and growth.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (26,'Minor Arcana',NULL,'Four','Swords','tarot-swords-04.jpg','Give yourself a break. Take some time to rest and contemplate so that you can move forward stonger.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (27,'Minor Arcana',NULL,'Five','Swords','tarot-swords-05.jpg','Pick your battles. Ask yourself if the gain is worth the loss or if you have what it takes to fight it.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (28,'Minor Arcana',NULL,'Six','Swords','tarot-swords-06.jpg','You are walking away from a difficult situation. It has left you in pain, but at least it is over and you can move on.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (29,'Minor Arcana',NULL,'Seven','Swords','tarot-swords-07.jpg','Working smart can be better than working hard. Just make sure you are not taking too many shortcuts or always choosing the easy way out.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (30,'Minor Arcana',NULL,'Eight','Swords','tarot-swords-08.jpg','You are stuck, but there is a way out. You are not seeing it because your mindset is blocking you.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (31,'Minor Arcana',NULL,'Nine','Swords','tarot-swords-09.jpg','Worrying and obsessing over your concerns will not solve anything. You will only lose yourself to anxiety and waste precious energy.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (32,'Minor Arcana',NULL,'Ten','Swords','tarot-swords-10.jpg','This feels like a tragic loss. The worst has happened and you have hit rock bottom. The only way you can go now is up.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (33,'Minor Arcana',NULL,'Page','Swords','tarot-swords-11.jpg','Do your research. Use all the information available to you to come up with a clear plan to move forward in your new pursuit.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (34,'Minor Arcana',NULL,'Knight','Swords','tarot-swords-12.jpg','After all that research, you have made up your mind and now act on it without question. Does that make you steadfast or stubborn?');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (35,'Minor Arcana',NULL,'Queen','Swords','tarot-swords-13.jpg','You are an independent thinker and know exactly what you want. Be strong and stand up for all that you are. ');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (36,'Minor Arcana',NULL,'King','Swords','tarot-swords-14.jpg','Approach life in an objective and logical way. Your experience has given you enough knowledge and wisdom to see the truth.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (37,'Minor Arcana',NULL,'Ace','Cups','tarot-cups-01.jpg','Open your heart to an endless source of fresh feelings. Let them guide you in a new direction.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (38,'Minor Arcana',NULL,'Two','Cups','tarot-cups-02.jpg','Work towards a relationship of mutual understanding and deep connection. A partnership of equals.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (39,'Minor Arcana',NULL,'Three','Cups','tarot-cups-03.jpg','Celebrate the kindred spirits in your life. There are great benefits to belonging to a group of like-minded people.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (40,'Minor Arcana',NULL,'Four','Cups','tarot-cups-04.jpg','You are dissatisfied with life and longing for a change. If only you would look araound and see all the opportunities withing your reach.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (41,'Minor Arcana',NULL,'Five','Cups','tarot-cups-05.jpg','You feel regret over a loss or an unfavorable outcome. Learn from this, move on, and focus on what you still have.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (42,'Minor Arcana',NULL,'Six','Cups','tarot-cups-06.jpg','See the world throught the eyes of a young, innocent person. Be open to new possibilities and see the magic in the present moment.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (43,'Minor Arcana',NULL,'Seven','Cups','tarot-cups-07.jpg','You are being presented with many choices. Do not base your decisions on wishful thinking or illusions.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (44,'Minor Arcana',NULL,'Eight','Cups','tarot-cups-08.jpg','Walk away from unfulfilling circumstances. There will be heartache, but you will now be moving toward what you have been missing.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (45,'Minor Arcana',NULL,'Nine','Cups','tarot-cups-09.jpg','Celebrate a personal victory, even if nobody else is thare to share in your success. Use this as fuel for further accomplishments.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (46,'Minor Arcana',NULL,'Ten','Cups','tarot-cups-10.jpg','You are surrounded with joy and celebration. You are loved and have a strong emotional safety net. Your actions are supported.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (47,'Minor Arcana',NULL,'Page','Cups','tarot-cups-11.jpg','You are embarking on a new emotional or creative phase. Open yourself to love, compassion, and imagination.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (48,'Minor Arcana',NULL,'Knight','Cups','tarot-cups-12.jpg','Use your charm and romanticism to turn your dreams into reality. Balance idealism with practicality.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (49,'Minor Arcana',NULL,'Queen','Cups','tarot-cups-13.jpg','Trust your inner feelings. Treat others with compassion, love, and support.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (50,'Minor Arcana',NULL,'King','Cups','tarot-cups-14.jpg','Work through your emotions to undertand and master them. An aware heart will make your mind more powerful.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (51,'Minor Arcana',NULL,'Ace','Wands','tarot-wands-01.jpg','A fateful event will inspire you to take a bold step towards a new goal.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (52,'Minor Arcana',NULL,'Two','Wands','tarot-wands-02.jpg','Assess your options and plan a course of action before you launch forward.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (53,'Minor Arcana',NULL,'Three','Wands','tarot-wands-03.jpg','Look for opportunities with an open mind. Trust your ideas and abilities. Think big and be patient.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (54,'Minor Arcana',NULL,'Four','Wands','tarot-wands-04.jpg','Celebrate a milestone. You and your team have built the foundation for something great to come.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (55,'Minor Arcana',NULL,'Five','Wands','tarot-wands-05.jpg','Competition is about challenging yourself while learning from others, not about proving you are better than everyone else.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (56,'Minor Arcana',NULL,'Six','Wands','tarot-wands-06.jpg','Take pride in yourrecent victory. Remember to give credit to all those who helped you succeed.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (57,'Minor Arcana',NULL,'Seven','Wands','tarot-wands-07.jpg','Assert yourself. If your cause is worthy, you must stand my your convictions. Believe that you can make a difference.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (58,'Minor Arcana',NULL,'Eight','Wands','tarot-wands-08.jpg','Events are unfolding quickly. You cannot control what is happening. Instead you can take quick action and make changes in order to keep up with these events.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (59,'Minor Arcana',NULL,'Nine','Wands','tarot-wands-09.jpg','You must continue despite fatigue. You are battered, but not defeated. You are alone in this fight.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (60,'Minor Arcana',NULL,'Ten','Wands','tarot-wands-10.jpg','You have reached the end, but you have struggled to get here and now you are exhausted. Maybe next time you should not carry so much all at once. ');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (61,'Minor Arcana',NULL,'Page','Wands','tarot-wands-11.jpg','Explore your interests and find what lights your fire. You are in the early stages of developing your power.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (62,'Minor Arcana',NULL,'Knight','Wands','tarot-wands-12.jpg','You live wholheartedly and passionately, fearing no consequence. Temper your intensity with direction and common sense.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (63,'Minor Arcana',NULL,'Queen','Wands','tarot-wands-13.jpg','Self-assurance and charisma will draw people to your side and lead you to your ambitious goals.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (64,'Minor Arcana',NULL,'King','Wands','tarot-wands-14.jpg','You have found a way to make your passions sustainable. Creating new adventures is second nature to you.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (65,'Minor Arcana',NULL,'Ace','Pentacles','tarot-pentacles-01.jpg','You have been presented with a seed. If you use your talents to carefully tend to it, the seed will grow into a beautiful garden.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (66,'Minor Arcana',NULL,'Two','Pentacles','tarot-pentacles-02.jpg','Keep the balance between conflicting demands. Juggling requires constant movement, flexibility, and adaptation.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (67,'Minor Arcana',NULL,'Three','Pentacles','tarot-pentacles-03.jpg','Turn your great vision into a real masterpiece through planning, collaboration, and dedication.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (68,'Minor Arcana',NULL,'Four','Pentacles','tarot-pentacles-04.jpg','Material security comes from strictly managing your resources and possesions, but do not become too attached to them.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (69,'Minor Arcana',NULL,'Five','Pentacles','tarot-pentacles-05.jpg','After a setback, instant gratification and comfort may need to be sacrificed in order to find stability again.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (70,'Minor Arcana',NULL,'Six','Pentacles','tarot-pentacles-06.jpg','Pay it forward. You have been given plenty of support in the past, and now it is your turn to be generous.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (71,'Minor Arcana',NULL,'Seven','Pentacles','tarot-pentacles-07.jpg','Finish what you started. Have patience and be confident that your efforts will soon pay off. Do not give in to frustration.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (72,'Minor Arcana',NULL,'Eight','Pentacles','tarot-pentacles-08.jpg','Master your craft. Put in the time and effort to refine your skills. A job done well is better than a job done fast.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (73,'Minor Arcana',NULL,'Nine','Pentacles','tarot-pentacles-09.jpg','Reward yourself for your hard work with some R&R. Remember what it took to reach this level of independence and security.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (74,'Minor Arcana',NULL,'Ten','Pentacles','tarot-pentacles-10.jpg','In this ending, you are the head of your estate. You have accomplished financial security, but you also have a tight-knit community that will keep your work alive through generations.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (75,'Minor Arcana',NULL,'Page','Pentacles','tarot-pentacles-11.jpg','Prepare and educate yourself on how to increase your fortune in order to advance and sustain your future.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (76,'Minor Arcana',NULL,'Knight','Pentacles','tarot-pentacles-12.jpg','Commit to your work and your efforts will be rewarded. See the bigger picture and plan for the future, even if that means moving at a slow but steady pace.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (77,'Minor Arcana',NULL,'Queen','Pentacles','tarot-pentacles-13.jpg','Use your good sense and vast resources to educate and empower others. Guide them with compassion and discipline.');
INSERT INTO `cards` (`id`,`cardType`,`name`,`cardNumber`,`cardSuit`,`image`,`meaning`) VALUES (78,'Minor Arcana',NULL,'King','Pentacles','tarot-pentacles-14.jpg','Gain personal and financial maturity by taking the most reliable path. Work methodically to build the life you want.');

INSERT INTO `numbers` (`id`,`name`,`meaning`) VALUES (1,'Ace','Opportunities and potential.');
INSERT INTO `numbers` (`id`,`name`,`meaning`) VALUES (2,'Two','Choices and balance.');
INSERT INTO `numbers` (`id`,`name`,`meaning`) VALUES (3,'Three','Growth and development.');
INSERT INTO `numbers` (`id`,`name`,`meaning`) VALUES (4,'Four','Structure and stability.');
INSERT INTO `numbers` (`id`,`name`,`meaning`) VALUES (5,'Five','Conflict and loss.');
INSERT INTO `numbers` (`id`,`name`,`meaning`) VALUES (6,'Six','Comfort and healing.');
INSERT INTO `numbers` (`id`,`name`,`meaning`) VALUES (7,'Seven','Decisions and reassessment.');
INSERT INTO `numbers` (`id`,`name`,`meaning`) VALUES (8,'Eight','Movement and adaptation.');
INSERT INTO `numbers` (`id`,`name`,`meaning`) VALUES (9,'Nine','Solitude and reflection.');
INSERT INTO `numbers` (`id`,`name`,`meaning`) VALUES (10,'Ten','Completion and renewal.');
INSERT INTO `numbers` (`id`,`name`,`meaning`) VALUES (11,'Page','Invitation to a new personal journey.');
INSERT INTO `numbers` (`id`,`name`,`meaning`) VALUES (12,'Knight','Relentless pursuit of a goal.');
INSERT INTO `numbers` (`id`,`name`,`meaning`) VALUES (13,'Queen','Deeper understanding of yourself and others.');
INSERT INTO `numbers` (`id`,`name`,`meaning`) VALUES (14,'King','Having full control over an aspect of yourself.');

INSERT INTO `positions` (`id`,`name`,`meaning`) VALUES (1,'The Present','Your current state of mind and being regarding the situation.');
INSERT INTO `positions` (`id`,`name`,`meaning`) VALUES (2,'The Challenge','An immediate challenge that, if resolved, would make the situation easier.');
INSERT INTO `positions` (`id`,`name`,`meaning`) VALUES (3,'The Past','Events that have led up to the present situation.');
INSERT INTO `positions` (`id`,`name`,`meaning`) VALUES (4,'The Future','Next step on the journey. What is likely to occur in the near future.');
INSERT INTO `positions` (`id`,`name`,`meaning`) VALUES (5,'Above','The goal that you must work toward as you attempt to resolve the situation.');
INSERT INTO `positions` (`id`,`name`,`meaning`) VALUES (6,'Below','Underlying feelings and trends associated with the situation.');
INSERT INTO `positions` (`id`,`name`,`meaning`) VALUES (7,'Advice','Recommendation for how you should approach and address the current situation.');
INSERT INTO `positions` (`id`,`name`,`meaning`) VALUES (8,'External influences','Forces outside your control that will affect the outcome.');
INSERT INTO `positions` (`id`,`name`,`meaning`) VALUES (9,'Hopes and fears','Secret desire, personal demon, or something you suspect is true.');
INSERT INTO `positions` (`id`,`name`,`meaning`) VALUES (10,'Outcome','What you should expect in the end if you continue down your current course of action. This can change, but only if you make the necessary adjustments.');

INSERT INTO `suits` (`id`,`name`,`meaning`) VALUES (1,'Swords','Intellect, solutions, truth.');
INSERT INTO `suits` (`id`,`name`,`meaning`) VALUES (2,'Cups','Emotions, relationships, soul.');
INSERT INTO `suits` (`id`,`name`,`meaning`) VALUES (3,'Wands','Passion, energy, action.');
INSERT INTO `suits` (`id`,`name`,`meaning`) VALUES (4,'Pentacles','Material and physical world.');

INSERT INTO `types` (`id`,`name`,`meaning`) VALUES (1,'Major Arcana','The bigger picture of your life and its long-term direction.');
INSERT INTO `types` (`id`,`name`,`meaning`) VALUES (2,'Minor Arcana','Everyday actions and decisions you must face.');