FasdUAS 1.101.10   ��   ��    k             x     
�� ����    2   ��
�� 
osax��      	  x   
 �� 
����   
 4    �� 
�� 
frmk  m       �    F o u n d a t i o n��   	     j    �� �� 0 nsstring NSString  N       n       o    ���� 0 nsstring NSString  m    ��
�� misccura      l     ��������  ��  ��        l    ����  O        k          l   ��������  ��  ��        l   ��   !��     5 / get the currently selected message or messages    ! � " " ^   g e t   t h e   c u r r e n t l y   s e l e c t e d   m e s s a g e   o r   m e s s a g e s   # $ # r    	 % & % 1    ��
�� 
CMgs & o      ���� $0 selectedmessages selectedMessages $  ' ( ' l  
 
��������  ��  ��   (  ) * ) l  
 
�� + ,��   + E ? if there are no messages selected, warn the user and then quit    , � - - ~   i f   t h e r e   a r e   n o   m e s s a g e s   s e l e c t e d ,   w a r n   t h e   u s e r   a n d   t h e n   q u i t *  . / . Z   
  0 1���� 0 =  
  2 3 2 o   
 ���� $0 selectedmessages selectedMessages 3 J    ����   1 k     4 4  5 6 5 I   �� 7 8
�� .sysodlogaskr        TEXT 7 m     9 9 � : : 0 P l e a s e   s e l e c t   a   m e s s a g e . 8 �� ;��
�� 
disp ; m    ���� ��   6  <�� < L    ����  ��  ��  ��   /  = > = l     ��������  ��  ��   >  ? @ ? l     �� A B��   A   select folder    B � C C    s e l e c t   f o l d e r @  D E D l     �� F G��   F E ? set folderName to quoted form of POSIX path of (choose folder)    G � H H ~   s e t   f o l d e r N a m e   t o   q u o t e d   f o r m   o f   P O S I X   p a t h   o f   ( c h o o s e   f o l d e r ) E  I J I r     ) K L K c     ' M N M l    % O���� O I    %������
�� .sysostflalis    ��� null��  ��  ��  ��   N m   % &��
�� 
TEXT L o      ���� 0 
foldername 
folderName J  P Q P l  * *��������  ��  ��   Q  R S R l  * *�� T U��   T a [ display dialog "Selected folder is:" & return & folderName buttons {"OK"} default button 1    U � V V �   d i s p l a y   d i a l o g   " S e l e c t e d   f o l d e r   i s : "   &   r e t u r n   &   f o l d e r N a m e   b u t t o n s   { " O K " }   d e f a u l t   b u t t o n   1 S  W X W l  * *��������  ��  ��   X  Y Z Y l  * *�� [ \��   [ %  save email messages one by one    \ � ] ] >   s a v e   e m a i l   m e s s a g e s   o n e   b y   o n e Z  ^ _ ^ X   * `�� a ` k   : b b  c d c e   : > e e n   : > f g f 1   ; =��
�� 
pALL g o   : ;���� 0 
themessage 
theMessage d  h i h I  ? F�� j��
�� .ascrcmnt****      � **** j 1   ? B��
�� 
pALL��   i  k l k l  G G�� m n��   m   get timestamp of message    n � o o 2   g e t   t i m e s t a m p   o f   m e s s a g e l  p q p r   G { r s r n  G J t u t 1   H J��
�� 
tims u o   G H���� 0 
themessage 
theMessage s K       v v �� w x
�� 
year w o      ���� 0 y   x �� y z
�� 
mnth y o      ���� 0 m   z �� { |
�� 
day  { o      ���� 0 d   | �� } ~
�� 
hour } o      ���� 0 h   ~ �� ��
�� 
min   o      ���� 0 min  ��   q  � � � r   | � � � � n   | � � � � 1   } ���
�� 
subj � o   | }���� 0 
themessage 
theMessage � o      ���� 0 thename theName �  � � � r   � � � � � l  � � ����� � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � �   � o   � ����� 0 y   � m   � � � � � � �  - � n  � � � � � I   � ��� ����� 0 pad   �  ��� � c   � � � � � o   � ����� 0 m   � m   � ���
�� 
long��  ��   �  f   � � � m   � � � � � � �  - � n  � � � � � I   � ��� ����� 0 pad   �  ��� � o   � ����� 0 d  ��  ��   �  f   � � � m   � � � � � � �  _ � n  � � � � � I   � ��� ����� 0 pad   �  ��� � o   � ����� 0 h  ��  ��   �  f   � � � n  � � � � � I   � ��� ����� 0 pad   �  ��� � o   � ����� 0 min  ��  ��   �  f   � ���  ��   � o      ���� 0 	timestamp 	timeStamp �  � � � r   � � � � � l  � � ����� � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � �   � o   � ����� 0 	timestamp 	timeStamp � m   � � � � � � �  _ � o   � ����� 0 thename theName��  ��   � o      ���� 0 filename fileName �  � � � l  � ��� � ���   � b \ display dialog "Selected file name is:" & return & fileName buttons {"OK"} default button 1    � � � � �   d i s p l a y   d i a l o g   " S e l e c t e d   f i l e   n a m e   i s : "   &   r e t u r n   &   f i l e N a m e   b u t t o n s   { " O K " }   d e f a u l t   b u t t o n   1 �  � � � l  � ��� � ���   � M G save theMessage in file (POSIX path of folderName & fileName & ".eml")    � � � � �   s a v e   t h e M e s s a g e   i n   f i l e   ( P O S I X   p a t h   o f   f o l d e r N a m e   &   f i l e N a m e   &   " . e m l " ) �  � � � r   � � � � � b   � � � � � b   � � � � � o   � ����� 0 
foldername 
folderName � l  � � ����� � n  � � � � � I   � ��� ����� 0 removestring removeString �  � � � m   � � � � � � �  : �  ��� � o   � ����� 0 filename fileName��  ��   �  f   � ���  ��   � m   � � � � � � �  . e m l � o      ���� 0 fullfilename fullFileName �  � � � l  � ��� � ���   � f ` display dialog "Selected file name is:" & return & fullFileName buttons {"OK"} default button 1    � � � � �   d i s p l a y   d i a l o g   " S e l e c t e d   f i l e   n a m e   i s : "   &   r e t u r n   &   f u l l F i l e N a m e   b u t t o n s   { " O K " }   d e f a u l t   b u t t o n   1 �  � � � l  �  � � � � I  � �� � �
�� .coresavenull���     obj  � o   � ����� 0 
themessage 
theMessage � �� ���
�� 
kfil � 4   � ��� �
�� 
file � o   � ����� 0 fullfilename fullFileName��   � - ' save the message to the desired folder    � � � � N   s a v e   t h e   m e s s a g e   t o   t h e   d e s i r e d   f o l d e r �  ��� � l  � � � � I �� ���
�� .coredelonull���     obj  � o  ���� 0 
themessage 
theMessage��   � 3 - puts the message in the Deleted Items folder    � � � � Z   p u t s   t h e   m e s s a g e   i n   t h e   D e l e t e d   I t e m s   f o l d e r��  �� 0 
themessage 
theMessage a o   - .���� $0 selectedmessages selectedMessages _  ��� � l ����~��  �  �~  ��    m      � ��                                                                                  OPIM  alis    J  
MacintosHD                     BD ����Microsoft Outlook.app                                          ����            ����  
 cu             Applications  %/:Applications:Microsoft Outlook.app/   ,  M i c r o s o f t   O u t l o o k . a p p   
 M a c i n t o s H D  "Applications/Microsoft Outlook.app  / ��  ��  ��     � � � l     �}�|�{�}  �|  �{   �  � � � l     �z � ��z   � + % add leading zeros to date components    � � � � J   a d d   l e a d i n g   z e r o s   t o   d a t e   c o m p o n e n t s �  �  � i      I      �y�x�y 0 pad   �w o      �v�v 0 n  �w  �x   L      n      7   �u	
�u 
ctxt m    	�t�t��	 m   
 �s�s�� l    
�r�q
 b      m      �  0 0 o    �p�p 0 n  �r  �q     l     �o�n�m�o  �n  �m    l     �l�l   #  remove character from string    � :   r e m o v e   c h a r a c t e r   f r o m   s t r i n g �k i   ! $ I      �j�i�j 0 removestring removeString  o      �h�h 0 remove_string   �g o      �f�f 0 source_string  �g  �i   k     "  r      !  n    
"#" I    
�e$�d�e &0 stringwithstring_ stringWithString_$ %�c% o    �b�b 0 source_string  �c  �d  # o     �a�a 0 nsstring NSString! o      �`�` 0 s_string s_String &'& r    ()( n   *+* I    �_,�^�_ &0 stringwithstring_ stringWithString_, -�]- o    �\�\ 0 remove_string  �]  �^  + o    �[�[ 0 nsstring NSString) o      �Z�Z 0 r_string r_String' .�Y. L    "// n   !010 I    !�X2�W�X d0 0stringbyreplacingoccurrencesofstring_withstring_ 0stringByReplacingOccurrencesOfString_withString_2 343 o    �V�V 0 r_string r_String4 5�U5 m    66 �77  �U  �W  1 o    �T�T 0 s_string s_String�Y  �k       �S89:;<=�S  8 �R�Q�P�O�N
�R 
pimr�Q 0 nsstring NSString�P 0 pad  �O 0 removestring removeString
�N .aevtoappnull  �   � ****9 �M>�M >  ?@? �LA�K
�L 
cobjA BB   �J
�J 
osax�K  @ �IC�H
�I 
cobjC DD   �G 
�G 
frmk�H  : EE �F�E
�F misccura�E 0 nsstring NSString; �D�C�BFG�A�D 0 pad  �C �@H�@ H  �?�? 0 n  �B  F �>�> 0 n  G �=�<
�= 
ctxt�<���A �%[�\[Z�\Zi2E< �;�:�9IJ�8�; 0 removestring removeString�: �7K�7 K  �6�5�6 0 remove_string  �5 0 source_string  �9  I �4�3�2�1�4 0 remove_string  �3 0 source_string  �2 0 s_string s_String�1 0 r_string r_StringJ �06�/�0 &0 stringwithstring_ stringWithString_�/ d0 0stringbyreplacingoccurrencesofstring_withstring_ 0stringByReplacingOccurrencesOfString_withString_�8 #b  �k+  E�Ob  �k+  E�O���l+ = �.L�-�,MN�+
�. .aevtoappnull  �   � ****L k    OO  �*�*  �-  �,  M �)�) 0 
themessage 
theMessageN - ��(�' 9�&�%�$�#�"�!� ���������������� � ��� � �� � �� �� ��
�	���
�( 
CMgs�' $0 selectedmessages selectedMessages
�& 
disp
�% .sysodlogaskr        TEXT
�$ .sysostflalis    ��� null
�# 
TEXT�" 0 
foldername 
folderName
�! 
kocl
�  
cobj
� .corecnte****       ****
� 
pALL
� .ascrcmnt****      � ****
� 
tims
� 
year� 0 y  
� 
mnth� 0 m  
� 
day � 0 d  
� 
hour� 0 h  
� 
min � 0 min  
� 
subj� 0 thename theName
� 
long� 0 pad  � 0 	timestamp 	timeStamp� 0 filename fileName� 0 removestring removeString�
 0 fullfilename fullFileName
�	 
kfil
� 
file
� .coresavenull���     obj 
� .coredelonull���     obj �+�*�,E�O�jv  ��kl OhY hO*j �&E�O ��[��l kh  ��,EO*�,j O��,E[�,E` Z[a ,E` Z[a ,E` Z[a ,E` Z[a ,E` ZO�a ,E` Oa _ %a %)_ a &k+ %a %)_ k+ %a  %)_ k+ %)_ k+ %E` !Oa "_ !%a #%_ %E` $O�)a %_ $l+ &%a '%E` (O�a )*a *_ (/l +O�j ,[OY�.OPUascr  ��ޭ