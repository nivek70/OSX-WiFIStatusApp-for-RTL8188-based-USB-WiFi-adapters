FasdUAS 1.101.10   ��   ��    k             l     ����  r       	  m      
 
 �   0 W i r e l e s s   N e t w o r k   U t i l i t y 	 o      ���� 0 appname appName��  ��        l     ��������  ��  ��        l     ��  ��    D ># check if any USB WiFi adapter is plugged in, otherwise exits     �   | #   c h e c k   i f   a n y   U S B   W i F i   a d a p t e r   i s   p l u g g e d   i n ,   o t h e r w i s e   e x i t s      l    ����  r        l   	 ����  I   	�� ��
�� .sysoexecTEXT���     TEXT  m       �   x / u s r / s b i n / s y s t e m _ p r o f i l e r   S P U S B D a t a T y p e   | g r e p   " 8 0 2 . 1 1 " | w c   - l��  ��  ��    o      ���� 0 plugged  ��  ��     ��  l   ����  Z     ��    =    ! " ! c     # $ # o    ���� 0 plugged   $ m    ��
�� 
nmbr " m    ����    k    / % %  & ' & I   !�� ( )
�� .sysodlogaskr        TEXT ( m     * * � + + > N o   s u p p o r t e d   W i F i   a d a p t e r   f o u n d ) �� , -
�� 
appr , m     . . � / / . W i F i   C o n f i g u r a t i o n   T o o l - �� 0 1
�� 
btns 0 J     2 2  3�� 3 m     4 4 � 5 5  O K��   1 �� 6��
�� 
givu 6 m    ���� ��   '  7 8 7 I  " '�� 9��
�� .sysodelanull��� ��� nmbr 9 m   " #���� ��   8  : ; : I  ( -������
�� .aevtquitnull��� ��� null��  ��   ;  <�� < l  . .��������  ��  ��  ��  ��     k   2 = =  > ? > l  2 2��������  ��  ��   ?  @ A @ l  2 2��������  ��  ��   A  B C B l  2 2�� D E��   D 0 *if application appName is not running then    E � F F T i f   a p p l i c a t i o n   a p p N a m e   i s   n o t   r u n n i n g   t h e n C  G H G Q   2 S I J�� I O   5 J K L K k   > I M M  N O N I  > C������
�� .aevtrappnull��� ��� null��  ��   O  P�� P I  D I������
�� .miscactvnull��� ��� null��  ��  ��   L 4   5 ;�� Q
�� 
capp Q o   9 :���� 0 appname appName J R      ������
�� .ascrerr ****      � ****��  ��  ��   H  R S R l  T T�� T U��   T  end if    U � V V  e n d   i f S  W X W l  T T��������  ��  ��   X  Y Z Y O   T g [ \ [ r   Z f ] ^ ] m   Z [��
�� boovtrue ^ n       _ ` _ 1   a e��
�� 
pisf ` 4   [ a�� a
�� 
prcs a o   _ `���� 0 appname appName \ m   T W b b�                                                                                  sevs  alis    �  OS X HD Internal           ԉ��H+   ��System Events.app                                               �.�2ۇ        ����  	                CoreServices    ԉ��      �2�w     �� ��   w  AOS X HD Internal:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p  "  O S   X   H D   I n t e r n a l  -System/Library/CoreServices/System Events.app   / ��   Z  c d c l  h h��������  ��  ��   d  e f e l  h h�� g h��   g ) ## centers the windows on the screen    h � i i F #   c e n t e r s   t h e   w i n d o w s   o n   t h e   s c r e e n f  j k j O   h l m l k   n n n  o p o O   n � q r q k   t � s s  t u t l  t t�� v w��   v ' !# gets the current size of screen    w � x x B #   g e t s   t h e   c u r r e n t   s i z e   o f   s c r e e n u  y z y r   t � { | { n   t � } ~ } 1   } ���
�� 
pbnd ~ n   t }  �  m   y }��
�� 
cwin � 1   t y��
�� 
desk | J       � �  � � � o      ���� 0 posx   �  � � � o      ���� 0 posy   �  � � � o      ���� 0 screenwidth screenWidth �  ��� � o      ���� 0 screenheight screenHeight��   z  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � 6 0# gets the sizeof WiFi Configuration Tool window    � � � � ` #   g e t s   t h e   s i z e o f   W i F i   C o n f i g u r a t i o n   T o o l   w i n d o w �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
ptsz � n   � � � � � 4   � ��� �
�� 
cwin � o   � ����� 0 appname appName � 4   � ��� �
�� 
prcs � o   � ����� 0 appname appName � J       � �  � � � o      ���� 0 windowwidth windowWidth �  ��� � o      ���� 0 windowheight windowHeight��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � 5 /# sets the new position of window, centering it    � � � � ^ #   s e t s   t h e   n e w   p o s i t i o n   o f   w i n d o w ,   c e n t e r i n g   i t �  ��� � r   � � � � � J   � � � �  � � � l  � � ����� � ^   � � � � � l  � � ����� � \   � � � � � o   � ����� 0 screenwidth screenWidth � o   � ����� 0 windowwidth windowWidth��  ��   � m   � ����� ��  ��   �  ��� � l  � � ����� � ^   � � � � � l  � � ����� � \   � � � � � o   � ����� 0 screenheight screenHeight � o   � ����� 0 windowheight windowHeight��  ��   � m   � ����� ��  ��  ��   � o      ���� 0 newposition newPosition��   r m   n q � ��                                                                                  MACS  alis    �  OS X HD Internal           ԉ��H+   ��
Finder.app                                                      ���u�        ����  	                CoreServices    ԉ��      �u��     �� ��   w  :OS X HD Internal:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p  "  O S   X   H D   I n t e r n a l  &System/Library/CoreServices/Finder.app  / ��   p  � � � l  � ���������  ��  ��   �  ��� � r   � � � � o   � ����� 0 newposition newPosition � n       � � � 1   ��
�� 
posn � n   �  � � � 4   � �� �
�� 
cwin � o   � ����� 0 appname appName � 4   � ��� �
�� 
prcs � o   � ����� 0 appname appName��   m m   h k � ��                                                                                  sevs  alis    �  OS X HD Internal           ԉ��H+   ��System Events.app                                               �.�2ۇ        ����  	                CoreServices    ԉ��      �2�w     �� ��   w  AOS X HD Internal:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p  "  O S   X   H D   I n t e r n a l  -System/Library/CoreServices/System Events.app   / ��   k  ��� � l ��������  ��  ��  ��  ��  ��  ��       �� � ���   � �
� .aevtoappnull  �   � **** � �~ ��}�| � ��{
�~ .aevtoappnull  �   � **** � k     � �   � �   � �  �z�z  �}  �|   �   � ' 
�y �x�w�v *�u .�t 4�s�r�q�p�o�n�m�l�k�j b�i�h ��g�f�e�d�c�b�a�`�_�^�]�\�[�Z�y 0 appname appName
�x .sysoexecTEXT���     TEXT�w 0 plugged  
�v 
nmbr
�u 
appr
�t 
btns
�s 
givu�r 
�q .sysodlogaskr        TEXT
�p .sysodelanull��� ��� nmbr
�o .aevtquitnull��� ��� null
�n 
capp
�m .aevtrappnull��� ��� null
�l .miscactvnull��� ��� null�k  �j  
�i 
prcs
�h 
pisf
�g 
desk
�f 
cwin
�e 
pbnd
�d 
cobj�c 0 posx  �b 0 posy  �a 0 screenwidth screenWidth�` �_ 0 screenheight screenHeight
�^ 
ptsz�] 0 windowwidth windowWidth�\ 0 windowheight windowHeight�[ 0 newposition newPosition
�Z 
posn�{	�E�O�j E�O��&j   �����kv�m� Okj O*j OPY � *a �/ *j O*j UW X  hOa  e*a �/a ,FUOa  �a  ~*a ,a ,a ,E[a k/E` Z[a l/E` Z[a m/E` Z[a a  /E` !ZO*a �/a �/a ",E[a k/E` #Z[a l/E` $ZO_ _ #l!_ !_ $l!lvE` %UO_ %*a �/a �/a &,FUOP ascr  ��ޭ