PGDMP                         z           mascotas    12.10    12.10                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    49264    mascotas    DATABASE     ?   CREATE DATABASE mascotas WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Mexico.1252' LC_CTYPE = 'Spanish_Mexico.1252';
    DROP DATABASE mascotas;
                postgres    false            ?            1259    49265    mascotas    TABLE     o   CREATE TABLE public.mascotas (
    id integer NOT NULL,
    nombre character varying(50),
    edad smallint
);
    DROP TABLE public.mascotas;
       public         heap    postgres    false            ?            1259    49271    mascotas_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.mascotas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.mascotas_id_seq;
       public          postgres    false    202                       0    0    mascotas_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.mascotas_id_seq OWNED BY public.mascotas.id;
          public          postgres    false    203            
           2604    49273    mascotas id    DEFAULT     j   ALTER TABLE ONLY public.mascotas ALTER COLUMN id SET DEFAULT nextval('public.mascotas_id_seq'::regclass);
 :   ALTER TABLE public.mascotas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202                       0    49265    mascotas 
   TABLE DATA           4   COPY public.mascotas (id, nombre, edad) FROM stdin;
    public          postgres    false    202   ]
       	           0    0    mascotas_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.mascotas_id_seq', 4, true);
          public          postgres    false    203            ?
           2606    49278    mascotas id_pk 
   CONSTRAINT     L   ALTER TABLE ONLY public.mascotas
    ADD CONSTRAINT id_pk PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.mascotas DROP CONSTRAINT id_pk;
       public            postgres    false    202                2   x?3??N-???4?2?,N??42?2???L?4?2?,K?I-?M?b???? ?T
[     