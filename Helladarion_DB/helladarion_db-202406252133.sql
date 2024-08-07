PGDMP  	    !                |           helladarion_db    16.3    16.3 R    '           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            (           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            )           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            *           1262    41566    helladarion_db    DATABASE     �   CREATE DATABASE helladarion_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE helladarion_db;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false            +           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    5            �            1259    41586    autores    TABLE     Z   CREATE TABLE public.autores (
    id integer NOT NULL,
    nome character varying(300)
);
    DROP TABLE public.autores;
       public         heap    postgres    false    5            �            1259    41585    autores_id_seq    SEQUENCE     �   CREATE SEQUENCE public.autores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.autores_id_seq;
       public          postgres    false    217    5            ,           0    0    autores_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.autores_id_seq OWNED BY public.autores.id;
          public          postgres    false    216            �            1259    41709    capas    TABLE     �   CREATE TABLE public.capas (
    id integer NOT NULL,
    desenhista character varying(120),
    cores character varying(120),
    nome_da_imagem character varying(128),
    fonte character varying(120)
);
    DROP TABLE public.capas;
       public         heap    postgres    false    5            �            1259    41708    capas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.capas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.capas_id_seq;
       public          postgres    false    234    5            -           0    0    capas_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.capas_id_seq OWNED BY public.capas.id;
          public          postgres    false    233            �            1259    41594    editoras    TABLE     Z   CREATE TABLE public.editoras (
    id integer NOT NULL,
    nome character varying(30)
);
    DROP TABLE public.editoras;
       public         heap    postgres    false    5            �            1259    41593    editoras_id_seq    SEQUENCE     �   CREATE SEQUENCE public.editoras_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.editoras_id_seq;
       public          postgres    false    5    219            .           0    0    editoras_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.editoras_id_seq OWNED BY public.editoras.id;
          public          postgres    false    218            �            1259    41601    materias    TABLE     �   CREATE TABLE public.materias (
    id integer NOT NULL,
    nome character varying(120),
    resumo character varying(1000),
    secao_id integer NOT NULL
);
    DROP TABLE public.materias;
       public         heap    postgres    false    5            �            1259    41625    materias_autores    TABLE     i   CREATE TABLE public.materias_autores (
    materia_id integer NOT NULL,
    autor_id integer NOT NULL
);
 $   DROP TABLE public.materias_autores;
       public         heap    postgres    false    5            �            1259    41600    materias_id_seq    SEQUENCE     �   CREATE SEQUENCE public.materias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.materias_id_seq;
       public          postgres    false    221    5            /           0    0    materias_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.materias_id_seq OWNED BY public.materias.id;
          public          postgres    false    220            �            1259    41640    materias_secoes    TABLE     h   CREATE TABLE public.materias_secoes (
    materia_id integer NOT NULL,
    secao_id integer NOT NULL
);
 #   DROP TABLE public.materias_secoes;
       public         heap    postgres    false    5            �            1259    41655    materias_sistemas    TABLE     l   CREATE TABLE public.materias_sistemas (
    materia_id integer NOT NULL,
    sistema_id integer NOT NULL
);
 %   DROP TABLE public.materias_sistemas;
       public         heap    postgres    false    5            �            1259    41671    publicacoes    TABLE     ]   CREATE TABLE public.publicacoes (
    id integer NOT NULL,
    nome character varying(50)
);
    DROP TABLE public.publicacoes;
       public         heap    postgres    false    5            �            1259    41670    publicacoes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.publicacoes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.publicacoes_id_seq;
       public          postgres    false    230    5            0           0    0    publicacoes_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.publicacoes_id_seq OWNED BY public.publicacoes.id;
          public          postgres    false    229            �            1259    41677    revistas    TABLE     ,  CREATE TABLE public.revistas (
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    publicacao_id integer NOT NULL,
    edicao integer NOT NULL,
    editora_id integer NOT NULL,
    quantidade_de_pagina integer NOT NULL,
    capa_id integer NOT NULL,
    observacoes character varying(500)
);
    DROP TABLE public.revistas;
       public         heap    postgres    false    5    5    5            �            1259    41693    revistas_materias    TABLE     �   CREATE TABLE public.revistas_materias (
    revista_id uuid NOT NULL,
    materia_id integer NOT NULL,
    pagina integer NOT NULL
);
 %   DROP TABLE public.revistas_materias;
       public         heap    postgres    false    5            �            1259    41617    secoes    TABLE     ~   CREATE TABLE public.secoes (
    id integer NOT NULL,
    nome character varying(50),
    descricao character varying(800)
);
    DROP TABLE public.secoes;
       public         heap    postgres    false    5            �            1259    41616    secoes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.secoes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.secoes_id_seq;
       public          postgres    false    225    5            1           0    0    secoes_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.secoes_id_seq OWNED BY public.secoes.id;
          public          postgres    false    224            �            1259    41610    sistemas    TABLE     [   CREATE TABLE public.sistemas (
    id integer NOT NULL,
    nome character varying(120)
);
    DROP TABLE public.sistemas;
       public         heap    postgres    false    5            �            1259    41609    sistemas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sistemas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.sistemas_id_seq;
       public          postgres    false    5    223            2           0    0    sistemas_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.sistemas_id_seq OWNED BY public.sistemas.id;
          public          postgres    false    222            W           2604    41589 
   autores id    DEFAULT     h   ALTER TABLE ONLY public.autores ALTER COLUMN id SET DEFAULT nextval('public.autores_id_seq'::regclass);
 9   ALTER TABLE public.autores ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            ^           2604    41712    capas id    DEFAULT     d   ALTER TABLE ONLY public.capas ALTER COLUMN id SET DEFAULT nextval('public.capas_id_seq'::regclass);
 7   ALTER TABLE public.capas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233    234            X           2604    41597    editoras id    DEFAULT     j   ALTER TABLE ONLY public.editoras ALTER COLUMN id SET DEFAULT nextval('public.editoras_id_seq'::regclass);
 :   ALTER TABLE public.editoras ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            Y           2604    41604    materias id    DEFAULT     j   ALTER TABLE ONLY public.materias ALTER COLUMN id SET DEFAULT nextval('public.materias_id_seq'::regclass);
 :   ALTER TABLE public.materias ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            \           2604    41674    publicacoes id    DEFAULT     p   ALTER TABLE ONLY public.publicacoes ALTER COLUMN id SET DEFAULT nextval('public.publicacoes_id_seq'::regclass);
 =   ALTER TABLE public.publicacoes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    230    230            [           2604    41620 	   secoes id    DEFAULT     f   ALTER TABLE ONLY public.secoes ALTER COLUMN id SET DEFAULT nextval('public.secoes_id_seq'::regclass);
 8   ALTER TABLE public.secoes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            Z           2604    41613    sistemas id    DEFAULT     j   ALTER TABLE ONLY public.sistemas ALTER COLUMN id SET DEFAULT nextval('public.sistemas_id_seq'::regclass);
 :   ALTER TABLE public.sistemas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223                      0    41586    autores 
   TABLE DATA           +   COPY public.autores (id, nome) FROM stdin;
    public          postgres    false    217   u]       $          0    41709    capas 
   TABLE DATA           M   COPY public.capas (id, desenhista, cores, nome_da_imagem, fonte) FROM stdin;
    public          postgres    false    234   �]                 0    41594    editoras 
   TABLE DATA           ,   COPY public.editoras (id, nome) FROM stdin;
    public          postgres    false    219   �^                 0    41601    materias 
   TABLE DATA           >   COPY public.materias (id, nome, resumo, secao_id) FROM stdin;
    public          postgres    false    221   *_                 0    41625    materias_autores 
   TABLE DATA           @   COPY public.materias_autores (materia_id, autor_id) FROM stdin;
    public          postgres    false    226   �_                 0    41640    materias_secoes 
   TABLE DATA           ?   COPY public.materias_secoes (materia_id, secao_id) FROM stdin;
    public          postgres    false    227   �_                 0    41655    materias_sistemas 
   TABLE DATA           C   COPY public.materias_sistemas (materia_id, sistema_id) FROM stdin;
    public          postgres    false    228   �_                  0    41671    publicacoes 
   TABLE DATA           /   COPY public.publicacoes (id, nome) FROM stdin;
    public          postgres    false    230   `       !          0    41677    revistas 
   TABLE DATA           u   COPY public.revistas (id, publicacao_id, edicao, editora_id, quantidade_de_pagina, capa_id, observacoes) FROM stdin;
    public          postgres    false    231   ?`       "          0    41693    revistas_materias 
   TABLE DATA           K   COPY public.revistas_materias (revista_id, materia_id, pagina) FROM stdin;
    public          postgres    false    232   �b                 0    41617    secoes 
   TABLE DATA           5   COPY public.secoes (id, nome, descricao) FROM stdin;
    public          postgres    false    225   c                 0    41610    sistemas 
   TABLE DATA           ,   COPY public.sistemas (id, nome) FROM stdin;
    public          postgres    false    223   }c       3           0    0    autores_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.autores_id_seq', 2, true);
          public          postgres    false    216            4           0    0    capas_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.capas_id_seq', 16, true);
          public          postgres    false    233            5           0    0    editoras_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.editoras_id_seq', 2, true);
          public          postgres    false    218            6           0    0    materias_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.materias_id_seq', 2, true);
          public          postgres    false    220            7           0    0    publicacoes_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.publicacoes_id_seq', 2, true);
          public          postgres    false    229            8           0    0    secoes_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.secoes_id_seq', 2, true);
          public          postgres    false    224            9           0    0    sistemas_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.sistemas_id_seq', 3, true);
          public          postgres    false    222            `           2606    41591    autores autores_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.autores
    ADD CONSTRAINT autores_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.autores DROP CONSTRAINT autores_pkey;
       public            postgres    false    217            v           2606    41714    capas capas_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.capas
    ADD CONSTRAINT capas_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.capas DROP CONSTRAINT capas_pkey;
       public            postgres    false    234            b           2606    41599    editoras editoras_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.editoras
    ADD CONSTRAINT editoras_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.editoras DROP CONSTRAINT editoras_pkey;
       public            postgres    false    219            j           2606    41629 &   materias_autores materias_autores_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.materias_autores
    ADD CONSTRAINT materias_autores_pkey PRIMARY KEY (materia_id, autor_id);
 P   ALTER TABLE ONLY public.materias_autores DROP CONSTRAINT materias_autores_pkey;
       public            postgres    false    226    226            d           2606    41608    materias materias_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.materias
    ADD CONSTRAINT materias_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.materias DROP CONSTRAINT materias_pkey;
       public            postgres    false    221            l           2606    41644 $   materias_secoes materias_secoes_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.materias_secoes
    ADD CONSTRAINT materias_secoes_pkey PRIMARY KEY (materia_id, secao_id);
 N   ALTER TABLE ONLY public.materias_secoes DROP CONSTRAINT materias_secoes_pkey;
       public            postgres    false    227    227            n           2606    41659 '   materias_sistemas matrias_sistemas_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.materias_sistemas
    ADD CONSTRAINT matrias_sistemas_pkey PRIMARY KEY (materia_id, sistema_id);
 Q   ALTER TABLE ONLY public.materias_sistemas DROP CONSTRAINT matrias_sistemas_pkey;
       public            postgres    false    228    228            p           2606    41676    publicacoes publicacoes_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.publicacoes
    ADD CONSTRAINT publicacoes_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.publicacoes DROP CONSTRAINT publicacoes_pkey;
       public            postgres    false    230            t           2606    41697 (   revistas_materias revistas_materias_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.revistas_materias
    ADD CONSTRAINT revistas_materias_pkey PRIMARY KEY (revista_id, materia_id);
 R   ALTER TABLE ONLY public.revistas_materias DROP CONSTRAINT revistas_materias_pkey;
       public            postgres    false    232    232            r           2606    41682    revistas revistas_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.revistas
    ADD CONSTRAINT revistas_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.revistas DROP CONSTRAINT revistas_pkey;
       public            postgres    false    231            h           2606    41624    secoes secoes_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.secoes
    ADD CONSTRAINT secoes_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.secoes DROP CONSTRAINT secoes_pkey;
       public            postgres    false    225            f           2606    41615    sistemas sistemas_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sistemas
    ADD CONSTRAINT sistemas_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.sistemas DROP CONSTRAINT sistemas_pkey;
       public            postgres    false    223            x           2606    41635 /   materias_autores materias_autores_autor_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.materias_autores
    ADD CONSTRAINT materias_autores_autor_id_fkey FOREIGN KEY (autor_id) REFERENCES public.autores(id);
 Y   ALTER TABLE ONLY public.materias_autores DROP CONSTRAINT materias_autores_autor_id_fkey;
       public          postgres    false    226    4704    217            y           2606    41630 1   materias_autores materias_autores_materia_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.materias_autores
    ADD CONSTRAINT materias_autores_materia_id_fkey FOREIGN KEY (materia_id) REFERENCES public.materias(id);
 [   ALTER TABLE ONLY public.materias_autores DROP CONSTRAINT materias_autores_materia_id_fkey;
       public          postgres    false    4708    226    221            w           2606    41722    materias materias_secao_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.materias
    ADD CONSTRAINT materias_secao_id_fkey FOREIGN KEY (secao_id) REFERENCES public.secoes(id);
 I   ALTER TABLE ONLY public.materias DROP CONSTRAINT materias_secao_id_fkey;
       public          postgres    false    4712    225    221            z           2606    41645 /   materias_secoes materias_secoes_materia_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.materias_secoes
    ADD CONSTRAINT materias_secoes_materia_id_fkey FOREIGN KEY (materia_id) REFERENCES public.materias(id);
 Y   ALTER TABLE ONLY public.materias_secoes DROP CONSTRAINT materias_secoes_materia_id_fkey;
       public          postgres    false    221    227    4708            {           2606    41650 -   materias_secoes materias_secoes_secao_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.materias_secoes
    ADD CONSTRAINT materias_secoes_secao_id_fkey FOREIGN KEY (secao_id) REFERENCES public.secoes(id);
 W   ALTER TABLE ONLY public.materias_secoes DROP CONSTRAINT materias_secoes_secao_id_fkey;
       public          postgres    false    4712    225    227            |           2606    41660 2   materias_sistemas matrias_sistemas_materia_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.materias_sistemas
    ADD CONSTRAINT matrias_sistemas_materia_id_fkey FOREIGN KEY (materia_id) REFERENCES public.materias(id);
 \   ALTER TABLE ONLY public.materias_sistemas DROP CONSTRAINT matrias_sistemas_materia_id_fkey;
       public          postgres    false    228    4708    221            }           2606    41665 2   materias_sistemas matrias_sistemas_sistema_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.materias_sistemas
    ADD CONSTRAINT matrias_sistemas_sistema_id_fkey FOREIGN KEY (sistema_id) REFERENCES public.sistemas(id);
 \   ALTER TABLE ONLY public.materias_sistemas DROP CONSTRAINT matrias_sistemas_sistema_id_fkey;
       public          postgres    false    228    4710    223            ~           2606    41715    revistas revistas_capa_id_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.revistas
    ADD CONSTRAINT revistas_capa_id_fkey FOREIGN KEY (capa_id) REFERENCES public.capas(id);
 H   ALTER TABLE ONLY public.revistas DROP CONSTRAINT revistas_capa_id_fkey;
       public          postgres    false    234    4726    231                       2606    41688 !   revistas revistas_editora_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.revistas
    ADD CONSTRAINT revistas_editora_id_fkey FOREIGN KEY (editora_id) REFERENCES public.editoras(id);
 K   ALTER TABLE ONLY public.revistas DROP CONSTRAINT revistas_editora_id_fkey;
       public          postgres    false    219    231    4706            �           2606    41703 3   revistas_materias revistas_materias_materia_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.revistas_materias
    ADD CONSTRAINT revistas_materias_materia_id_fkey FOREIGN KEY (materia_id) REFERENCES public.materias(id);
 ]   ALTER TABLE ONLY public.revistas_materias DROP CONSTRAINT revistas_materias_materia_id_fkey;
       public          postgres    false    221    4708    232            �           2606    41698 3   revistas_materias revistas_materias_revista_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.revistas_materias
    ADD CONSTRAINT revistas_materias_revista_id_fkey FOREIGN KEY (revista_id) REFERENCES public.revistas(id);
 ]   ALTER TABLE ONLY public.revistas_materias DROP CONSTRAINT revistas_materias_revista_id_fkey;
       public          postgres    false    4722    231    232            �           2606    41683 $   revistas revistas_publicacao_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.revistas
    ADD CONSTRAINT revistas_publicacao_id_fkey FOREIGN KEY (publicacao_id) REFERENCES public.publicacoes(id);
 N   ALTER TABLE ONLY public.revistas DROP CONSTRAINT revistas_publicacao_id_fkey;
       public          postgres    false    231    230    4720               !   x�3�|�0E�2�H�IL�������� �o�      $   F  x�m�Kj�0�יS̪���;٥	}ц�!��@�ت#p4�d;�8�G��jG�+�b��O��.�1真L�].FW*�k�m��S�;�NgQD_M��(M��8��f�^A/������}��~0��Ge�J�
s}��U�e]�{6���:f� 3�̋촓�:LQ�s�9ӹS0B}(�N�}O�ث�:7�8H�<��s"'[�c㶋�b�/IQ��xrΕ��1�+p� 
y��S�&R�g�M
�K�ޕUI݆
Z���R*qX�(�aΖ�*�x�HA��ڞ�c�+�O���AA���o�3���U���򨕷�Cθ;��龀�- ���Y            x�3�|�0E�2�)J�M����� �o�         k   x�3�
p�(��M�,�WHM�,�/�L�QHIT(J-�,.I�Sp,(J-N�+ITH�����
�
Y���
�E�
y�e��
9� ͩŜF\����(��x��b���� A:<�            x�3�4����� m             x�3�4����� m             x�3�4����� m           '   x�3�|�0E�2�t)JL?�8_��(�83�+F��� }�|      !   v  x���K��8���)x�
�d��`�A�Mm�[�s��,r��X��dd�>��G,֏�|��C�⠴ڱ�Tٕ�-V���������^�s�ܺa���~c�c�V���{�ʹn.�s7o���w㗏��柍���$	�q��6; ����Š4�M�;~��/߾�� s� \��C�R k.!��,s����Dlt�	(w)>JH!ڼ��	q�$j�A��V2J�TD�H.t+���ĉ`��st`u( L$A���.��2k��%-�5��:��w6��?g2l�3#92���:��D2o����O�g���]�_�P�Eb7�Ǚ]~�+�۶����Ѫ^����m[/߯�	������FV�9�p	�s��xa���M���{~}��yױ�1t����M���ݘ��y��޴b��y���Z�����!ip �mA�aE�?�wϺ��ا��{��߬*Ы�����:p���4���d'$TK�aD�"�	"�vl�5q޶	�'�&�K*qT���1���j0l�P���uO萺��؇��)I�V(�e�ԝ�1����'thMɓ��ځ@�3�QPӣj�c쳉�'t��U}���"���U�f�\\�N�iJm�:����t:��q5      "   6   x�3�44N��0�5�H2�5I10ֵ0�4ҵLIN5HN3ON4��4�4����� ��
I         b   x�3�|�0E�tN�-�W(-��ɬJL�W(,M�Ry��+�d��)��e��&*d���&^�*(JM�K��LI�2�tM�,�/�L�A��b���� =1�         &   x�3�|�0E�2�ttQs�2��K��(������ J�L     