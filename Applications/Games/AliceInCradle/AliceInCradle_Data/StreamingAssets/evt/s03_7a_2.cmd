// 本読み
WAIT_MOVE
#MS '##'
HKDS	p CT #<primula> WIDE



// Alice was beginning to get very tired of sitting by her sister on the bank, and of having nothing to do: once or twice she had peeped into the book her sister was reading, but it had no pictures or conversations in it, “and what is the use of a book,” thought Alice “without pictures or conversations?”
MSG	p_04

PIC_FILL	&0 DARK
PIC_FADEIN	&0 60
WAIT 70
PIC_FADEOUT	&0 100
WAIT 30



// So she was considering in her own mind (as well as she could, for the hot day made her feel very sleepy and stupid), whether the pleasure of making a daisy-chain would be worth the trouble of getting up and picking the daisies, when suddenly a White Rabbit with pink eyes ran close by her.
MSG	p_05


// There was nothing so very remarkable in that; nor did Alice think it so very much out of the way to hear the Rabbit say to itself, “Oh dear! Oh dear! I shall be late!” (when she thought it over afterwards, it occurred to her that she ought to have wondered at this, but at the time it all seemed quite natural); but when the Rabbit actually took a watch out of its waistcoat-pocket, and looked at it, and then hurried on, Alice started to her feet, for it flashed across her mind that she had never before seen a rabbit with either a waistcoat-pocket, or a watch to take out of it, and burning with curiosity, she ran across the field after it, and fortunately was just in time to see it pop down a large rabbit-hole under the hedge.
MSG	p_06


PIC_FILL	&0 DARK
PIC_FADEIN	&0 60
WAIT 70
PIC_FADEOUT	&0 100
WAIT 30

// ～～～～
// However, this bottle was not marked “poison,” so Alice ventured to taste it, and finding it very nice, (it had, in fact, a sort of mixed flavour of cherry-tart, custard, pine-apple, roast turkey, toffee, and hot buttered toast,) she very soon finished it off.And so it was indeed: she was now only ten inches high, and her face brightened up at the thought that she was now the right size for going through the little door into that lovely garden. First, however, she waited for a few minutes to see if she was going to shrink any further: she felt a little nervous about this; “for it might end, you know,” said Alice to herself, “in my going out altogether, like a candle. I wonder what I should be like then?” And she tried to fancy what the flame of a candle is like after the candle is blown out, for she could not remember ever having seen such a thing.
MSG	p_07

PIC_FILL	&0 DARK
PIC_FADEIN	&0 60
WAIT 70
PIC_FADEOUT	&0 100
WAIT 30
// ～～～～～
// “He took me for his housemaid,” she said to herself as she ran. “How surprised he’ll be when he finds out who I am! But I’d better take him his fan and gloves—that is, if I can find them.” As she said this, she came upon a neat little house, on the door of which was a bright brass plate with the name “W. RABBIT,” engraved upon it. She went in without knocking, and hurried upstairs, in great fear lest she should meet the real Mary Ann, and be turned out of the house before she had found the fan and gloves.
MSG	p_08


PIC_FILL	&0 DARK
PIC_FADEIN	&0 60
WAIT 70
PIC_FADEOUT	&0 100
WAIT 30
// ～～～～
// “It was much pleasanter at home,” thought poor Alice, “when one wasn’t always growing larger and smaller, and being ordered about by mice and rabbits. I almost wish I hadn’t gone down that rabbit-hole—and yet—and yet—it’s rather curious, you know, this sort of life! I do wonder what can have happened to me! When I used to read fairy-tales, I fancied that kind of thing never happened, and now here I am in the middle of one! There ought to be a book written about me, that there ought! And when I grow up, I’ll write one—but I’m grown up now,” she added in a sorrowful tone; “at least there’s no room to grow up any more here.”
// ～～～～
MSG	p_09


PIC_FILL	&0 DARK
PIC_FADEIN	&0 60
WAIT 70
PIC_FADEOUT	&0 100
WAIT 30
MSG	p_09_2
// ～～～～
// “Hold your tongue!” said the Queen, turning purple.
// “I won’t!” said Alice.
// “Off with her head!” the Queen shouted at the top of her voice. Nobody moved.
// “Who cares for you?” said Alice, (she had grown to her full size by this time.) “You’re nothing but a pack of cards!”
// At this the whole pack rose up into the air, and came flying down upon her: she gave a little scream, half of fright and half of anger, and tried to beat them off, and found herself lying on the bank, with her head in the lap of her sister, who was gently brushing away some dead leaves that had fluttered down from the trees upon her face.
//“Wake up, Alice dear!” said her sister; “Why, what a long sleep you’ve had!”
//“Oh, I’ve had such a curious dream!” said Alice, and she told her sister, as well as she could remember them, all these strange Adventures of hers that you have just been reading about; and when she had finished, her sister kissed her, and said, “It was a curious dream, dear, certainly: but now run in to your tea; it’s getting late.” So Alice got up and ran off, thinking while she ran, as well she might, what a wonderful dream it had been.
WAIT 40

#< primula >
HKDS	p

#MS '##'
PIC   p p/a44__F2__f2__m1__b2_u0    
PIC   n a_1/a22__F1__f1__m1__b1__u0    
MSG	p_10

PIC   n a_1/a00L1R3__F1__f1__m3__b1_u0    
PIC_MP	n QUE 

MSG	n_11

PIC   p p/a15__F2__f2__m3__b1_u1    
MSG	p_12

PIC   p p/a25__F1__f1__m1__b2_u0    
MSG	p_12_2

PIC   n a_1/a00L3R3__F1__f1__m1__b2__uo    
MSG	n_13

PIC   p p/a11__F2__f2__m3__b1_u1    
MSG	p_14

PIC   n a_3/a0__F1__f3__m1__b4_u0    
MSG	n_15

PIC   p p/a12__F2__f2__m2__b1_u1    
MSG	p_16
PIC   p p/a31__F1__f1__m1__b2_ua    
MSG	p_16_2

PIC   n a_2/a0L1R3__F2__f2__m1__b4_u2    
PIC_MP  n SMK
MSG	n_17


LOAD_BGM	BGM_suzumusi 

STOP_BGM	200

PIC   p p/a11__F2__f2__m3__b1_u0    
MSG	p_18

PIC_HIDE_ALL	 

#MS 'P[walk_nobag] >+[-200,0:230]'
#MS_ % 'w20 P[bench~] w70 ## P[bench2stand~] w60 >+[-15,0: 70] P[stand_ev~]'
WAIT_MOVE
REPLACE_BGM	20 100 

GFC_SET_MX	PRM3 3 
PVV 10
QUEST_PROGRESS p002_primula 2

#VANISH primula
#VANISH 
#CMDRELOAD
AUTO_SAVE
