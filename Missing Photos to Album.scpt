FasdUAS 1.101.10   ��   ��    k             l      ��  ��   >8
		This script receives a file with a list of UUID of photos and
		compares those UUID with a set of selected photos in Photos.app.
		
		If the ID of a photo matches one of those in the file, the photo 
		os moved to a special album named by default "Photos Missing on Disk"
		
		The name is because I use it in conjunction to my python script that 
		search Photos Database and checks if the photo is present on Disk.
		IN my 110.000 photo library, I found out that 720 photos were missing 
		on disk (Photos.app mess).
		
		Made by Alex Ant�o.
		Please, Copyright. 
     � 	 	p 
 	 	 T h i s   s c r i p t   r e c e i v e s   a   f i l e   w i t h   a   l i s t   o f   U U I D   o f   p h o t o s   a n d 
 	 	 c o m p a r e s   t h o s e   U U I D   w i t h   a   s e t   o f   s e l e c t e d   p h o t o s   i n   P h o t o s . a p p . 
 	 	 
 	 	 I f   t h e   I D   o f   a   p h o t o   m a t c h e s   o n e   o f   t h o s e   i n   t h e   f i l e ,   t h e   p h o t o   
 	 	 o s   m o v e d   t o   a   s p e c i a l   a l b u m   n a m e d   b y   d e f a u l t   " P h o t o s   M i s s i n g   o n   D i s k " 
 	 	 
 	 	 T h e   n a m e   i s   b e c a u s e   I   u s e   i t   i n   c o n j u n c t i o n   t o   m y   p y t h o n   s c r i p t   t h a t   
 	 	 s e a r c h   P h o t o s   D a t a b a s e   a n d   c h e c k s   i f   t h e   p h o t o   i s   p r e s e n t   o n   D i s k . 
 	 	 I N   m y   1 1 0 . 0 0 0   p h o t o   l i b r a r y ,   I   f o u n d   o u t   t h a t   7 2 0   p h o t o s   w e r e   m i s s i n g   
 	 	 o n   d i s k   ( P h o t o s . a p p   m e s s ) . 
 	 	 
 	 	 M a d e   b y   A l e x   A n t � o . 
 	 	 P l e a s e ,   C o p y r i g h t .   
   
  
 l     ��������  ��  ��        l     ����  r         m        �   , P h o t o s   M i s s i n g   o n   D i s k  o      ���� 0 missingalbumname  ��  ��        l     ��������  ��  ��        l     ��  ��    ( " Ask the file containing the UUIDs     �   D   A s k   t h e   f i l e   c o n t a i n i n g   t h e   U U I D s      l   ; ����  Q    ;     k    (      ! " ! r     # $ # I   ���� %
�� .sysostdfalis    ��� null��   % �� &��
�� 
prmp & m   	 
 ' ' � ( ( N P l e a s e ,   s e l e c t   f i l e   w i t h   U U I D s   t o   c h e c k��   $ o      ���� 0 	uuidsfile 	uuidsFile "  ) * ) r     + , + I   �� -��
�� .rdwropenshor       file - o    ���� 0 	uuidsfile 	uuidsFile��   , o      ���� 0 uuidshandle uuidsHandle *  . / . r    " 0 1 0 n      2 3 2 2    ��
�� 
cpar 3 l    4���� 4 I   �� 5��
�� .rdwrread****        **** 5 o    ���� 0 uuidshandle uuidsHandle��  ��  ��   1 o      ���� 	0 uuids   /  6�� 6 I  # (�� 7��
�� .rdwrclosnull���     **** 7 o   # $���� 0 uuidshandle uuidsHandle��  ��    R      �� 8 9
�� .ascrerr ****      � **** 8 o      ���� 0 
errtexttwo 
errTexttwo 9 �� :��
�� 
errn : o      ���� 0 	errnumtwo 	errNumtwo��    I  0 ;�� ;��
�� .sysodlogaskr        TEXT ; b   0 7 < = < b   0 5 > ? > b   0 3 @ A @ m   0 1 B B � C C & C o u l d   n o t   o p e n   F i l e A o   1 2���� 0 	errnumtwo 	errNumtwo ? o   3 4��
�� 
ret  = o   5 6���� 0 
errtexttwo 
errTexttwo��  ��  ��     D E D l     ��������  ��  ��   E  F G F l     ��������  ��  ��   G  H I H l     �� J K��   J "  DEBUG: just print file read    K � L L 8   D E B U G :   j u s t   p r i n t   f i l e   r e a d I  M N M l  < E O���� O r   < E P Q P I  < A�� R��
�� .corecnte****       **** R o   < =���� 	0 uuids  ��   Q o      ���� 0 numuuids numUUIDs��  ��   N  S T S l  F [ U���� U I  F [�� V��
�� .ascrcmnt****      � **** V b   F W W X W b   F Q Y Z Y l  F M [���� [ c   F M \ ] \ l  F I ^���� ^ o   F I���� 0 numuuids numUUIDs��  ��   ] m   I L��
�� 
TEXT��  ��   Z m   M P _ _ � ` `    U U I D s   l i d o s :   X l  Q V a���� a c   Q V b c b l  Q R d���� d o   Q R���� 	0 uuids  ��  ��   c m   R U��
�� 
TEXT��  ��  ��  ��  ��   T  e f e l     ��������  ��  ��   f  g h g l     ��������  ��  ��   h  i j i l  \E k���� k O   \E l m l k   bD n n  o p o l  b b��������  ��  ��   p  q r q l  b l s t u s r   b l v w v l  b h x���� x e   b h y y 1   b h��
�� 
selc��  ��   w o      ���� 0 selectedphotos   t $  get selection from Photos.App    u � z z <   g e t   s e l e c t i o n   f r o m   P h o t o s . A p p r  { | { l  m m��������  ��  ��   |  } ~ } Q   m �  � �  l  p � � � � � k   p � � �  � � � Z   p � � ����� � l  p v ����� � =  p v � � � o   p s���� 0 selectedphotos   � J   s u����  ��  ��   � k   y � � �  � � � R   y �� ���
�� .ascrerr ****      � **** � m   { ~ � � � � � D P l e a s e   s e l e c t   s o m e   p h o t o s   t o   c h e c k��   �  ��� � L   � �����  ��  ��  ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � 6 0 select or create the Album, if it's not present    � � � � `   s e l e c t   o r   c r e a t e   t h e   A l b u m ,   i f   i t ' s   n o t   p r e s e n t �  ��� � Z   � � � ��� � � I  � ��� ���
�� .coredoexnull���     **** � 4   � ��� �
�� 
IPct � o   � ����� 0 missingalbumname  ��   � r   � � � � � 4   � ��� �
�� 
IPct � o   � ����� 0 missingalbumname   � o      ���� 0 missingalbum  ��   � r   � � � � � l  � � ����� � I  � ����� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   � ���
�� 
IPal � �� ���
�� 
naME � o   � ����� 0 missingalbumname  ��  ��  ��   � o      ���� 0 missingalbum  ��   �    create/open target album	    � � � � 4   c r e a t e / o p e n   t a r g e t   a l b u m 	 � R      �� � �
�� .ascrerr ****      � **** � o      ���� 0 
errtexttwo 
errTexttwo � �� ���
�� 
errn � o      �� 0 	errnumtwo 	errNumtwo��   � I  � ��~ ��}
�~ .sysodlogaskr        TEXT � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � �  E r r o r   o n   A l b u m   � o   � ��|�| 0 missingalbumname   � m   � � � � � � �  : � o   � ��{�{ 0 	errnumtwo 	errNumtwo � o   � ��z
�z 
ret  � o   � ��y�y 0 
errtexttwo 
errTexttwo�}   ~  � � � l  � ��x�w�v�x  �w  �v   �  � � � l  � ��u � ��u   � W Q check every photo selected and compares it to the list of UUIDs generated before    � � � � �   c h e c k   e v e r y   p h o t o   s e l e c t e d   a n d   c o m p a r e s   i t   t o   t h e   l i s t   o f   U U I D s   g e n e r a t e d   b e f o r e �  � � � X   �B ��t � � k   �= � �  � � � l  � ��s � ��s   �  log imageselected    � � � � " l o g   i m a g e s e l e c t e d �  � � � r   � � � � � n   � � � � � 1   � ��r
�r 
ID   � o   � ��q�q 0 imageselected   � o      �p�p 0 imageid   �  � � � r   � � � � � n   � � � � � 1   � ��o
�o 
filn � o   � ��n�n 0 imageselected   � o      �m�m 0 	imagename   �  � � � l  � ��l�k�j�l  �k  �j   �  ��i � Z   �= � ��h�g � E   � � � � o   � ��f�f 	0 uuids   � o   � �e�e 0 imageid   � k  9 � �  � � � I �d ��c
�d .ascrcmnt****      � **** � b   � � � b   � � � b   � � � m   � � � � �  	 A d d i n g   i m a g e   � o  
�b�b 0 	imagename   � m   � � � � �    t o   A l b u m � o  �a�a 0 missingalbumname  �c   �  ��` � Q  9 � � � � I &�_ � �
�_ .IPXSaddpnull���     **** � J   � �  ��^ � o  �]�] 0 imageselected  �^   � �\ ��[
�\ 
toAl � o  "�Z�Z 0 missingalbum  �[   � R      �Y � �
�Y .ascrerr ****      � **** � o      �X�X 0 
errtexttwo 
errTexttwo � �W ��V
�W 
errn � o      �U�U 0 	errnumtwo 	errNumtwo�V   � I .9�T ��S
�T .ascrcmnt****      � **** � b  .5 � � � m  .1 � � �    E r r o r   a d d i n g :   � o  14�R�R 0 imageid  �S  �`  �h  �g  �i  �t 0 imageselected   � o   � ��Q�Q 0 selectedphotos   � �P l CC�O�N�M�O  �N  �M  �P   m m   \ _z                                                                                  Phts  alis      	MACBOOKHD                      BD ����
Photos.app                                                     ����            ����  
 cu             Applications  /:Applications:Photos.app/   
 P h o t o s . a p p   	 M A C B O O K H D  Applications/Photos.app   / ��  ��  ��   j  l     �L�K�J�L  �K  �J    l     �I�H�G�I  �H  �G    l FJ	�F�E	 L  FJ

 m  FI �  D o n e�F  �E    l     �D�C�B�D  �C  �B   �A l     �@�?�>�@  �?  �>  �A       �=�=   �<
�< .aevtoappnull  �   � **** �;�:�9�8
�; .aevtoappnull  �   � **** k    J      M  S  i �7�7  �:  �9   �6�5�4�6 0 
errtexttwo 
errTexttwo�5 0 	errnumtwo 	errNumtwo�4 0 imageselected   / �3�2 '�1�0�/�.�-�,�+�*�) B�(�'�&�%�$ _�#�"�! �� ������� � ������ � ��� ��3 0 missingalbumname  
�2 
prmp
�1 .sysostdfalis    ��� null�0 0 	uuidsfile 	uuidsFile
�/ .rdwropenshor       file�. 0 uuidshandle uuidsHandle
�- .rdwrread****        ****
�, 
cpar�+ 	0 uuids  
�* .rdwrclosnull���     ****�) 0 
errtexttwo 
errTexttwo ���
� 
errn� 0 	errnumtwo 	errNumtwo�  
�( 
ret 
�' .sysodlogaskr        TEXT
�& .corecnte****       ****�% 0 numuuids numUUIDs
�$ 
TEXT
�# .ascrcmnt****      � ****
�" 
selc�! 0 selectedphotos  
�  
IPct
� .coredoexnull���     ****� 0 missingalbum  
� 
kocl
� 
IPal
� 
naME� 
� .corecrel****      � null
� 
cobj
� 
ID  � 0 imageid  
� 
filn� 0 	imagename  
� 
toAl
� .IPXSaddpnull���     ****�8K�E�O &*��l E�O�j E�O�j �-E�O�j W X  �%�%�%j O�j E` O_ a &a %�a &%j Oa  �*a ,EE` O K_ jv  )ja OhY hO*a �/j  *a �/E` Y *a a a �a   !E` W X  a "�%a #%�%�%�%j O o_ [a a $l kh �a %,E` &O�a ',E` (O�_ & :a )_ (%a *%�%j O �kva +_ l ,W X  a -_ &%j Y h[OY��OPUOa .ascr  ��ޭ