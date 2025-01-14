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
 l     ��������  ��  ��        l     ��  ��    ' !-- Helper Function - SPLIT STRING     �   B - -   H e l p e r   F u n c t i o n   -   S P L I T   S T R I N G      i         I      �� ���� 0 splitstring splitString      o      ���� 0 mystring     ��  o      ���� 0 	delimiter  ��  ��    k            r         n        1    ��
�� 
txdl  1     ��
�� 
ascr  o      ���� 0 olddelimiters oldDelimiters     !   r     " # " o    ���� 0 	delimiter   # n      $ % $ 1    
��
�� 
txdl % 1    ��
�� 
ascr !  & ' & r     ( ) ( n     * + * 2    ��
�� 
citm + o    ���� 0 mystring   ) o      ���� 0 retorno   '  , - , l   �� . /��   . " set retorno to word mystring    / � 0 0 8 s e t   r e t o r n o   t o   w o r d   m y s t r i n g -  1 2 1 r     3 4 3 o    ���� 0 olddelimiters oldDelimiters 4 n      5 6 5 1    ��
�� 
txdl 6 1    ��
�� 
ascr 2  7�� 7 L     8 8 o    ���� 0 retorno  ��     9 : 9 l     ��������  ��  ��   :  ; < ; l     �� = >��   = V P--------------------------------------------------------------------------------    > � ? ? � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - <  @ A @ l     �� B C��   B T N Ask the file containing the UUIDs (CSV: version_uuid, master_uuid, imagePath)    C � D D �   A s k   t h e   f i l e   c o n t a i n i n g   t h e   U U I D s   ( C S V :   v e r s i o n _ u u i d ,   m a s t e r _ u u i d ,   i m a g e P a t h ) A  E F E l    7 G���� G Q     7 H I J H k    $ K K  L M L r     N O N I   
���� P
�� .sysostdfalis    ��� null��   P �� Q��
�� 
prmp Q m     R R � S S N P l e a s e ,   s e l e c t   f i l e   w i t h   U U I D s   t o   c h e c k��   O o      ���� 0 	uuidsfile 	uuidsFile M  T U T r     V W V I   �� X��
�� .rdwropenshor       file X o    ���� 0 	uuidsfile 	uuidsFile��   W o      ���� 0 uuidshandle uuidsHandle U  Y Z Y r     [ \ [ n     ] ^ ] 2   ��
�� 
cpar ^ l    _���� _ I   �� `��
�� .rdwrread****        **** ` o    ���� 0 uuidshandle uuidsHandle��  ��  ��   \ o      ���� 0 uuidscsv uuidsCSV Z  a�� a I   $�� b��
�� .rdwrclosnull���     **** b o     ���� 0 uuidshandle uuidsHandle��  ��   I R      �� c d
�� .ascrerr ****      � **** c o      ���� 0 
errtexttwo 
errTexttwo d �� e��
�� 
errn e o      ���� 0 	errnumtwo 	errNumtwo��   J I  , 7�� f��
�� .sysodlogaskr        TEXT f b   , 3 g h g b   , 1 i j i b   , / k l k m   , - m m � n n & C o u l d   n o t   o p e n   F i l e l o   - .���� 0 	errnumtwo 	errNumtwo j o   / 0��
�� 
ret  h o   1 2���� 0 
errtexttwo 
errTexttwo��  ��  ��   F  o p o l     ��������  ��  ��   p  q r q l     ��������  ��  ��   r  s t s l     �� u v��   u 3 - get only the MasterUUID from CSV for a while    v � w w Z   g e t   o n l y   t h e   M a s t e r U U I D   f r o m   C S V   f o r   a   w h i l e t  x y x l  8 < z���� z r   8 < { | { J   8 :����   | o      ���� 	0 uuids  ��  ��   y  } ~ } l  = � ����  X   = � ��� � � k   Q � � �  � � � r   Q [ � � � l  Q W ����� � e   Q W � � n   Q W � � � 1   R V��
�� 
leng � l  Q R ����� � o   Q R���� 	0 linha  ��  ��  ��  ��   � o      ���� 0 linhalenght linhaLenght �  � � � l  \ \��������  ��  ��   �  ��� � Z   \ � � ����� � ?   \ c � � � n   \ a � � � 1   ] a��
�� 
leng � o   \ ]���� 	0 linha   � m   a b����   � k   f  � �  � � � r   f s � � � n  f o � � � I   g o�� ����� 0 splitstring splitString �  � � � o   g h���� 	0 linha   �  ��� � m   h k � � � � �  ,��  ��   �  f   f g � o      ���� 0 linha_items   �  ��� � l  t  � � � � s   t  � � � n   t | � � � 4  w |�� �
�� 
cobj � m   z {����  � o   t w���� 0 linha_items   � l      ����� � n       � � �  ;   } ~ � o   | }���� 	0 uuids  ��  ��   �  version_uuids    � � � �  v e r s i o n _ u u i d s��  ��  ��  ��  �� 	0 linha   � o   @ A���� 0 uuidscsv uuidsCSV��  ��   ~  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � V P--------------------------------------------------------------------------------    � � � � � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - �  � � � l  � � ����� � r   � � � � � m   � � � � � � � , P h o t o s   M i s s i n g   o n   D i s k � o      ���� 0 defaultalbumname  ��  ��   �  � � � l  � � ����� � r   � � � � � I  � ��� � �
�� .sysodlogaskr        TEXT � m   � � � � � � � : A l b u m   n a m e   t o   c o p y   p h o t o s   t o : � �� ���
�� 
dtxt � o   � ����� 0 defaultalbumname  ��   � o      ���� 0 resposta  ��  ��   �  � � � l  � � ����� � r   � � � � � n   � � � � � 1   � ���
�� 
ttxt � o   � ����� 0 resposta   � o      ���� 0 missingalbumname  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     � � ��   � V P--------------------------------------------------------------------------------    � � � � � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - �  � � � l     �~ � ��~   � "  DEBUG: just print file read    � � � � 8   D E B U G :   j u s t   p r i n t   f i l e   r e a d �  � � � l  � � ��}�| � r   � � � � � I  � ��{ ��z
�{ .corecnte****       **** � o   � ��y�y 	0 uuids  �z   � o      �x�x 0 numuuids numUUIDs�}  �|   �  � � � l  � � ��w�v � I  � ��u ��t
�u .ascrcmnt****      � **** � b   � � � � � b   � � � � � m   � � � � � � �  F o u n d   � l  � � ��s�r � c   � � � � � l  � � ��q�p � o   � ��o�o 0 numuuids numUUIDs�q  �p   � m   � ��n
�n 
TEXT�s  �r   � m   � � � � � � �    U U I D s . . .�t  �w  �v   �  � � � l     �m � ��m   � I Clog ((numUUIDs) as string) & " UUIDs lidos: " & ((uuids) as string)    � � � � � l o g   ( ( n u m U U I D s )   a s   s t r i n g )   &   "   U U I D s   l i d o s :   "   &   ( ( u u i d s )   a s   s t r i n g ) �  � � � l     �l�k�j�l  �k  �j   �  � � � l     �i � ��i   � V P--------------------------------------------------------------------------------    � � � � � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - �  � � � l  �� ��h�g � O   �� �  � k   ��  l  � ��f�e�d�f  �e  �d    I  � ��c�b
�c .ascrcmnt****      � **** m   � � � F R e c e i v i n g   s e l e c t i o n   f r o m   P h o t o s . a p p�b   	
	 l  � � r   � � l  � ��a�` e   � � 1   � ��_
�_ 
selc�a  �`   o      �^�^ 0 selectedphotos   $  get selection from Photos.App    � <   g e t   s e l e c t i o n   f r o m   P h o t o s . A p p
  r   � � I  � ��]�\
�] .corecnte****       **** o   � ��[�[ 0 selectedphotos  �\   o      �Z�Z 0 numselected    I  ��Y�X
�Y .ascrcmnt****      � **** b   � � l  � ��W�V c   � � l  � � �U�T  o   � ��S�S 0 numselected  �U  �T   m   � ��R
�R 
TEXT�W  �V   m   � �!! �""     p h o t o s   s e l e c t e d�X   #$# l �Q�P�O�Q  �P  �O  $ %&% Q  z'()' l ]*+,* k  ]-- ./. Z  01�N�M0 l 2�L�K2 = 343 o  �J�J 0 selectedphotos  4 J  
�I�I  �L  �K  1 k  55 676 R  �H8�G
�H .ascrerr ****      � ****8 m  99 �:: D P l e a s e   s e l e c t   s o m e   p h o t o s   t o   c h e c k�G  7 ;�F; L  �E�E  �F  �N  �M  / <=< l �D�C�B�D  �C  �B  = >?> l �A@A�A  @ 6 0 select or create the Album, if it's not present   A �BB `   s e l e c t   o r   c r e a t e   t h e   A l b u m ,   i f   i t ' s   n o t   p r e s e n t? CDC I '�@E�?
�@ .ascrcmnt****      � ****E b  #FGF m  HH �II & D e s t i n a t i o n   A l b u m :  G o  "�>�> 0 missingalbumname  �?  D J�=J Z  (]KL�<MK I (4�;N�:
�; .coredoexnull���     ****N 4  (0�9O
�9 
IPctO o  ,/�8�8 0 missingalbumname  �:  L r  7CPQP 4  7?�7R
�7 
IPctR o  ;>�6�6 0 missingalbumname  Q o      �5�5 0 missingalbum  �<  M r  F]STS l FYU�4�3U I FY�2�1V
�2 .corecrel****      � null�1  V �0WX
�0 
koclW m  JM�/
�/ 
IPalX �.Y�-
�. 
naMEY o  PS�,�, 0 missingalbumname  �-  �4  �3  T o      �+�+ 0 missingalbum  �=  +    create/open target album	   , �ZZ 4   c r e a t e / o p e n   t a r g e t   a l b u m 	( R      �*[\
�* .ascrerr ****      � ****[ o      �)�) 0 
errtexttwo 
errTexttwo\ �(]�'
�( 
errn] o      �&�& 0 	errnumtwo 	errNumtwo�'  ) I ez�%^�$
�% .sysodlogaskr        TEXT^ b  ev_`_ b  etaba b  ercdc b  epefe b  elghg m  ehii �jj  E r r o r   o n   A l b u m  h o  hk�#�# 0 missingalbumname  f m  lokk �ll  :d o  pq�"�" 0 	errnumtwo 	errNumtwob o  rs�!
�! 
ret ` o  tu� �  0 
errtexttwo 
errTexttwo�$  & mnm l {{����  �  �  n opo l {{����  �  �  p qrq l {{�st�  s W Q check every photo selected and compares it to the list of UUIDs generated before   t �uu �   c h e c k   e v e r y   p h o t o   s e l e c t e d   a n d   c o m p a r e s   i t   t o   t h e   l i s t   o f   U U I D s   g e n e r a t e d   b e f o r er vwv X  {�x�yx k  ��zz {|{ l ���}~�  }  log imageselected   ~ � " l o g   i m a g e s e l e c t e d| ��� r  ����� n  ����� 1  ���
� 
ID  � o  ���� 0 imageselected  � o      �� 0 imageid  � ��� r  ����� n  ����� 1  ���
� 
filn� o  ���� 0 imageselected  � o      �� 0 	imagename  � ��� l ������  �  �  � ��� l ������  � 1 +if imageid is "b94siLhPTEKxnguwpfbG9w" then   � ��� V i f   i m a g e i d   i s   " b 9 4 s i L h P T E K x n g u w p f b G 9 w "   t h e n� ��� l ������  � 1 +	log "Found " & imagename & " - " & imageid   � ��� V 	 l o g   " F o u n d   "   &   i m a g e n a m e   &   "   -   "   &   i m a g e i d� ��� l ������  �  end if   � ���  e n d   i f� ��� l ���
�	��
  �	  �  � ��� l ������  � 3 -log "Checking " & imagename & " - " & imageid   � ��� Z l o g   " C h e c k i n g   "   &   i m a g e n a m e   &   "   -   "   &   i m a g e i d� ��� l ������  �  �  � ��� Z  ������� E  ����� o  ��� �  	0 uuids  � o  ������ 0 imageid  � k  ���� ��� I �������
�� .ascrcmnt****      � ****� b  ����� b  ����� b  ����� m  ���� ��� 4 - - - - - - - - - - - 	   A d d i n g   i m a g e  � o  ������ 0 	imagename  � m  ���� ���    t o   A l b u m� o  ������ 0 missingalbumname  ��  � ���� Q  ������ I ������
�� .IPXSaddpnull���     ****� J  ���� ���� o  ������ 0 imageselected  ��  � �����
�� 
toAl� o  ������ 0 missingalbum  ��  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 
errtexttwo 
errTexttwo� �����
�� 
errn� o      ���� 0 	errnumtwo 	errNumtwo��  � I �������
�� .ascrcmnt****      � ****� b  ����� m  ���� ��� 2 X X X X X X X X X X   E r r o r   a d d i n g :  � o  ������ 0 imageid  ��  ��  �  �  �  � 0 imageselected  y o  ~����� 0 selectedphotos  w ���� l ����������  ��  ��  ��    m   � ���z                                                                                  Phts  alis      	MACBOOKHD                      BD ����
Photos.app                                                     ����            ����  
 cu             Applications  /:Applications:Photos.app/   
 P h o t o s . a p p   	 M A C B O O K H D  Applications/Photos.app   / ��  �h  �g   � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l �������� L  ���� m  ���� ���  D o n e��  ��  � ��� l     ��������  ��  ��  � ���� l     ��������  ��  ��  ��       �������  � ������ 0 splitstring splitString
�� .aevtoappnull  �   � ****� �� ���������� 0 splitstring splitString�� ����� �  ������ 0 mystring  �� 0 	delimiter  ��  � ���������� 0 mystring  �� 0 	delimiter  �� 0 olddelimiters oldDelimiters�� 0 retorno  � ������
�� 
ascr
�� 
txdl
�� 
citm�� ��,E�O���,FO��-E�O���,FO�� �����������
�� .aevtoappnull  �   � ****� k    ���  E��  x��  }��  ���  ���  ���  ���  ���  ��� �����  ��  ��  � ���������� 0 
errtexttwo 
errTexttwo�� 0 	errnumtwo 	errNumtwo�� 	0 linha  �� 0 imageselected  � ?�� R������������������� m���������������� ����� ��� ����������� ��� ����������!9H��������������ik����������������
�� 
prmp
�� .sysostdfalis    ��� null�� 0 	uuidsfile 	uuidsFile
�� .rdwropenshor       file�� 0 uuidshandle uuidsHandle
�� .rdwrread****        ****
�� 
cpar�� 0 uuidscsv uuidsCSV
�� .rdwrclosnull���     ****�� 0 
errtexttwo 
errTexttwo� ������
�� 
errn�� 0 	errnumtwo 	errNumtwo��  
�� 
ret 
�� .sysodlogaskr        TEXT�� 	0 uuids  
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
leng�� 0 linhalenght linhaLenght�� 0 splitstring splitString�� 0 linha_items  �� 0 defaultalbumname  
�� 
dtxt�� 0 resposta  
�� 
ttxt�� 0 missingalbumname  �� 0 numuuids numUUIDs
�� 
TEXT
�� .ascrcmnt****      � ****
�� 
selc�� 0 selectedphotos  �� 0 numselected  
�� 
IPct
�� .coredoexnull���     ****�� 0 missingalbum  
�� 
IPal
�� 
naME�� 
�� .corecrel****      � null
�� 
ID  �� 0 imageid  
�� 
filn�� 0 	imagename  
�� 
toAl
�� .IPXSaddpnull���     ****��� &*��l E�O�j E�O�j �-E�O�j 	W X 
 �%�%�%j OjvE�O J�[a a l kh �a ,EE` O�a ,j )�a l+ E` O_ a k/�6GY h[OY��Oa E` Oa a _ l E` O_ a ,E` O�j E` Oa  _ a !&%a "%j #Oa $a %j #O*a &,EE` 'O_ 'j E` (O_ (a !&a )%j #O ]_ 'jv  )ja *OhY hOa +_ %j #O*a ,_ /j - *a ,_ /E` .Y *a a /a 0_ a 1 2E` .W X 
 a 3_ %a 4%�%�%�%j O q_ '[a a l kh �a 5,E` 6O�a 7,E` 8O�_ 6 <a 9_ 8%a :%_ %j #O �kva ;_ .l <W X 
 a =_ 6%j #Y h[OY��OPUOa >ascr  ��ޭ