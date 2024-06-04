PGDMP                      |            2 Wheeler Data    16.3    16.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24916    2 Wheeler Data    DATABASE     �   CREATE DATABASE "2 Wheeler Data" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
     DROP DATABASE "2 Wheeler Data";
                postgres    false            �            1259    24965    company    TABLE     �   CREATE TABLE public.company (
    com_id integer NOT NULL,
    bike_manufacture_company character varying(50),
    bike_maker character varying(50),
    bike_model character varying(50),
    tw_id integer
);
    DROP TABLE public.company;
       public         heap    postgres    false            �            1259    24964    company_com_id_seq    SEQUENCE     �   CREATE SEQUENCE public.company_com_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.company_com_id_seq;
       public          postgres    false    220                        0    0    company_com_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.company_com_id_seq OWNED BY public.company.com_id;
          public          postgres    false    219            �            1259    24925    customer    TABLE     �   CREATE TABLE public.customer (
    cus_id integer NOT NULL,
    customer_name character varying(50),
    gender character(1),
    city character varying(50),
    state character varying(50),
    pincode character varying(50),
    tw_id integer
);
    DROP TABLE public.customer;
       public         heap    postgres    false            �            1259    24924    customer_cus_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_cus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.customer_cus_id_seq;
       public          postgres    false    218                       0    0    customer_cus_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.customer_cus_id_seq OWNED BY public.customer.cus_id;
          public          postgres    false    217            �            1259    24918    two_wheeler    TABLE     @  CREATE TABLE public.two_wheeler (
    tw_id integer NOT NULL,
    bike_model character varying(50),
    engine_type character varying(50),
    model_type character varying(50),
    color character varying(50),
    model_year integer,
    mileage_km integer,
    price integer,
    stock integer,
    discount integer
);
    DROP TABLE public.two_wheeler;
       public         heap    postgres    false            �            1259    24917    two_wheeler_tw_id_seq    SEQUENCE     �   CREATE SEQUENCE public.two_wheeler_tw_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.two_wheeler_tw_id_seq;
       public          postgres    false    216                       0    0    two_wheeler_tw_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.two_wheeler_tw_id_seq OWNED BY public.two_wheeler.tw_id;
          public          postgres    false    215            \           2604    24968    company com_id    DEFAULT     p   ALTER TABLE ONLY public.company ALTER COLUMN com_id SET DEFAULT nextval('public.company_com_id_seq'::regclass);
 =   ALTER TABLE public.company ALTER COLUMN com_id DROP DEFAULT;
       public          postgres    false    220    219    220            [           2604    24928    customer cus_id    DEFAULT     r   ALTER TABLE ONLY public.customer ALTER COLUMN cus_id SET DEFAULT nextval('public.customer_cus_id_seq'::regclass);
 >   ALTER TABLE public.customer ALTER COLUMN cus_id DROP DEFAULT;
       public          postgres    false    218    217    218            Z           2604    24921    two_wheeler tw_id    DEFAULT     v   ALTER TABLE ONLY public.two_wheeler ALTER COLUMN tw_id SET DEFAULT nextval('public.two_wheeler_tw_id_seq'::regclass);
 @   ALTER TABLE public.two_wheeler ALTER COLUMN tw_id DROP DEFAULT;
       public          postgres    false    216    215    216            �          0    24965    company 
   TABLE DATA           b   COPY public.company (com_id, bike_manufacture_company, bike_maker, bike_model, tw_id) FROM stdin;
    public          postgres    false    220   �       �          0    24925    customer 
   TABLE DATA           ^   COPY public.customer (cus_id, customer_name, gender, city, state, pincode, tw_id) FROM stdin;
    public          postgres    false    218           �          0    24918    two_wheeler 
   TABLE DATA           �   COPY public.two_wheeler (tw_id, bike_model, engine_type, model_type, color, model_year, mileage_km, price, stock, discount) FROM stdin;
    public          postgres    false    216   2"                  0    0    company_com_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.company_com_id_seq', 15, true);
          public          postgres    false    219                       0    0    customer_cus_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.customer_cus_id_seq', 20, true);
          public          postgres    false    217                       0    0    two_wheeler_tw_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.two_wheeler_tw_id_seq', 20, true);
          public          postgres    false    215            b           2606    24970    company company_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.company
    ADD CONSTRAINT company_pkey PRIMARY KEY (com_id);
 >   ALTER TABLE ONLY public.company DROP CONSTRAINT company_pkey;
       public            postgres    false    220            `           2606    24930    customer customer_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (cus_id);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public            postgres    false    218            ^           2606    24923    two_wheeler two_wheeler_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.two_wheeler
    ADD CONSTRAINT two_wheeler_pkey PRIMARY KEY (tw_id);
 F   ALTER TABLE ONLY public.two_wheeler DROP CONSTRAINT two_wheeler_pkey;
       public            postgres    false    216            d           2606    24971    company company_tw_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.company
    ADD CONSTRAINT company_tw_id_fkey FOREIGN KEY (tw_id) REFERENCES public.two_wheeler(tw_id);
 D   ALTER TABLE ONLY public.company DROP CONSTRAINT company_tw_id_fkey;
       public          postgres    false    220    4702    216            c           2606    24931    customer customer_tw_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_tw_id_fkey FOREIGN KEY (tw_id) REFERENCES public.two_wheeler(tw_id);
 F   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_tw_id_fkey;
       public          postgres    false    218    216    4702            �     x����n�@E��_�/��<x,��B� D"�P7V2-�$�$T�����.�9�ol��*='����B!ƺ��9y�9�B��v_��^긜�Q�UuP�w�5����S�m��d��՚o�aj����ΔEՠG}<�n�R|��>0����h��6�x�{[����s�6ƴ�X_�99}z�$����N%��
"$!Fuc��ks�bIHHa����K�RK����:�D$1f��^�'�5����b�cS��9[d��^o�����.      �   
  x�E�ݎ�0���O�'����4,D $v��̂��ul����wl�z��sΙ�t����Z�����~�$� �RX��|��Q�Vn��=K#h��*e��Q�4<�g��*}ĳ��
�� لe��k�����@���#���P������w���UNZ�	�O�� �YA�i���U��I����D-HV����r��'�-���řUJ��U�1���O�0�Z��3�������$}���9Ecp��<�j&ع��w�Gm�'p�yy���	Aϭ�ޚ } jD?�ʠL��ܐ���8O�%?H|�`��I&��	����M���W3�G~����"Ξ0��b�wI��\zb��3���:�f�$r3&rxE�����̣=����(�ܜ����_��S�G	��ط(�(!T}�+p{�h����XCVD]�D��[�t�ԥ����@c�8�b�&��tLE���N^����6$퍖�n�J"�fiX�o������J�s8�)�|�u�~}c��\���      �     x�}�Q��0��/�"��|ݮ���mw���T��0���_߀�0tݧ<��s�w�U�M�Z��y���4S������!�cp1P�@���FVL�E��u�4��)Lp+�V�x���9
��{��E�
}��VA�������#���L��ٻ|����<�,;����c���ԡ�٦hZ�l���ډ|�#��&$M� \+������8S���1�!A�#M3!�b'�g���Ȫ���w]Z������8�͊]׈������i�/h��"�T��Zs^ҊG�۵B�cͷ�*J~���(z����M�$y �o��� - ���B
k� ��5Bp=�����Y!vLr��!$wB��dY��ʽ���F�g[Xq�Oz&61��\J�6/`,F�{E^;-�q�haN�Ū(�YH��!�E}[M�V�V��\�m#:�vm�Զ��0uߊ\0��2��{!�n�n=O`y9e
Mw�R}�'ɳZ�#��8��8��n�[{(�@4"�A�8�����8� �S1�     