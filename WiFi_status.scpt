FasdUAS 1.101.10   ��   ��    k             l     ����  r       	  m      
 
 �   0 W i r e l e s s   N e t w o r k   U t i l i t y 	 o      ���� 0 appname appName��  ��        l    ����  r        J    ����    o      ���� 
0 values  ��  ��        l     ��������  ��  ��        l     ��������  ��  ��        l     ��  ��    @ :# check if any of supported USB WiFi adapter is plugged in     �   t #   c h e c k   i f   a n y   o f   s u p p o r t e d   U S B   W i F i   a d a p t e r   i s   p l u g g e d   i n      l  	  ����  r   	     l  	  ����  I  	 ��  ��
�� .sysoexecTEXT���     TEXT   m   	 
 ! ! � " " x / u s r / s b i n / s y s t e m _ p r o f i l e r   S P U S B D a t a T y p e   | g r e p   " 8 0 2 . 1 1 " | w c   - l��  ��  ��    o      ���� 0 plugged  ��  ��     # $ # l   ' %���� % Z    ' & '���� & =    ( ) ( c     * + * o    ���� 0 plugged   + m    ��
�� 
nmbr ) m    ����   ' k    # , ,  - . - r      / 0 / J     1 1  2 3 2 m     4 4 � 5 5  N o   A d a p t e r 3  6 7 6 m     8 8 � 9 9   7  :�� : m     ; ; � < <  ��   0 o      ���� 
0 values   .  =�� = L   ! # > > o   ! "���� 
0 values  ��  ��  ��  ��  ��   $  ? @ ? l     �� A B��   A F @# checks if application is already running and starts it in case    B � C C � #   c h e c k s   i f   a p p l i c a t i o n   i s   a l r e a d y   r u n n i n g   a n d   s t a r t s   i t   i n   c a s e @  D E D l  ( X F���� F Z   ( X G H���� G >  ( 0 I J I n   ( . K L K 1   , .��
�� 
prun L 4   ( ,�� M
�� 
capp M o   * +���� 0 appname appName J m   . /��
�� boovtrue H Q   3 T N O�� N k   6 K P P  Q R Q O   6 E S T S k   = D U U  V W V I  = B������
�� .aevtrappnull��� ��� null��  ��   W  X�� X l  C C�� Y Z��   Y  activate    Z � [ [  a c t i v a t e��   T 4   6 :�� \
�� 
capp \ o   8 9���� 0 appname appName R  ]�� ] I  F K�� ^��
�� .sysodelanull��� ��� nmbr ^ m   F G���� ��  ��   O R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  ��  ��   E  _ ` _ l     ��������  ��  ��   `  a b a l     �� c d��   c ^ X# retrieves {ConnectionStatus, SSID, SignalSTrength} values from  the application Window    d � e e � #   r e t r i e v e s   { C o n n e c t i o n S t a t u s ,   S S I D ,   S i g n a l S T r e n g t h }   v a l u e s   f r o m     t h e   a p p l i c a t i o n   W i n d o w b  f g f l  Y � h���� h Q   Y � i j�� i O   \ � k l k O   b � m n m k   k � o o  p q p r   k r r s r m   k l��
�� boovtrue s 1   l q��
�� 
pvis q  t u t l  s s�� v w��   v - 'return every UI element of front window    w � x x N r e t u r n   e v e r y   U I   e l e m e n t   o f   f r o n t   w i n d o w u  y z y l  s s�� { |��   { < 6return value of attribute "AXChildren" of UI element 2    | � } } l r e t u r n   v a l u e   o f   a t t r i b u t e   " A X C h i l d r e n "   o f   U I   e l e m e n t   2 z  ~  ~ l  s s�� � ���   � 6 0return value of every UI element of front window    � � � � ` r e t u r n   v a l u e   o f   e v e r y   U I   e l e m e n t   o f   f r o n t   w i n d o w   � � � l  s s�� � ���   � , &return entire contents of front window    � � � � L r e t u r n   e n t i r e   c o n t e n t s   o f   f r o n t   w i n d o w �  � � � l  s s��������  ��  ��   �  � � � l  s s�� � ���   �  # Connection    � � � �  #   C o n n e c t i o n �  � � � r   s � � � � b   s � � � � o   s t���� 
0 values   � J   t � � �  ��� � n   t � � � � 1   � ���
�� 
valL � n   t � � � � 4   � ��� �
�� 
sttx � m   � �����  � n   t � � � � 4   � ��� �
�� 
tabg � m   � �����  � n   t � � � � 4   | ��� �
�� 
cwin � o    ����� 0 appname appName � n   t | � � � 4   w |�� �
�� 
pcap � o   z {���� 0 appname appName � m   t w � ��                                                                                  sevs  alis    �  Mac HD                     �b �H+     9System Events.app                                               �f�2ۇ        ����  	                CoreServices    �b�      �2�w       9   -   ,  7Mac HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c   H D  -System/Library/CoreServices/System Events.app   / ��  ��   � o      ���� 
0 values   �  � � � l  � ��� � ���   �  # SSID    � � � �  #   S S I D �  � � � r   � � � � � b   � � � � � o   � ����� 
0 values   � J   � � � �  ��� � n   � � � � � 1   � ���
�� 
valL � n   � � � � � 4   � ��� �
�� 
sttx � m   � ����� 	 � n   � � � � � 4   � ��� �
�� 
tabg � m   � �����  � n   � � � � � 4   � ��� �
�� 
cwin � o   � ����� 0 appname appName � n   � � � � � 4   � ��� �
�� 
pcap � o   � ����� 0 appname appName � m   � � � ��                                                                                  sevs  alis    �  Mac HD                     �b �H+     9System Events.app                                               �f�2ۇ        ����  	                CoreServices    �b�      �2�w       9   -   ,  7Mac HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c   H D  -System/Library/CoreServices/System Events.app   / ��  ��   � o      ���� 
0 values   �  � � � l  � ��� � ���   �  #signal strength     � � � � " # s i g n a l   s t r e n g t h   �  � � � r   � � � � � b   � � � � � o   � ����� 
0 values   � J   � � � �  ��� � n   � � � � � 1   � ���
�� 
valL � n   � � � � � 4   � ��� �
�� 
sttx � m   � �����  � n   � � � � � 4   � ��� �
�� 
tabg � m   � �����  � n   � � � � � 4   � ��� �
�� 
cwin � o   � ����� 0 appname appName � n   � � � � � 4   � ��� �
�� 
pcap � o   � ����� 0 appname appName � m   � � � ��                                                                                  sevs  alis    �  Mac HD                     �b �H+     9System Events.app                                               �f�2ۇ        ����  	                CoreServices    �b�      �2�w       9   -   ,  7Mac HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c   H D  -System/Library/CoreServices/System Events.app   / ��  ��   � o      ���� 
0 values   �  � � � l  � ��� � ���   �    returns values as a tuple    � � � � 4   r e t u r n s   v a l u e s   a s   a   t u p l e �  ��� � L   � � � � o   � ����� 
0 values  ��   n 4   b h�� �
�� 
prcs � o   f g���� 0 appname appName l m   \ _ � ��                                                                                  sevs  alis    �  Mac HD                     �b �H+     9System Events.app                                               �f�2ۇ        ����  	                CoreServices    �b�      �2�w       9   -   ,  7Mac HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c   H D  -System/Library/CoreServices/System Events.app   / ��   j R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��   g  � � � l     ��������  ��  ��   �  ��� � l     ��������  ��  ��  ��       �� � ���   � �
� .aevtoappnull  �   � **** � �~ ��}�| � ��{
�~ .aevtoappnull  �   � **** � k     � � �   � �   � �   � �  # � �  D � �  f�z�z  �}  �|   �   �  
�y�x !�w�v�u 4 8 ;�t�s�r�q�p�o ��n�m�l�k�j�i�h�g�f�e�y 0 appname appName�x 
0 values  
�w .sysoexecTEXT���     TEXT�v 0 plugged  
�u 
nmbr
�t 
capp
�s 
prun
�r .aevtrappnull��� ��� null
�q .sysodelanull��� ��� nmbr�p  �o  
�n 
prcs
�m 
pvis
�l 
pcap
�k 
cwin
�j 
tabg
�i 
sttx�h 
�g 
valL�f 	�e �{ ��E�OjvE�O�j E�O��&j  ���mvE�O�Y hO*��/�,e & *��/ 	*j OPUOlj W X  hY hO �a  �*a �/ xe*a ,FO�a a �/a �/a k/a a /a ,kv%E�O�a a �/a �/a k/a a /a ,kv%E�O�a a �/a �/a k/a a /a ,kv%E�O�UUW X  hascr  ��ޭ