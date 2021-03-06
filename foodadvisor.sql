PGDMP     $                     x            foodadvisor    11.7    11.7 k    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    16393    foodadvisor    DATABASE     �   CREATE DATABASE foodadvisor WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE foodadvisor;
             postgres    false            �           0    0    DATABASE foodadvisor    ACL     -   GRANT ALL ON DATABASE foodadvisor TO myuser;
                  postgres    false    2990            �            1259    16423 
   categories    TABLE     �   CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.categories;
       public         myuser    false            �            1259    16403    categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public       myuser    false    213            �           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
            public       myuser    false    203            �            1259    16424    components_opening_hours    TABLE     �   CREATE TABLE public.components_opening_hours (
    id integer NOT NULL,
    day_interval character varying(255) NOT NULL,
    opening_hour character varying(255),
    closing_hour character varying(255)
);
 ,   DROP TABLE public.components_opening_hours;
       public         myuser    false            �            1259    16405    components_opening_hours_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_opening_hours_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.components_opening_hours_id_seq;
       public       myuser    false    214            �           0    0    components_opening_hours_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.components_opening_hours_id_seq OWNED BY public.components_opening_hours.id;
            public       myuser    false    205            �            1259    16420 
   core_store    TABLE     �   CREATE TABLE public.core_store (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);
    DROP TABLE public.core_store;
       public         myuser    false            �            1259    16400    core_store_id_seq    SEQUENCE     �   CREATE SEQUENCE public.core_store_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.core_store_id_seq;
       public       myuser    false    210            �           0    0    core_store_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.core_store_id_seq OWNED BY public.core_store.id;
            public       myuser    false    200            �            1259    16416    likes    TABLE     �   CREATE TABLE public.likes (
    id integer NOT NULL,
    author integer,
    review integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.likes;
       public         myuser    false            �            1259    16401    likes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.likes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.likes_id_seq;
       public       myuser    false    206            �           0    0    likes_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.likes_id_seq OWNED BY public.likes.id;
            public       myuser    false    201            �            1259    16418    restaurants    TABLE     �  CREATE TABLE public.restaurants (
    id integer NOT NULL,
    name character varying(255),
    description text,
    address character varying(255),
    website character varying(255),
    phone character varying(255),
    price character varying(255),
    district character varying(255),
    category integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.restaurants;
       public         myuser    false            �            1259    16561    restaurants_components    TABLE       CREATE TABLE public.restaurants_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    restaurant_id integer NOT NULL
);
 *   DROP TABLE public.restaurants_components;
       public         myuser    false            �            1259    16554    restaurants_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.restaurants_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.restaurants_components_id_seq;
       public       myuser    false    223            �           0    0    restaurants_components_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.restaurants_components_id_seq OWNED BY public.restaurants_components.id;
            public       myuser    false    222            �            1259    16398    restaurants_id_seq    SEQUENCE     �   CREATE SEQUENCE public.restaurants_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.restaurants_id_seq;
       public       myuser    false    208            �           0    0    restaurants_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.restaurants_id_seq OWNED BY public.restaurants.id;
            public       myuser    false    198            �            1259    16417    reviews    TABLE       CREATE TABLE public.reviews (
    id integer NOT NULL,
    content text,
    note integer,
    author integer,
    restaurant integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.reviews;
       public         myuser    false            �            1259    16396    reviews_id_seq    SEQUENCE     �   CREATE SEQUENCE public.reviews_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.reviews_id_seq;
       public       myuser    false    207            �           0    0    reviews_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.reviews_id_seq OWNED BY public.reviews.id;
            public       myuser    false    196            �            1259    16421    strapi_administrator    TABLE       CREATE TABLE public.strapi_administrator (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    "resetPasswordToken" character varying(255),
    blocked boolean
);
 (   DROP TABLE public.strapi_administrator;
       public         myuser    false            �            1259    16402    strapi_administrator_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_administrator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.strapi_administrator_id_seq;
       public       myuser    false    211            �           0    0    strapi_administrator_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.strapi_administrator_id_seq OWNED BY public.strapi_administrator.id;
            public       myuser    false    202            �            1259    16419    strapi_webhooks    TABLE     �   CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);
 #   DROP TABLE public.strapi_webhooks;
       public         myuser    false            �            1259    16397    strapi_webhooks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_webhooks_id_seq;
       public       myuser    false    209            �           0    0    strapi_webhooks_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;
            public       myuser    false    197            �            1259    16422    upload_file    TABLE     �  CREATE TABLE public.upload_file (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "alternativeText" character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255) NOT NULL,
    ext character varying(255),
    mime character varying(255) NOT NULL,
    size numeric(10,2) NOT NULL,
    url character varying(255) NOT NULL,
    "previewUrl" character varying(255),
    provider character varying(255) NOT NULL,
    provider_metadata jsonb,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.upload_file;
       public         myuser    false            �            1259    16399    upload_file_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_file_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.upload_file_id_seq;
       public       myuser    false    212            �           0    0    upload_file_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.upload_file_id_seq OWNED BY public.upload_file.id;
            public       myuser    false    199            �            1259    16553    upload_file_morph    TABLE     �   CREATE TABLE public.upload_file_morph (
    id integer NOT NULL,
    upload_file_id integer,
    related_id integer,
    related_type text,
    field text,
    "order" integer
);
 %   DROP TABLE public.upload_file_morph;
       public         myuser    false            �            1259    16551    upload_file_morph_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_file_morph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.upload_file_morph_id_seq;
       public       myuser    false    221            �           0    0    upload_file_morph_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.upload_file_morph_id_seq OWNED BY public.upload_file_morph.id;
            public       myuser    false    220            �            1259    16425    users-permissions_permission    TABLE     )  CREATE TABLE public."users-permissions_permission" (
    id integer NOT NULL,
    type character varying(255) NOT NULL,
    controller character varying(255) NOT NULL,
    action character varying(255) NOT NULL,
    enabled boolean NOT NULL,
    policy character varying(255),
    role integer
);
 2   DROP TABLE public."users-permissions_permission";
       public         myuser    false            �            1259    16404 #   users-permissions_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public."users-permissions_permission_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."users-permissions_permission_id_seq";
       public       myuser    false    215            �           0    0 #   users-permissions_permission_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."users-permissions_permission_id_seq" OWNED BY public."users-permissions_permission".id;
            public       myuser    false    204            �            1259    16512    users-permissions_role    TABLE     �   CREATE TABLE public."users-permissions_role" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    type character varying(255)
);
 ,   DROP TABLE public."users-permissions_role";
       public         myuser    false            �            1259    16510    users-permissions_role_id_seq    SEQUENCE     �   CREATE SEQUENCE public."users-permissions_role_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."users-permissions_role_id_seq";
       public       myuser    false    217            �           0    0    users-permissions_role_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."users-permissions_role_id_seq" OWNED BY public."users-permissions_role".id;
            public       myuser    false    216            �            1259    16523    users-permissions_user    TABLE     �  CREATE TABLE public."users-permissions_user" (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    provider character varying(255),
    password character varying(255),
    "resetPasswordToken" character varying(255),
    confirmed boolean,
    blocked boolean,
    role integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 ,   DROP TABLE public."users-permissions_user";
       public         myuser    false            �            1259    16516    users-permissions_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public."users-permissions_user_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."users-permissions_user_id_seq";
       public       myuser    false    219            �           0    0    users-permissions_user_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."users-permissions_user_id_seq" OWNED BY public."users-permissions_user".id;
            public       myuser    false    218            �
           2604    16449    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public       myuser    false    213    203    213            �
           2604    16453    components_opening_hours id    DEFAULT     �   ALTER TABLE ONLY public.components_opening_hours ALTER COLUMN id SET DEFAULT nextval('public.components_opening_hours_id_seq'::regclass);
 J   ALTER TABLE public.components_opening_hours ALTER COLUMN id DROP DEFAULT;
       public       myuser    false    214    205    214            �
           2604    16452    core_store id    DEFAULT     n   ALTER TABLE ONLY public.core_store ALTER COLUMN id SET DEFAULT nextval('public.core_store_id_seq'::regclass);
 <   ALTER TABLE public.core_store ALTER COLUMN id DROP DEFAULT;
       public       myuser    false    210    200    210            �
           2604    16450    likes id    DEFAULT     d   ALTER TABLE ONLY public.likes ALTER COLUMN id SET DEFAULT nextval('public.likes_id_seq'::regclass);
 7   ALTER TABLE public.likes ALTER COLUMN id DROP DEFAULT;
       public       myuser    false    206    201    206            �
           2604    16448    restaurants id    DEFAULT     p   ALTER TABLE ONLY public.restaurants ALTER COLUMN id SET DEFAULT nextval('public.restaurants_id_seq'::regclass);
 =   ALTER TABLE public.restaurants ALTER COLUMN id DROP DEFAULT;
       public       myuser    false    198    208    208            �
           2604    16565    restaurants_components id    DEFAULT     �   ALTER TABLE ONLY public.restaurants_components ALTER COLUMN id SET DEFAULT nextval('public.restaurants_components_id_seq'::regclass);
 H   ALTER TABLE public.restaurants_components ALTER COLUMN id DROP DEFAULT;
       public       myuser    false    223    222    223            �
           2604    16447 
   reviews id    DEFAULT     h   ALTER TABLE ONLY public.reviews ALTER COLUMN id SET DEFAULT nextval('public.reviews_id_seq'::regclass);
 9   ALTER TABLE public.reviews ALTER COLUMN id DROP DEFAULT;
       public       myuser    false    207    196    207            �
           2604    16455    strapi_administrator id    DEFAULT     �   ALTER TABLE ONLY public.strapi_administrator ALTER COLUMN id SET DEFAULT nextval('public.strapi_administrator_id_seq'::regclass);
 F   ALTER TABLE public.strapi_administrator ALTER COLUMN id DROP DEFAULT;
       public       myuser    false    211    202    211            �
           2604    16446    strapi_webhooks id    DEFAULT     x   ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);
 A   ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
       public       myuser    false    209    197    209            �
           2604    16454    upload_file id    DEFAULT     p   ALTER TABLE ONLY public.upload_file ALTER COLUMN id SET DEFAULT nextval('public.upload_file_id_seq'::regclass);
 =   ALTER TABLE public.upload_file ALTER COLUMN id DROP DEFAULT;
       public       myuser    false    212    199    212            �
           2604    16557    upload_file_morph id    DEFAULT     |   ALTER TABLE ONLY public.upload_file_morph ALTER COLUMN id SET DEFAULT nextval('public.upload_file_morph_id_seq'::regclass);
 C   ALTER TABLE public.upload_file_morph ALTER COLUMN id DROP DEFAULT;
       public       myuser    false    220    221    221            �
           2604    16451    users-permissions_permission id    DEFAULT     �   ALTER TABLE ONLY public."users-permissions_permission" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_permission_id_seq"'::regclass);
 P   ALTER TABLE public."users-permissions_permission" ALTER COLUMN id DROP DEFAULT;
       public       myuser    false    204    215    215            �
           2604    16517    users-permissions_role id    DEFAULT     �   ALTER TABLE ONLY public."users-permissions_role" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_role_id_seq"'::regclass);
 J   ALTER TABLE public."users-permissions_role" ALTER COLUMN id DROP DEFAULT;
       public       myuser    false    217    216    217            �
           2604    16526    users-permissions_user id    DEFAULT     �   ALTER TABLE ONLY public."users-permissions_user" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_user_id_seq"'::regclass);
 J   ALTER TABLE public."users-permissions_user" ALTER COLUMN id DROP DEFAULT;
       public       myuser    false    219    218    219            �          0    16423 
   categories 
   TABLE DATA               F   COPY public.categories (id, name, created_at, updated_at) FROM stdin;
    public       myuser    false    213   ��       �          0    16424    components_opening_hours 
   TABLE DATA               `   COPY public.components_opening_hours (id, day_interval, opening_hour, closing_hour) FROM stdin;
    public       myuser    false    214   5�       �          0    16420 
   core_store 
   TABLE DATA               L   COPY public.core_store (id, key, value, type, environment, tag) FROM stdin;
    public       myuser    false    210   ��       �          0    16416    likes 
   TABLE DATA               K   COPY public.likes (id, author, review, created_at, updated_at) FROM stdin;
    public       myuser    false    206   ��       �          0    16418    restaurants 
   TABLE DATA               �   COPY public.restaurants (id, name, description, address, website, phone, price, district, category, created_at, updated_at) FROM stdin;
    public       myuser    false    208   �       �          0    16561    restaurants_components 
   TABLE DATA               q   COPY public.restaurants_components (id, field, "order", component_type, component_id, restaurant_id) FROM stdin;
    public       myuser    false    223   C�       �          0    16417    reviews 
   TABLE DATA               `   COPY public.reviews (id, content, note, author, restaurant, created_at, updated_at) FROM stdin;
    public       myuser    false    207   ��       �          0    16421    strapi_administrator 
   TABLE DATA               l   COPY public.strapi_administrator (id, username, email, password, "resetPasswordToken", blocked) FROM stdin;
    public       myuser    false    211   #�       �          0    16419    strapi_webhooks 
   TABLE DATA               R   COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
    public       myuser    false    209   ��       �          0    16422    upload_file 
   TABLE DATA               �   COPY public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_at, updated_at) FROM stdin;
    public       myuser    false    212   ��       �          0    16553    upload_file_morph 
   TABLE DATA               i   COPY public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") FROM stdin;
    public       myuser    false    221   �       �          0    16425    users-permissions_permission 
   TABLE DATA               m   COPY public."users-permissions_permission" (id, type, controller, action, enabled, policy, role) FROM stdin;
    public       myuser    false    215   7�       �          0    16512    users-permissions_role 
   TABLE DATA               O   COPY public."users-permissions_role" (id, name, description, type) FROM stdin;
    public       myuser    false    217   ��       �          0    16523    users-permissions_user 
   TABLE DATA               �   COPY public."users-permissions_user" (id, username, email, provider, password, "resetPasswordToken", confirmed, blocked, role, created_at, updated_at) FROM stdin;
    public       myuser    false    219   �       �           0    0    categories_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.categories_id_seq', 5, true);
            public       myuser    false    203            �           0    0    components_opening_hours_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.components_opening_hours_id_seq', 5, true);
            public       myuser    false    205            �           0    0    core_store_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.core_store_id_seq', 29, true);
            public       myuser    false    200            �           0    0    likes_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.likes_id_seq', 1, true);
            public       myuser    false    201            �           0    0    restaurants_components_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.restaurants_components_id_seq', 5, true);
            public       myuser    false    222            �           0    0    restaurants_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.restaurants_id_seq', 5, true);
            public       myuser    false    198            �           0    0    reviews_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.reviews_id_seq', 2, true);
            public       myuser    false    196            �           0    0    strapi_administrator_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.strapi_administrator_id_seq', 1, true);
            public       myuser    false    202            �           0    0    strapi_webhooks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);
            public       myuser    false    197            �           0    0    upload_file_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.upload_file_id_seq', 5, true);
            public       myuser    false    199            �           0    0    upload_file_morph_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.upload_file_morph_id_seq', 11, true);
            public       myuser    false    220            �           0    0 #   users-permissions_permission_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public."users-permissions_permission_id_seq"', 208, true);
            public       myuser    false    204            �           0    0    users-permissions_role_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."users-permissions_role_id_seq"', 2, true);
            public       myuser    false    216            �           0    0    users-permissions_user_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."users-permissions_user_id_seq"', 2, true);
            public       myuser    false    218                       2606    16486    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public         myuser    false    213                       2606    16497 6   components_opening_hours components_opening_hours_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.components_opening_hours
    ADD CONSTRAINT components_opening_hours_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.components_opening_hours DROP CONSTRAINT components_opening_hours_pkey;
       public         myuser    false    214            �
           2606    16499    core_store core_store_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.core_store
    ADD CONSTRAINT core_store_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.core_store DROP CONSTRAINT core_store_pkey;
       public         myuser    false    210            �
           2606    16487    likes likes_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.likes DROP CONSTRAINT likes_pkey;
       public         myuser    false    206                       2606    16572 2   restaurants_components restaurants_components_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.restaurants_components
    ADD CONSTRAINT restaurants_components_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.restaurants_components DROP CONSTRAINT restaurants_components_pkey;
       public         myuser    false    223            �
           2606    16507    restaurants restaurants_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.restaurants
    ADD CONSTRAINT restaurants_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.restaurants DROP CONSTRAINT restaurants_pkey;
       public         myuser    false    208            �
           2606    16496    reviews reviews_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.reviews DROP CONSTRAINT reviews_pkey;
       public         myuser    false    207            �
           2606    16503 .   strapi_administrator strapi_administrator_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.strapi_administrator DROP CONSTRAINT strapi_administrator_pkey;
       public         myuser    false    211            �
           2606    16520 9   strapi_administrator strapi_administrator_username_unique 
   CONSTRAINT     x   ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_username_unique UNIQUE (username);
 c   ALTER TABLE ONLY public.strapi_administrator DROP CONSTRAINT strapi_administrator_username_unique;
       public         myuser    false    211            �
           2606    16508 $   strapi_webhooks strapi_webhooks_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_webhooks DROP CONSTRAINT strapi_webhooks_pkey;
       public         myuser    false    209                       2606    16570 (   upload_file_morph upload_file_morph_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.upload_file_morph
    ADD CONSTRAINT upload_file_morph_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.upload_file_morph DROP CONSTRAINT upload_file_morph_pkey;
       public         myuser    false    221                        2606    16509    upload_file upload_file_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.upload_file
    ADD CONSTRAINT upload_file_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.upload_file DROP CONSTRAINT upload_file_pkey;
       public         myuser    false    212                       2606    16506 >   users-permissions_permission users-permissions_permission_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."users-permissions_permission"
    ADD CONSTRAINT "users-permissions_permission_pkey" PRIMARY KEY (id);
 l   ALTER TABLE ONLY public."users-permissions_permission" DROP CONSTRAINT "users-permissions_permission_pkey";
       public         myuser    false    215                       2606    16533 2   users-permissions_role users-permissions_role_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_pkey" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public."users-permissions_role" DROP CONSTRAINT "users-permissions_role_pkey";
       public         myuser    false    217            
           2606    16538 9   users-permissions_role users-permissions_role_type_unique 
   CONSTRAINT     x   ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_type_unique" UNIQUE (type);
 g   ALTER TABLE ONLY public."users-permissions_role" DROP CONSTRAINT "users-permissions_role_type_unique";
       public         myuser    false    217                       2606    16535 2   users-permissions_user users-permissions_user_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_pkey" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public."users-permissions_user" DROP CONSTRAINT "users-permissions_user_pkey";
       public         myuser    false    219                       2606    16539 =   users-permissions_user users-permissions_user_username_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_username_unique" UNIQUE (username);
 k   ALTER TABLE ONLY public."users-permissions_user" DROP CONSTRAINT "users-permissions_user_username_unique";
       public         myuser    false    219                       2606    16574 '   restaurants_components restaurant_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.restaurants_components
    ADD CONSTRAINT restaurant_id_fk FOREIGN KEY (restaurant_id) REFERENCES public.restaurants(id) ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.restaurants_components DROP CONSTRAINT restaurant_id_fk;
       public       myuser    false    208    223    2806            �   l   x�}�;
�@��ڬ�8�aD��۰	�`�����6��؞��Q��Go-_k=�<ِ12�QN�PP�����j�6O6����
"�ӹ&��I��!���94 v�S0�      �   B   x�3��)�K-�u����K��4�30�4��\F)]����" ���ї�� �����	n�=... ��      �   )  x��]�n���<�V��)9�'�isE��I�8]I0�f(���p23��k�k���$��>c�ָή������!�w.C2�l��p�$GKX���Y�j89����p]�j�;� @~�j�W������V+T����OL"�M��L+�%�������t]U�h��
�X����b*~���_`��|~C����LI�9�eV�����sBrHXD�BŜ�P]W�hjZ9�yNH�A��25(��)y����Y2��Z��z`W0��t	O2zh���Q��_���4��U�X.����;\j.�u���;g-|P�|]�
f|^ɴ�b��DӜԛ��f�����Ҫ.OI_�=,��� 0�8����P����'#�����rq�ک�a� �w	�>!"�R���P��f1��%_��t5�N�;ctzW �i�ۢ|K���e���"P�'�2��E�PVhC�\�@�6��c����E�U�V-KO!�h�4���J:#[3�Y�Ҵ���20�����=}ӺDi����͐1�
�����9���
���
GZMż�1p(2��i5��P�3�`~N�S�������"��$��0ʖ��j�N�"x` %[	].���d����ڠ<��F��mv-��e��|ه�/ �/�4��j��%Z�R㢝>������
]ED5��l���@�|]����c4��[�;��`���X�J�t��O�Q��2E��<k_����CIUT��tç�b<�$P���D2X�R�ۅ� ����4O�F��+�\�T�P�Z�� �.�5�|&c�#٧���:XD�����V�0jE��1O,9$�E>��#��<���������}�y >���5�Ƃ�X�z��ޗx�ŲR��Q��a3N�3m��N�������J"R֓�n6��wyS��'c:���W=�{(г&>2#]�{�XC%j��ӄ�j���zM� 7�q�Q��r|�+B��p�`GGq���q��e��Qu77wi�2�4��Q�?�
<zp���M�[8^�b����X���(Q2".�X���Yػ� 6���ګ���=9s��xY���I��� ����Rim`�{���!�Ӄ` A�T�.7�2	J�[�W�;p ��/�9��-*��w��%N�4��lw��s��5�0{���w�B�dv��Kl�'��$���:�a�	}�"~�Oh�J����l�Y�W� SfUe��^a��V��,�1��i�;I��u�c��������t�Ȱ�䰅��>5d-�EJË��W�7�
)-��Q�I`����B 4S�pT���S_���PG�[�J�уCSTe�伶��˓�Ա�!q����<��tI~�Q���{���Oio��#�/4��:\3�B�N�d����5�`4/�]����9O��/*�v˫��)j�iW��BK��	x�M����5	v,�-��h&V(�p�gM'��0�ō^�l�cD\Ό�ߜ����һ�ۻ���&�����D9V��:�=�V_��u�YFS�t/ZlID��d
@�=Q�U�7+�HVO&�,s���Ʉf�F�5Q���Ōk�it��u�4���Oj�ta>)	kX�e|�&$Q�,��;�����i��[nņO?<��-S�n0�b��̲�uc��߲a����տ�Y�QAL�x*S͖?d�2��9{̵����d�j�\9��U�&�bYi΅�d��uY/ح���Ӫ�8���e��.��?�� ����aG�.�ui/�Z��g�R �x�[N�W���1�/��������'��E,0Q�Y`���`d�5��00��
RLM}��_P�t��3��ʺ�A9N�el���F�׶��c&����,�0���Ԧe�t�سK��F5�&�<���Ϣ�&5�&U��e�+�AI9�=����c��'(G)�����F���2�x�F*?�mA_�!W�:�!����%�V9os?�����b�#xkU�c��=�:�7�	�D�{!?T�LQZ�]�O2����G�vU��G|�Ս2�"{M�6���'�y-K	��v�D^�Uf�]�!v�9wX��}�]��6\r:�#���U� yco���~\pI;�I�3�s�qO�� �;O���o.�Ş�kp,dW��!s���������F�`-��mȡ3Y$ϟK/l����6�еm���m����Ӎ�On�B����M����zvé�KB��#�Y ���砿4�����ۇ��+�%s#(ǰ�w+��������"á�=�e�(�GM;ΐ�m��4��L"'3�-���'m~��r����?PO�(��&����1��o�p���ay�O�����g5����VU�O�� ǭ����*���T��ֹ�6�u�>97{���?R��%w,;���np�$�u�A�^_8��e
��4������@n0�i��pɐ�h�P�N�p���j4�
�u���
����%�Ś��c��4�h�0�QlaEKJ���a��usd��w�Ўڽ�lϫ����%0�۝]�8��l�x±�`}�A(,J�J+�Qat��>M{�C�@o��� Q�K(�hG�9��Ϲ�%�x4�t�pq���`�y������բ6�þ
�Iͥ.�qв�NCfU��E9d@�jP�^6{U*�I��-9ܶ-��ε"���mb������dc�u���:A�Ud�m�˸@N��"q˵��^�<�:
!�}ΓOƅ��f�[����K�2?�8�x�LK{�`%W��E������,�-�5�(7T�s�PqJ�TP�:�D��r�hpN�&�3t�8����K�'�O�0�C�.��DQ��i_)Ce��<�.���>�\��̊�\��S=��+��m���»��cqd��o��2���5� w��5�V�:��u�c S(
{J*����帾�S)�߆W��O�DQ/��h߾����l���֤�q�k���ʩ�߁L��JoG���;�o����Y����s�qC�����ܗ�m]/�;���[u���������n=lw�|.��!�^xv:��K=�5�{�����_Ϊ��tXCA���G�`p��3�,���6�X1t䷌�&1���D �25pU�4#���n�>-R63�| /�?�yXRc�0W�=��n	��ێ����&�킍L��^>X��H�����p� "��4"��@��RmF<�� L��Y��O>.�?B�y�����O38�5��JA1 �I���9>!��X<`3d�3��>������?>�s�3��}���/ߐ'V��(���>�(<�	�o�D��ĕ.`j\�u�b{��x]4�1Kxl�Lh3\�� �jЖ�l �vA�O<�w ΐ��r�����A
|2j���I���/��d*��v��)̨�fW]ʙ���J���/]9�(���q@]4M9��#N�D&ッ{�݈�f��9���~,(d��s)�fgޙ���gb����>�U�5�x��=6}��oA��!�ڞ��҂;
}��Z�z�x�mGg�Gw����P5h      �   =   x�=ɱ�0����$Ő�Y��q���&�	�DNrP}��Uϡ�����u�w��{=�      �   &  x�mT�r�6����}$��ȕ�.c{�"��n�E&3��$xH�r���H�E�������i�kO����s�e.�Tu�>DݍjN�������VS�������}D��>6h�Ԉ�ѫ�4�Y��@���z�,R'U�5�gK��M���Q{���sRt���D��o0�"m�h����k����To: ��H*R�����P�
�����i�I������ьnN��Ղ�a������Q�v�����+�M�YR�(��"[�W�~)�� rQdE�ȪE�S^�EU���B�Rˬ^�*s�f�x�[�s#1(Co�0hĭ�槿��k!U����߃i��1j(c頡wzÐ�P��As�"�&��8����t��^�$!t�t���hC�ѣ���xoTpx�HB� ��VI���EZ���WY^�s������������(��,�,��RnX���S+N͖��t#�|�:g�{$< �w�d��g�)�;x���/�G��p[�ܶ3{u�*1�tc��,J��iw;=��<��S��b6]�Z�
�T��|������N_��b��I0J�C>%_��. �K<��̀t�~��2�[b�����9������5��r'��x�p"�����H|y:�ua�W�)�j��]����I���U�|]�o{�l����ާ��	.�>1��5~��ܽIꝏL̶Q��/{:��r���إ���ҙ�&��Q_��a��V���'���;��ǽӼ(L��@?��"/��o����(`�����*d���Z8"[�ٛ���fɩ��r6��3L��      �   D   x�3��/H���K���/-*�4�L��-��K�+)�G�2�2"^���1�ʍ9��L�Wn�i����� �C;      �   |   x�]�1�0@��9�/��vc�zDb�]d` Hms�Z]���m����kõn{�ki{EP`X� $4���b�X��){�/Q���b"q��)\,��~ޯ�@:Q:i�O��SsL���B8 ��$K      �   j   x�3�LL)+(������-�1�pH�M���K���T1JT14P��6+u����tp3̏ʊ��u�3��I.(K�+�J�	v�	(.qs�L7�0�*���"�=... X��      �      x������ � �      �   $  x���Y��0���)"��66����p#6�t������Rg� Ey
�ꯪ_�D�\��
J���4O��� �	!B���+U�~���������O�O���?v��ߏm٨��e&����E&�Ens�_'�����U�:��w���gO)�44�E6غ!�D�܎M	=��!�C��u�.��]��:�aC~㌄��f�|��ț.�kBpm BQ.^W9o�A٤�� `��$&4F"���B�#��Y�7C��EY�n[��O17Y1QD����3̹dΛ!r�2�6�Z/u:���.�\M�#vEn������O w���=v�t`�M�M��OR7]4I�J�T³�9��
)������&���G!�n��)d�w��:b3�렜��>�@U����x�E����(�h�k)~�"]3�b�e�g��ĆdP�+(s�ς�b�b�Hʟ`܇<N�J��|l�Z��)D�%Ld�0���WiQ�ޅ/�����J�ӓ���HZ����0�W�ܾ���1#��	���z�����      �   9   x�3�4¢���Ңļ�b�����"NC.#N�&c�i��d9M��T� � B      �   s  x��Z�v�:}��Y���_�n�*�, ��ߏ���d�/�1H���u�N����_۵��h�Dt����Q��i�X�g���sn���,�UDQ�ť%$���4�D���3��c�,�R��w/��[)�5^�H�-�|t�k�y��M�PIb��"iz~o�@,`��[f�){�N�6+nk35'em	�uH��q���1�L���MVP�N��t���q}��c{���9�H[.�1�4*ڝzӥk:�;�z�ʥ���4��6>�������������G��>ݛ�,��J%O|*��+�4D���3�l�Q	>a��y��@RN���61�SN&��H�=����ן��qf<PZ������Vbѡ�vH!���ex������n��Bt�z�:���k+� �̣�H\�Nb��JK+^%��w�ꑧ�(�z�"H����Q\!��{�^��@�܊�ך:��1w�b]9~�^X���q�nu��y�U �G�3��cҖ��N�a����,������Z��Se�M�rJ�b���(�H�~��.b��ef��_��U~�Ml���Bnd����䕹%����)��aj��1O�@�_	\v��zY���mV'��&�	���лE���S�L��N�(�^��s����_������S�����^��\��}��M<�e�3����+��*1�����۴�I+NZbFfH� W'�<1�{�r2w��Vg�Y��_S���̤\S�ۤ�D_SVۤ,�Ք�L1�8-IYl{b>P��Ao���giI�C��Y��9ɪ�ߣuÙ�{��N���p�t���p^;/�\�U�l���X�qNE����2	���d�^�M꫶�nǫ��p�&ANS�sS�WM!��w��JQ�I�Ͳ��-�՚�U6�L�L�4Я���=�1Iza�W�5�w�Ws+�k�̯d�kp�2C\�pq2�-�?���VP��R:�Vy�8�AZ��!9#:4&`,���#���U���j��ǬҤ�,	�U	�l><R�b;�ڟ}�X����I��벸v�Hp��$���d^R����=
ۀ�SY,��v�n�}^pU ��
� ·TY),�ڧ��I��,!C6]��>D�IN�`��3q`�MW;(��:%�9���N��FZ�lGs'�,��A�Ӯ����H�/��gUM�b!Dt:F�f���b�6c�E���ZqpH��a�Q���w2 7�{�`a;<6}tBk_� |�JY�2�����T�����;��Z���aR/���,��� �p�|�ضЎ�W6��x?H�(��L�CF�H��&�+�-��{aw�� π��yz����˓0��I"�5��`�(�6��2�#w���;U���%p���] ��ؤ���6�xap`�)�m�"|�w�1��K�0���Dฐ׊v�%����@0���;V�nm���n�<J�H��%�l�C��I}VX�Ѧ��l�v��� /%]�6����Wo���	��R�t=�>�y0:��w(��dUb�vj-�=��4.k��J�J�L?�H���y�i���~(��~T ��^�[闿y���C[Y�H �������>���=K��_��n�`hh�QR3���?T������q����U      �   S   x�3�t,-�H�+�LN,IM�tIMK,�)Q(��IUH�,K�S(�WHDV�PZ�Z�ǉ"�e�P�����À�<lF��p��qqq ^�0�      �   �   x�e��n�@E��S�`��}�SaV6&l�-%�T𧌤S�ا��јvs�.�A2��'r�16y{�?�Ҥ�6YIl����Gb�!�)��K7OE�F��6m�e+��$箿�A�]���g��HM
�C�C�2Ź�.�۫��� F
��zB��b$������/;Gh�D��G7)2'MJ]Ż��v�m�N;��i,�G4�q��/�k��#(���G9g�n� �lE-˺ �R�     