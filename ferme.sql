PGDMP      .                |           ferme    16.1    16.1 P    <           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            =           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            >           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16414    ferme    DATABASE     x   CREATE DATABASE ferme WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'French_France.1252';
    DROP DATABASE ferme;
                postgres    false            �            1259    16415    animal    TABLE     K  CREATE TABLE public.animal (
    id_animal integer NOT NULL,
    espece character varying,
    race character varying,
    nom character varying,
    datenaiss date,
    sexe character varying,
    statut character varying,
    date_enre date,
    date_vente date,
    date_dec date,
    age integer,
    poids double precision
);
    DROP TABLE public.animal;
       public         heap    postgres    false            @           0    0    TABLE animal    ACL     ,   GRANT ALL ON TABLE public.animal TO PUBLIC;
          public          postgres    false    215            �            1259    16422    animal_id_animal_seq    SEQUENCE     �   ALTER TABLE public.animal ALTER COLUMN id_animal ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.animal_id_animal_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    215            A           0    0    SEQUENCE animal_id_animal_seq    ACL     =   GRANT ALL ON SEQUENCE public.animal_id_animal_seq TO PUBLIC;
          public          postgres    false    216            �            1259    16607 
   calendrier    TABLE     �   CREATE TABLE public.calendrier (
    id_calendrier integer NOT NULL,
    id_plante integer,
    activite character varying,
    date_debut date,
    date_fin date,
    description character varying
);
    DROP TABLE public.calendrier;
       public         heap    postgres    false            B           0    0    TABLE calendrier    ACL     0   GRANT ALL ON TABLE public.calendrier TO PUBLIC;
          public          postgres    false    229            �            1259    16619    calendrier_id_calendrier_seq    SEQUENCE     �   ALTER TABLE public.calendrier ALTER COLUMN id_calendrier ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.calendrier_id_calendrier_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    229            C           0    0 %   SEQUENCE calendrier_id_calendrier_seq    ACL     E   GRANT ALL ON SEQUENCE public.calendrier_id_calendrier_seq TO PUBLIC;
          public          postgres    false    230            �            1259    16588    culture    TABLE     C  CREATE TABLE public.culture (
    id_cultiver integer NOT NULL,
    code_parcelle integer,
    id_plante integer,
    date_plantation date,
    date_production date,
    date_recolte date,
    produit_kg double precision,
    nb_planter double precision,
    surface_c double precision,
    resultat_c character varying
);
    DROP TABLE public.culture;
       public         heap    postgres    false            D           0    0    TABLE culture    ACL     -   GRANT ALL ON TABLE public.culture TO PUBLIC;
          public          postgres    false    227            �            1259    16606    culture_id_cultiver_seq    SEQUENCE     �   ALTER TABLE public.culture ALTER COLUMN id_cultiver ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.culture_id_cultiver_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    227            E           0    0     SEQUENCE culture_id_cultiver_seq    ACL     @   GRANT ALL ON SEQUENCE public.culture_id_cultiver_seq TO PUBLIC;
          public          postgres    false    228            �            1259    16633    fermier    TABLE       CREATE TABLE public.fermier (
    matricule integer NOT NULL,
    nom character varying,
    prenom character varying,
    mail character varying,
    mdp character varying[],
    nom_exp character varying,
    taille_exp double precision,
    localisation character varying
);
    DROP TABLE public.fermier;
       public         heap    postgres    false            F           0    0    TABLE fermier    ACL     -   GRANT ALL ON TABLE public.fermier TO PUBLIC;
          public          postgres    false    233            �            1259    16640    fermier_matricule_seq    SEQUENCE     �   ALTER TABLE public.fermier ALTER COLUMN matricule ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.fermier_matricule_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    233            G           0    0    SEQUENCE fermier_matricule_seq    ACL     >   GRANT ALL ON SEQUENCE public.fermier_matricule_seq TO PUBLIC;
          public          postgres    false    234            �            1259    16489    parcelle    TABLE     �   CREATE TABLE public.parcelle (
    code_parcelle integer NOT NULL,
    latitude double precision,
    longitude double precision,
    type_sol character varying,
    type_culture_avant character varying,
    surface double precision
);
    DROP TABLE public.parcelle;
       public         heap    postgres    false            H           0    0    TABLE parcelle    ACL     .   GRANT ALL ON TABLE public.parcelle TO PUBLIC;
          public          postgres    false    223            �            1259    16496    parcelle_code_parcelle_seq    SEQUENCE     �   ALTER TABLE public.parcelle ALTER COLUMN code_parcelle ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.parcelle_code_parcelle_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    223            I           0    0 #   SEQUENCE parcelle_code_parcelle_seq    ACL     C   GRANT ALL ON SEQUENCE public.parcelle_code_parcelle_seq TO PUBLIC;
          public          postgres    false    224            �            1259    16498    plante    TABLE     �   CREATE TABLE public.plante (
    id_plante integer NOT NULL,
    type_plante character varying,
    variete character varying,
    description character varying,
    nbr_plante double precision
);
    DROP TABLE public.plante;
       public         heap    postgres    false            J           0    0    TABLE plante    ACL     ,   GRANT ALL ON TABLE public.plante TO PUBLIC;
          public          postgres    false    225            �            1259    16505    plante_id_plante_seq    SEQUENCE     �   ALTER TABLE public.plante ALTER COLUMN id_plante ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.plante_id_plante_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    225            K           0    0    SEQUENCE plante_id_plante_seq    ACL     =   GRANT ALL ON SEQUENCE public.plante_id_plante_seq TO PUBLIC;
          public          postgres    false    226            �            1259    16481 
   production    TABLE     �   CREATE TABLE public.production (
    id_prod integer NOT NULL,
    type_produit character varying,
    espece character varying,
    mois integer,
    kpi double precision,
    id_produit integer
);
    DROP TABLE public.production;
       public         heap    postgres    false            L           0    0    TABLE production    ACL     0   GRANT ALL ON TABLE public.production TO PUBLIC;
          public          postgres    false    221            �            1259    16488    production_id_prod_seq    SEQUENCE     �   ALTER TABLE public.production ALTER COLUMN id_prod ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.production_id_prod_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    221            M           0    0    SEQUENCE production_id_prod_seq    ACL     ?   GRANT ALL ON SEQUENCE public.production_id_prod_seq TO PUBLIC;
          public          postgres    false    222            �            1259    16436    produit    TABLE     �   CREATE TABLE public.produit (
    id_produit integer NOT NULL,
    type_produit character varying,
    quantite real,
    qualite integer,
    date_prod date,
    especef character varying
);
    DROP TABLE public.produit;
       public         heap    postgres    false            N           0    0    TABLE produit    ACL     -   GRANT ALL ON TABLE public.produit TO PUBLIC;
          public          postgres    false    219            �            1259    16463    produit_id_produit_seq    SEQUENCE     �   ALTER TABLE public.produit ALTER COLUMN id_produit ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.produit_id_produit_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    219            O           0    0    SEQUENCE produit_id_produit_seq    ACL     ?   GRANT ALL ON SEQUENCE public.produit_id_produit_seq TO PUBLIC;
          public          postgres    false    220            �            1259    16423    sante    TABLE     F  CREATE TABLE public.sante (
    id_sante integer NOT NULL,
    id_animal integer,
    vaccin boolean,
    date_vacc date,
    vermifuge boolean,
    date_verm date,
    maladie character varying,
    blessure character varying,
    traitement character varying,
    date_trait date,
    etat integer,
    gestation boolean
);
    DROP TABLE public.sante;
       public         heap    postgres    false            P           0    0    TABLE sante    ACL     +   GRANT ALL ON TABLE public.sante TO PUBLIC;
          public          postgres    false    217            �            1259    16435    sante_id_sante_seq    SEQUENCE     �   ALTER TABLE public.sante ALTER COLUMN id_sante ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.sante_id_sante_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    217            Q           0    0    SEQUENCE sante_id_sante_seq    ACL     ;   GRANT ALL ON SEQUENCE public.sante_id_sante_seq TO PUBLIC;
          public          postgres    false    218            �            1259    16620    stade_p    TABLE     �   CREATE TABLE public.stade_p (
    id_stade integer NOT NULL,
    id_cultiver integer,
    etape character varying,
    date_debut date,
    date_fin date,
    besoin_e double precision
);
    DROP TABLE public.stade_p;
       public         heap    postgres    false            R           0    0    TABLE stade_p    ACL     -   GRANT ALL ON TABLE public.stade_p TO PUBLIC;
          public          postgres    false    231            �            1259    16632    stade_P_id_stade_seq    SEQUENCE     �   ALTER TABLE public.stade_p ALTER COLUMN id_stade ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."stade_P_id_stade_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    231            S           0    0    SEQUENCE "stade_P_id_stade_seq"    ACL     ?   GRANT ALL ON SEQUENCE public."stade_P_id_stade_seq" TO PUBLIC;
          public          postgres    false    232            &          0    16415    animal 
   TABLE DATA           �   COPY public.animal (id_animal, espece, race, nom, datenaiss, sexe, statut, date_enre, date_vente, date_dec, age, poids) FROM stdin;
    public          postgres    false    215   
Y       4          0    16607 
   calendrier 
   TABLE DATA           k   COPY public.calendrier (id_calendrier, id_plante, activite, date_debut, date_fin, description) FROM stdin;
    public          postgres    false    229   gZ       2          0    16588    culture 
   TABLE DATA           �   COPY public.culture (id_cultiver, code_parcelle, id_plante, date_plantation, date_production, date_recolte, produit_kg, nb_planter, surface_c, resultat_c) FROM stdin;
    public          postgres    false    227   Q[       8          0    16633    fermier 
   TABLE DATA           g   COPY public.fermier (matricule, nom, prenom, mail, mdp, nom_exp, taille_exp, localisation) FROM stdin;
    public          postgres    false    233   �[       .          0    16489    parcelle 
   TABLE DATA           m   COPY public.parcelle (code_parcelle, latitude, longitude, type_sol, type_culture_avant, surface) FROM stdin;
    public          postgres    false    223   �[       0          0    16498    plante 
   TABLE DATA           Z   COPY public.plante (id_plante, type_plante, variete, description, nbr_plante) FROM stdin;
    public          postgres    false    225   D\       ,          0    16481 
   production 
   TABLE DATA           Z   COPY public.production (id_prod, type_produit, espece, mois, kpi, id_produit) FROM stdin;
    public          postgres    false    221   �\       *          0    16436    produit 
   TABLE DATA           b   COPY public.produit (id_produit, type_produit, quantite, qualite, date_prod, especef) FROM stdin;
    public          postgres    false    219   �]       (          0    16423    sante 
   TABLE DATA           �   COPY public.sante (id_sante, id_animal, vaccin, date_vacc, vermifuge, date_verm, maladie, blessure, traitement, date_trait, etat, gestation) FROM stdin;
    public          postgres    false    217   \^       6          0    16620    stade_p 
   TABLE DATA           _   COPY public.stade_p (id_stade, id_cultiver, etape, date_debut, date_fin, besoin_e) FROM stdin;
    public          postgres    false    231   :_       T           0    0    animal_id_animal_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.animal_id_animal_seq', 28, true);
          public          postgres    false    216            U           0    0    calendrier_id_calendrier_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.calendrier_id_calendrier_seq', 10, true);
          public          postgres    false    230            V           0    0    culture_id_cultiver_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.culture_id_cultiver_seq', 7, true);
          public          postgres    false    228            W           0    0    fermier_matricule_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.fermier_matricule_seq', 1, false);
          public          postgres    false    234            X           0    0    parcelle_code_parcelle_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.parcelle_code_parcelle_seq', 7, true);
          public          postgres    false    224            Y           0    0    plante_id_plante_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.plante_id_plante_seq', 8, true);
          public          postgres    false    226            Z           0    0    production_id_prod_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.production_id_prod_seq', 17, true);
          public          postgres    false    222            [           0    0    produit_id_produit_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.produit_id_produit_seq', 19, true);
          public          postgres    false    220            \           0    0    sante_id_sante_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.sante_id_sante_seq', 26, true);
          public          postgres    false    218            ]           0    0    stade_P_id_stade_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."stade_P_id_stade_seq"', 6, true);
          public          postgres    false    232            ~           2606    16421    animal animal_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.animal
    ADD CONSTRAINT animal_pkey PRIMARY KEY (id_animal);
 <   ALTER TABLE ONLY public.animal DROP CONSTRAINT animal_pkey;
       public            postgres    false    215            �           2606    16613    calendrier calendrier_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.calendrier
    ADD CONSTRAINT calendrier_pkey PRIMARY KEY (id_calendrier);
 D   ALTER TABLE ONLY public.calendrier DROP CONSTRAINT calendrier_pkey;
       public            postgres    false    229            �           2606    16594    culture culture_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.culture
    ADD CONSTRAINT culture_pkey PRIMARY KEY (id_cultiver);
 >   ALTER TABLE ONLY public.culture DROP CONSTRAINT culture_pkey;
       public            postgres    false    227            �           2606    16639    fermier fermier_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.fermier
    ADD CONSTRAINT fermier_pkey PRIMARY KEY (matricule);
 >   ALTER TABLE ONLY public.fermier DROP CONSTRAINT fermier_pkey;
       public            postgres    false    233            �           2606    16495    parcelle parcelle_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.parcelle
    ADD CONSTRAINT parcelle_pkey PRIMARY KEY (code_parcelle);
 @   ALTER TABLE ONLY public.parcelle DROP CONSTRAINT parcelle_pkey;
       public            postgres    false    223            �           2606    16504    plante plante_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.plante
    ADD CONSTRAINT plante_pkey PRIMARY KEY (id_plante);
 <   ALTER TABLE ONLY public.plante DROP CONSTRAINT plante_pkey;
       public            postgres    false    225            �           2606    16487    production production_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.production
    ADD CONSTRAINT production_pkey PRIMARY KEY (id_prod);
 D   ALTER TABLE ONLY public.production DROP CONSTRAINT production_pkey;
       public            postgres    false    221            �           2606    16442    produit produit_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.produit
    ADD CONSTRAINT produit_pkey PRIMARY KEY (id_produit);
 >   ALTER TABLE ONLY public.produit DROP CONSTRAINT produit_pkey;
       public            postgres    false    219            �           2606    16429    sante sante_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sante
    ADD CONSTRAINT sante_pkey PRIMARY KEY (id_sante);
 :   ALTER TABLE ONLY public.sante DROP CONSTRAINT sante_pkey;
       public            postgres    false    217            �           2606    16626    stade_p stade_P_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.stade_p
    ADD CONSTRAINT "stade_P_pkey" PRIMARY KEY (id_stade);
 @   ALTER TABLE ONLY public.stade_p DROP CONSTRAINT "stade_P_pkey";
       public            postgres    false    231            �           2606    16614 $   calendrier calendrier_id_plante_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.calendrier
    ADD CONSTRAINT calendrier_id_plante_fkey FOREIGN KEY (id_plante) REFERENCES public.plante(id_plante);
 N   ALTER TABLE ONLY public.calendrier DROP CONSTRAINT calendrier_id_plante_fkey;
       public          postgres    false    4744    225    229            �           2606    16595 "   culture culture_code_parcelle_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.culture
    ADD CONSTRAINT culture_code_parcelle_fkey FOREIGN KEY (code_parcelle) REFERENCES public.parcelle(code_parcelle);
 L   ALTER TABLE ONLY public.culture DROP CONSTRAINT culture_code_parcelle_fkey;
       public          postgres    false    4742    223    227            �           2606    16600    culture culture_id_plante_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.culture
    ADD CONSTRAINT culture_id_plante_fkey FOREIGN KEY (id_plante) REFERENCES public.plante(id_plante);
 H   ALTER TABLE ONLY public.culture DROP CONSTRAINT culture_id_plante_fkey;
       public          postgres    false    4744    227    225            �           2606    16430    sante id_animal    FK CONSTRAINT     x   ALTER TABLE ONLY public.sante
    ADD CONSTRAINT id_animal FOREIGN KEY (id_animal) REFERENCES public.animal(id_animal);
 9   ALTER TABLE ONLY public.sante DROP CONSTRAINT id_animal;
       public          postgres    false    215    4734    217            �           2606    16641 %   production production_id_produit_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.production
    ADD CONSTRAINT production_id_produit_fkey FOREIGN KEY (id_produit) REFERENCES public.produit(id_produit) NOT VALID;
 O   ALTER TABLE ONLY public.production DROP CONSTRAINT production_id_produit_fkey;
       public          postgres    false    219    4738    221            �           2606    16627     stade_p stade_P_id_cultiver_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.stade_p
    ADD CONSTRAINT "stade_P_id_cultiver_fkey" FOREIGN KEY (id_cultiver) REFERENCES public.culture(id_cultiver);
 L   ALTER TABLE ONLY public.stade_p DROP CONSTRAINT "stade_P_id_cultiver_fkey";
       public          postgres    false    4746    231    227            &   M  x���Kj�0������-?s�B �e L�	Qk���>R�ыUr�6���X^Y��?0�H��$h�$)� 2�q�2�X`y$��>�� 
�16_s��$��
i�pjI
j}�pqaR
��9pԴ�Tr:`��ϼ[_�F&�ӱ�T8�1ա�3���� �������r�1�^�t�'ᷕ��X���g8���r�צ��S��I\��X�pc<��j�t��p5�Ee��	X�Z��0��}X�㗜6~C�-YsK�cf����v��V�ov�V���m�aدS.�����vEՍ�_8v�y9����U᭕�_Ӥ�݃�y�A��H      4   �   x���K�  ����(h?�����!�`M�<G/V�Ƥh���z�d�@!�c+��ZE%�T+%��dqBbB�8�Y2e&�r;�&�W���q����5��0b���J?|ٞ�6�;�[�Y��5S�ycr!�Z���� na�k��5�N+qgO=8�`L+E���c����U�u������L���i�(ys��G�S�N=e_`�]�D|y��      2   [   x�3�4B##]#]#�T���44�45�46�2����R��L��)I�2�4�4��n�kd��(`h��ߜӜӂ(�����c���� PN*\      8      x������ � �      .   [   x�3�42�46�,�,H-���4�2B�p�XH����/J�K)�2�3�hk/����N��k�+)�L�I--�4����� $ /      0   t   x�M�A
�0����ÔH��ø	uZBc&Lb@o�9�XQ)u��^�2%fT��9?���)�Xv��͐E�a8[c�Q߇rY��˯�:�cKT���f�J���Z���2���]���1�      ,   �   x�=��
�0Eד���N�tم`�`�M7��i2�¿7�`�&�{sr��F� ���G���i�3(����"��v��=ȳl���2Z��Ь����2j)!�Cż�U�-�|�Y�##�*�J�����d������p�9�������P��kas&zË��ę�?!) [1�B��H�      *   �   x�u��
�@E��W��ɴ��҅��"Xp�&�Q��D�*����M����ve���qD*Rx'�f�`WL�cL���A��֥��Z�r�Z�0�!Б
^����Լ���O�(� jyا���N3R��a>\����R�s;���fk=�Cg�s�̫?���������;�?0}��
��."^��V�      (   �   x���A
�0E׿����V{�9��� ��P7��dԍ "�H��_S�1��u�򶨭#��<�`��SA�?����&`K�S��'�j�Ju���ˉh��i���-$��N :pK��5_�b">����kJ�c�p^�\@�3�T_O�E���HJjH+;jH�"e0�!�jH�ω������@"X�,� V�m�0�� �R�      6   4   x�3�4�tO-�M,����4202�50�52��".NS|�f����c���� ��0     