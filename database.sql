PGDMP                         {            carsale    15.3    15.3 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16398    carsale    DATABASE     �   CREATE DATABASE carsale WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE carsale;
                postgres    false            �            1259    16399    account_emailaddress    TABLE     �   CREATE TABLE public.account_emailaddress (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    verified boolean NOT NULL,
    "primary" boolean NOT NULL,
    user_id integer NOT NULL
);
 (   DROP TABLE public.account_emailaddress;
       public         heap    postgres    false            �            1259    16402    account_emailaddress_id_seq    SEQUENCE     �   CREATE SEQUENCE public.account_emailaddress_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.account_emailaddress_id_seq;
       public          postgres    false    214            �           0    0    account_emailaddress_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.account_emailaddress_id_seq OWNED BY public.account_emailaddress.id;
          public          postgres    false    215            �            1259    16403    account_emailconfirmation    TABLE     �   CREATE TABLE public.account_emailconfirmation (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    sent timestamp with time zone,
    key character varying(64) NOT NULL,
    email_address_id integer NOT NULL
);
 -   DROP TABLE public.account_emailconfirmation;
       public         heap    postgres    false            �            1259    16406     account_emailconfirmation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.account_emailconfirmation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.account_emailconfirmation_id_seq;
       public          postgres    false    216            �           0    0     account_emailconfirmation_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.account_emailconfirmation_id_seq OWNED BY public.account_emailconfirmation.id;
          public          postgres    false    217            �            1259    16407 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    16410    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    218            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    219            �            1259    16411    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    16414    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    220            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    221            �            1259    16415    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    16418    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    222            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    223            �            1259    16419 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    16424    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    16427    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    225                        0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    226            �            1259    16428    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    224                       0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    227            �            1259    16429    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    16432 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    228                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    229            �            1259    16433    cars_car    TABLE     �  CREATE TABLE public.cars_car (
    id integer NOT NULL,
    car_title character varying(255) NOT NULL,
    state character varying(100) NOT NULL,
    city character varying(100) NOT NULL,
    color character varying(100) NOT NULL,
    model character varying(100) NOT NULL,
    year integer NOT NULL,
    condition character varying(100) NOT NULL,
    price integer NOT NULL,
    description text NOT NULL,
    car_photo character varying(100) NOT NULL,
    car_photo_1 character varying(100) NOT NULL,
    car_photo_2 character varying(100) NOT NULL,
    car_photo_3 character varying(100) NOT NULL,
    car_photo_4 character varying(100) NOT NULL,
    features character varying(195) NOT NULL,
    body_style character varying(100) NOT NULL,
    engine character varying(100) NOT NULL,
    transmission character varying(100) NOT NULL,
    interior character varying(100) NOT NULL,
    miles integer NOT NULL,
    doors character varying(10) NOT NULL,
    passengers integer NOT NULL,
    vin_no character varying(100) NOT NULL,
    milage integer NOT NULL,
    fuel_type character varying(50) NOT NULL,
    no_of_owners character varying(100) NOT NULL,
    is_featured boolean NOT NULL,
    created_date timestamp with time zone NOT NULL
);
    DROP TABLE public.cars_car;
       public         heap    postgres    false            �            1259    16438    cars_car_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cars_car_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.cars_car_id_seq;
       public          postgres    false    230                       0    0    cars_car_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.cars_car_id_seq OWNED BY public.cars_car.id;
          public          postgres    false    231            �            1259    16439    contacts_contact    TABLE     S  CREATE TABLE public.contacts_contact (
    id integer NOT NULL,
    first_name character varying(100) NOT NULL,
    last_name character varying(100) NOT NULL,
    car_id integer NOT NULL,
    customer_need character varying(100) NOT NULL,
    car_title character varying(100) NOT NULL,
    city character varying(100) NOT NULL,
    state character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    phone character varying(100) NOT NULL,
    message text NOT NULL,
    user_id integer NOT NULL,
    create_date timestamp with time zone NOT NULL,
    price integer NOT NULL
);
 $   DROP TABLE public.contacts_contact;
       public         heap    postgres    false            �            1259    16444    contacts_contact_id_seq    SEQUENCE     �   CREATE SEQUENCE public.contacts_contact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.contacts_contact_id_seq;
       public          postgres    false    232                       0    0    contacts_contact_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.contacts_contact_id_seq OWNED BY public.contacts_contact.id;
          public          postgres    false    233            �            1259    16445    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    16451    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    234                       0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    235            �            1259    16452    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    16455    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    236                       0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    237            �            1259    16456    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    16461    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    238                       0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    239            �            1259    16462    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    16467    django_site    TABLE     �   CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.django_site;
       public         heap    postgres    false            �            1259    16470    django_site_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.django_site_id_seq;
       public          postgres    false    241                       0    0    django_site_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;
          public          postgres    false    242            �            1259    16471 
   pages_team    TABLE     �  CREATE TABLE public.pages_team (
    id integer NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    designation character varying(255) NOT NULL,
    photo character varying(100) NOT NULL,
    facebook_link character varying(100) NOT NULL,
    twitter_link character varying(100) NOT NULL,
    google_plus_link character varying(100) NOT NULL,
    created_date timestamp with time zone NOT NULL
);
    DROP TABLE public.pages_team;
       public         heap    postgres    false            �            1259    16476    pages_teams_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pages_teams_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.pages_teams_id_seq;
       public          postgres    false    243            	           0    0    pages_teams_id_seq    SEQUENCE OWNED BY     H   ALTER SEQUENCE public.pages_teams_id_seq OWNED BY public.pages_team.id;
          public          postgres    false    244            �            1259    16477    socialaccount_socialaccount    TABLE     D  CREATE TABLE public.socialaccount_socialaccount (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    uid character varying(191) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    extra_data text NOT NULL,
    user_id integer NOT NULL
);
 /   DROP TABLE public.socialaccount_socialaccount;
       public         heap    postgres    false            �            1259    16482 "   socialaccount_socialaccount_id_seq    SEQUENCE     �   CREATE SEQUENCE public.socialaccount_socialaccount_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.socialaccount_socialaccount_id_seq;
       public          postgres    false    245            
           0    0 "   socialaccount_socialaccount_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.socialaccount_socialaccount_id_seq OWNED BY public.socialaccount_socialaccount.id;
          public          postgres    false    246            �            1259    16483    socialaccount_socialapp    TABLE     #  CREATE TABLE public.socialaccount_socialapp (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    name character varying(40) NOT NULL,
    client_id character varying(191) NOT NULL,
    secret character varying(191) NOT NULL,
    key character varying(191) NOT NULL
);
 +   DROP TABLE public.socialaccount_socialapp;
       public         heap    postgres    false            �            1259    16488    socialaccount_socialapp_id_seq    SEQUENCE     �   CREATE SEQUENCE public.socialaccount_socialapp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.socialaccount_socialapp_id_seq;
       public          postgres    false    247                       0    0    socialaccount_socialapp_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.socialaccount_socialapp_id_seq OWNED BY public.socialaccount_socialapp.id;
          public          postgres    false    248            �            1259    16489    socialaccount_socialapp_sites    TABLE     �   CREATE TABLE public.socialaccount_socialapp_sites (
    id integer NOT NULL,
    socialapp_id integer NOT NULL,
    site_id integer NOT NULL
);
 1   DROP TABLE public.socialaccount_socialapp_sites;
       public         heap    postgres    false            �            1259    16492 $   socialaccount_socialapp_sites_id_seq    SEQUENCE     �   CREATE SEQUENCE public.socialaccount_socialapp_sites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.socialaccount_socialapp_sites_id_seq;
       public          postgres    false    249                       0    0 $   socialaccount_socialapp_sites_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.socialaccount_socialapp_sites_id_seq OWNED BY public.socialaccount_socialapp_sites.id;
          public          postgres    false    250            �            1259    16493    socialaccount_socialtoken    TABLE     �   CREATE TABLE public.socialaccount_socialtoken (
    id integer NOT NULL,
    token text NOT NULL,
    token_secret text NOT NULL,
    expires_at timestamp with time zone,
    account_id integer NOT NULL,
    app_id integer NOT NULL
);
 -   DROP TABLE public.socialaccount_socialtoken;
       public         heap    postgres    false            �            1259    16498     socialaccount_socialtoken_id_seq    SEQUENCE     �   CREATE SEQUENCE public.socialaccount_socialtoken_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.socialaccount_socialtoken_id_seq;
       public          postgres    false    251                       0    0     socialaccount_socialtoken_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.socialaccount_socialtoken_id_seq OWNED BY public.socialaccount_socialtoken.id;
          public          postgres    false    252            �           2604    16499    account_emailaddress id    DEFAULT     �   ALTER TABLE ONLY public.account_emailaddress ALTER COLUMN id SET DEFAULT nextval('public.account_emailaddress_id_seq'::regclass);
 F   ALTER TABLE public.account_emailaddress ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214            �           2604    16500    account_emailconfirmation id    DEFAULT     �   ALTER TABLE ONLY public.account_emailconfirmation ALTER COLUMN id SET DEFAULT nextval('public.account_emailconfirmation_id_seq'::regclass);
 K   ALTER TABLE public.account_emailconfirmation ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            �           2604    16501    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            �           2604    16502    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220            �           2604    16503    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            �           2604    16504    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    224            �           2604    16505    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225            �           2604    16506    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228            �           2604    16507    cars_car id    DEFAULT     j   ALTER TABLE ONLY public.cars_car ALTER COLUMN id SET DEFAULT nextval('public.cars_car_id_seq'::regclass);
 :   ALTER TABLE public.cars_car ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230            �           2604    16508    contacts_contact id    DEFAULT     z   ALTER TABLE ONLY public.contacts_contact ALTER COLUMN id SET DEFAULT nextval('public.contacts_contact_id_seq'::regclass);
 B   ALTER TABLE public.contacts_contact ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232            �           2604    16509    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234            �           2604    16510    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236            �           2604    16511    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238            �           2604    16512    django_site id    DEFAULT     p   ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);
 =   ALTER TABLE public.django_site ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    241            �           2604    16513    pages_team id    DEFAULT     o   ALTER TABLE ONLY public.pages_team ALTER COLUMN id SET DEFAULT nextval('public.pages_teams_id_seq'::regclass);
 <   ALTER TABLE public.pages_team ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    243            �           2604    16514    socialaccount_socialaccount id    DEFAULT     �   ALTER TABLE ONLY public.socialaccount_socialaccount ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialaccount_id_seq'::regclass);
 M   ALTER TABLE public.socialaccount_socialaccount ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    245            �           2604    16515    socialaccount_socialapp id    DEFAULT     �   ALTER TABLE ONLY public.socialaccount_socialapp ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_id_seq'::regclass);
 I   ALTER TABLE public.socialaccount_socialapp ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    248    247            �           2604    16516     socialaccount_socialapp_sites id    DEFAULT     �   ALTER TABLE ONLY public.socialaccount_socialapp_sites ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_sites_id_seq'::regclass);
 O   ALTER TABLE public.socialaccount_socialapp_sites ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    250    249            �           2604    16517    socialaccount_socialtoken id    DEFAULT     �   ALTER TABLE ONLY public.socialaccount_socialtoken ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialtoken_id_seq'::regclass);
 K   ALTER TABLE public.socialaccount_socialtoken ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    252    251            �          0    16399    account_emailaddress 
   TABLE DATA           W   COPY public.account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
    public          postgres    false    214   
      �          0    16403    account_emailconfirmation 
   TABLE DATA           ]   COPY public.account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
    public          postgres    false    216   $
      �          0    16407 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    218   A
      �          0    16411    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    220   ^
      �          0    16415    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    222   {
      �          0    16419 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    224   �      �          0    16424    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    225   F      �          0    16429    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    228   c      �          0    16433    cars_car 
   TABLE DATA           D  COPY public.cars_car (id, car_title, state, city, color, model, year, condition, price, description, car_photo, car_photo_1, car_photo_2, car_photo_3, car_photo_4, features, body_style, engine, transmission, interior, miles, doors, passengers, vin_no, milage, fuel_type, no_of_owners, is_featured, created_date) FROM stdin;
    public          postgres    false    230   �      �          0    16439    contacts_contact 
   TABLE DATA           �   COPY public.contacts_contact (id, first_name, last_name, car_id, customer_need, car_title, city, state, email, phone, message, user_id, create_date, price) FROM stdin;
    public          postgres    false    232   �      �          0    16445    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    234   �!      �          0    16452    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    236   %      �          0    16456    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    238   �%      �          0    16462    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    240   �)      �          0    16467    django_site 
   TABLE DATA           7   COPY public.django_site (id, domain, name) FROM stdin;
    public          postgres    false    241   �-      �          0    16471 
   pages_team 
   TABLE DATA           �   COPY public.pages_team (id, first_name, last_name, designation, photo, facebook_link, twitter_link, google_plus_link, created_date) FROM stdin;
    public          postgres    false    243   .      �          0    16477    socialaccount_socialaccount 
   TABLE DATA           v   COPY public.socialaccount_socialaccount (id, provider, uid, last_login, date_joined, extra_data, user_id) FROM stdin;
    public          postgres    false    245   1/      �          0    16483    socialaccount_socialapp 
   TABLE DATA           ]   COPY public.socialaccount_socialapp (id, provider, name, client_id, secret, key) FROM stdin;
    public          postgres    false    247   N/      �          0    16489    socialaccount_socialapp_sites 
   TABLE DATA           R   COPY public.socialaccount_socialapp_sites (id, socialapp_id, site_id) FROM stdin;
    public          postgres    false    249   0      �          0    16493    socialaccount_socialtoken 
   TABLE DATA           l   COPY public.socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) FROM stdin;
    public          postgres    false    251   20                 0    0    account_emailaddress_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.account_emailaddress_id_seq', 1, false);
          public          postgres    false    215                       0    0     account_emailconfirmation_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.account_emailconfirmation_id_seq', 1, false);
          public          postgres    false    217                       0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    219                       0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    221                       0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 60, true);
          public          postgres    false    223                       0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    226                       0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 8, true);
          public          postgres    false    227                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 25, true);
          public          postgres    false    229                       0    0    cars_car_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.cars_car_id_seq', 6, true);
          public          postgres    false    231                       0    0    contacts_contact_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.contacts_contact_id_seq', 24, true);
          public          postgres    false    233                       0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 36, true);
          public          postgres    false    235                       0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 15, true);
          public          postgres    false    237                       0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 49, true);
          public          postgres    false    239                       0    0    django_site_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);
          public          postgres    false    242                       0    0    pages_teams_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.pages_teams_id_seq', 5, true);
          public          postgres    false    244                       0    0 "   socialaccount_socialaccount_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.socialaccount_socialaccount_id_seq', 2, true);
          public          postgres    false    246                       0    0    socialaccount_socialapp_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.socialaccount_socialapp_id_seq', 2, true);
          public          postgres    false    248                       0    0 $   socialaccount_socialapp_sites_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.socialaccount_socialapp_sites_id_seq', 2, true);
          public          postgres    false    250                        0    0     socialaccount_socialtoken_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.socialaccount_socialtoken_id_seq', 2, true);
          public          postgres    false    252            �           2606    16519 3   account_emailaddress account_emailaddress_email_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_email_key UNIQUE (email);
 ]   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_email_key;
       public            postgres    false    214            �           2606    16521 .   account_emailaddress account_emailaddress_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_pkey;
       public            postgres    false    214            �           2606    16523 ;   account_emailconfirmation account_emailconfirmation_key_key 
   CONSTRAINT     u   ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_key_key UNIQUE (key);
 e   ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirmation_key_key;
       public            postgres    false    216            �           2606    16525 8   account_emailconfirmation account_emailconfirmation_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirmation_pkey;
       public            postgres    false    216            �           2606    16527    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    218            �           2606    16529 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    220    220            �           2606    16531 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    220            �           2606    16533    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    218            �           2606    16535 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    222    222            �           2606    16537 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    222            �           2606    16539 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    225            �           2606    16541 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    225    225            �           2606    16543    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    224                        2606    16545 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    228                       2606    16547 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    228    228            �           2606    16549     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    224                       2606    16551    cars_car cars_car_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.cars_car
    ADD CONSTRAINT cars_car_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.cars_car DROP CONSTRAINT cars_car_pkey;
       public            postgres    false    230                       2606    16553 &   contacts_contact contacts_contact_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.contacts_contact
    ADD CONSTRAINT contacts_contact_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.contacts_contact DROP CONSTRAINT contacts_contact_pkey;
       public            postgres    false    232            
           2606    16555 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    234                       2606    16557 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    236    236                       2606    16559 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    236                       2606    16561 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    238                       2606    16563 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    240                       2606    16565 ,   django_site django_site_domain_a2e37b91_uniq 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);
 V   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_domain_a2e37b91_uniq;
       public            postgres    false    241                       2606    16567    django_site django_site_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_pkey;
       public            postgres    false    241                       2606    16569    pages_team pages_teams_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.pages_team
    ADD CONSTRAINT pages_teams_pkey PRIMARY KEY (id);
 E   ALTER TABLE ONLY public.pages_team DROP CONSTRAINT pages_teams_pkey;
       public            postgres    false    243                       2606    16571 <   socialaccount_socialaccount socialaccount_socialaccount_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.socialaccount_socialaccount DROP CONSTRAINT socialaccount_socialaccount_pkey;
       public            postgres    false    245                        2606    16573 R   socialaccount_socialaccount socialaccount_socialaccount_provider_uid_fc810c6e_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq UNIQUE (provider, uid);
 |   ALTER TABLE ONLY public.socialaccount_socialaccount DROP CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq;
       public            postgres    false    245    245            %           2606    16575 Y   socialaccount_socialapp_sites socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq UNIQUE (socialapp_id, site_id);
 �   ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq;
       public            postgres    false    249    249            #           2606    16577 4   socialaccount_socialapp socialaccount_socialapp_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.socialaccount_socialapp
    ADD CONSTRAINT socialaccount_socialapp_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.socialaccount_socialapp DROP CONSTRAINT socialaccount_socialapp_pkey;
       public            postgres    false    247            '           2606    16579 @   socialaccount_socialapp_sites socialaccount_socialapp_sites_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp_sites_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_socialapp_sites_pkey;
       public            postgres    false    249            -           2606    16581 S   socialaccount_socialtoken socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq UNIQUE (app_id, account_id);
 }   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq;
       public            postgres    false    251    251            /           2606    16583 8   socialaccount_socialtoken socialaccount_socialtoken_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_socialtoken_pkey;
       public            postgres    false    251            �           1259    16584 (   account_emailaddress_email_03be32b2_like    INDEX     ~   CREATE INDEX account_emailaddress_email_03be32b2_like ON public.account_emailaddress USING btree (email varchar_pattern_ops);
 <   DROP INDEX public.account_emailaddress_email_03be32b2_like;
       public            postgres    false    214            �           1259    16585 %   account_emailaddress_user_id_2c513194    INDEX     i   CREATE INDEX account_emailaddress_user_id_2c513194 ON public.account_emailaddress USING btree (user_id);
 9   DROP INDEX public.account_emailaddress_user_id_2c513194;
       public            postgres    false    214            �           1259    16586 3   account_emailconfirmation_email_address_id_5b7f8c58    INDEX     �   CREATE INDEX account_emailconfirmation_email_address_id_5b7f8c58 ON public.account_emailconfirmation USING btree (email_address_id);
 G   DROP INDEX public.account_emailconfirmation_email_address_id_5b7f8c58;
       public            postgres    false    216            �           1259    16587 +   account_emailconfirmation_key_f43612bd_like    INDEX     �   CREATE INDEX account_emailconfirmation_key_f43612bd_like ON public.account_emailconfirmation USING btree (key varchar_pattern_ops);
 ?   DROP INDEX public.account_emailconfirmation_key_f43612bd_like;
       public            postgres    false    216            �           1259    16588    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    218            �           1259    16589 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    220            �           1259    16590 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    220            �           1259    16591 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    222            �           1259    16592 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    225            �           1259    16593 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    225            �           1259    16594 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    228                       1259    16595 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    228            �           1259    16596     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    224                       1259    16597 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    234                       1259    16598 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    234                       1259    16599 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    240                       1259    16600 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    240                       1259    16601     django_site_domain_a2e37b91_like    INDEX     n   CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);
 4   DROP INDEX public.django_site_domain_a2e37b91_like;
       public            postgres    false    241            !           1259    16602 ,   socialaccount_socialaccount_user_id_8146e70c    INDEX     w   CREATE INDEX socialaccount_socialaccount_user_id_8146e70c ON public.socialaccount_socialaccount USING btree (user_id);
 @   DROP INDEX public.socialaccount_socialaccount_user_id_8146e70c;
       public            postgres    false    245            (           1259    16603 .   socialaccount_socialapp_sites_site_id_2579dee5    INDEX     {   CREATE INDEX socialaccount_socialapp_sites_site_id_2579dee5 ON public.socialaccount_socialapp_sites USING btree (site_id);
 B   DROP INDEX public.socialaccount_socialapp_sites_site_id_2579dee5;
       public            postgres    false    249            )           1259    16604 3   socialaccount_socialapp_sites_socialapp_id_97fb6e7d    INDEX     �   CREATE INDEX socialaccount_socialapp_sites_socialapp_id_97fb6e7d ON public.socialaccount_socialapp_sites USING btree (socialapp_id);
 G   DROP INDEX public.socialaccount_socialapp_sites_socialapp_id_97fb6e7d;
       public            postgres    false    249            *           1259    16605 -   socialaccount_socialtoken_account_id_951f210e    INDEX     y   CREATE INDEX socialaccount_socialtoken_account_id_951f210e ON public.socialaccount_socialtoken USING btree (account_id);
 A   DROP INDEX public.socialaccount_socialtoken_account_id_951f210e;
       public            postgres    false    251            +           1259    16606 )   socialaccount_socialtoken_app_id_636a42d7    INDEX     q   CREATE INDEX socialaccount_socialtoken_app_id_636a42d7 ON public.socialaccount_socialtoken USING btree (app_id);
 =   DROP INDEX public.socialaccount_socialtoken_app_id_636a42d7;
       public            postgres    false    251            0           2606    16607 J   account_emailaddress account_emailaddress_user_id_2c513194_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_2c513194_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_user_id_2c513194_fk_auth_user_id;
       public          postgres    false    3316    214    224            1           2606    16612 U   account_emailconfirmation account_emailconfirm_email_address_id_5b7f8c58_fk_account_e    FK CONSTRAINT     �   ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirm_email_address_id_5b7f8c58_fk_account_e FOREIGN KEY (email_address_id) REFERENCES public.account_emailaddress(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirm_email_address_id_5b7f8c58_fk_account_e;
       public          postgres    false    216    214    3291            2           2606    16617 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    222    3314    220            3           2606    16622 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    220    218    3303            4           2606    16627 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    236    3343    222            5           2606    16632 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    218    225    3303            6           2606    16637 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    224    225    3316            7           2606    16642 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    222    3314    228            8           2606    16647 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    3316    224    228            9           2606    16652 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    234    3343    236            :           2606    16657 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    224    3316    234            >           2606    16662 O   socialaccount_socialtoken socialaccount_social_account_id_951f210e_fk_socialacc    FK CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_account_id_951f210e_fk_socialacc FOREIGN KEY (account_id) REFERENCES public.socialaccount_socialaccount(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_social_account_id_951f210e_fk_socialacc;
       public          postgres    false    245    251    3358            ?           2606    16667 K   socialaccount_socialtoken socialaccount_social_app_id_636a42d7_fk_socialacc    FK CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_app_id_636a42d7_fk_socialacc FOREIGN KEY (app_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_social_app_id_636a42d7_fk_socialacc;
       public          postgres    false    247    251    3363            <           2606    16672 P   socialaccount_socialapp_sites socialaccount_social_site_id_2579dee5_fk_django_si    FK CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_site_id_2579dee5_fk_django_si FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_social_site_id_2579dee5_fk_django_si;
       public          postgres    false    249    3354    241            =           2606    16677 U   socialaccount_socialapp_sites socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc    FK CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc FOREIGN KEY (socialapp_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc;
       public          postgres    false    247    249    3363            ;           2606    16682 X   socialaccount_socialaccount socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.socialaccount_socialaccount DROP CONSTRAINT socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id;
       public          postgres    false    3316    224    245            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   \  x�}U[��0��O�	V1�|�5F!�͢M �3����v��(��J]�ˉQ��1�n���e�_}�����ۍw�P� Z z��"6���~��m	H��9�=U㶥��<q ���8������P���q]�;U��a��E�M�8ҌH�h1y��,~"�O)Er�����J����զ�8m��8��&k���$w�]�úӨ*�Gڴܠ`�CN�r���&9��MA��h���2�fU�IX�\T8�h)�Ǒ�����	`aj�k��j���Թ�4�8>D������a@�ju����jS���v��C��u<�=g|V�����S�����p�W0�;]��}&��<��^���	\%
�}�U�� ���.D�#� C�:2���Q�2G< �l����V�w�L�)�C<ӥh􁏾�D4� A�R��sI�v	�u��g綏mr��]��,{%$��1�^̣Iq�Ϸ�RH)��N���3Ϗ�G]�O	�t%�ݹ"V�D�흋b�H��$��!I�O��)S��PW�YR�QT�%!�LE�1	Ix�(h��I���X&8�U��nH)������H,2q}ywW$eY�����?.@G:      �   O  x�m��n�@�kx�^p׀˰+�Ic��5�m�4 G�3
��i�D�l2���ŗ_ar'v}��BȐ�����0JNI���\i����R�[A���e�v��-��Ųa�=1�@�ѐxJE����%�a|�v�(e���w}�����+�G�Q�E�g����2���`3�A��F�}�;�?ø}<H�Bct�R) �^S3��N��3u�(�3�������Q���Q�g�T���P ��vx�7z�7�Y��'n�^4y��%��0��j�\.�T�'+�z��Y�o�ݶ���K����N�W2f�^�2�F����01ň�}������+�      �      x������ � �      �   i   x����0C�3��$;z��:���uI�X�>����MOk���wޘ�)�̅��9��B��(���"�A��(Z
W�ī����9)^��j��כ��yV�      �   �  x��ZIo�>ӿ�� %6��d��֌���Kf��]dװ�ũ�M�b]r	r�?�!� �)� rI~��Hޫ��(R6�1�����m�{UN��tz�II%'n�O�\�.��R���&�	�e�8���bA�m���s�"d��.�shq���+BɌOẍ��(�SI�R��2Z���6��1�i"fb�#Ff4N��OR�d��.�q���p����Ɉ�x�?�\���qFa"H����R9�^������S���xo��(���#n	��łIC5%��A#≄�7V�4{׉��(xL�4�3'd�&d�b&i��S�I��D��$!�e��7��#Eb
;��@��s�ۙ���Xi�ű3��s*�G�w�ΙD^�X����� ֎�|a�N�G<�1'O`L�"E�;b��!��E"$��,,mZ��Z�dp,�%���Jӵ�C�=�r�$G�S%@�q,�8�(0񒫄�!�+֒��C�}�7�R�g,(t�4r8n�28e#�R��+jQ��!0��j��������9�f������O�����ӻ���t۷��>3����G2堶G"N���i��6N��`�.Gt��p�3r�T	��_j-:O� ��䘍#���Q�!����8P,���m�ڻ�3����e<X$��_{"ٲ�h�o�Z�7/����C�����;n�֩�dHbͩ%5��t�.i����~�m4;�:�F@"b)@�G�G]�9h�A����w�Y@c=�x�V��:�㑚?z�`�x�UW{�g�͠��9��b����w�W�����^����_���u}�K�.�f�RO����%,MM�vg���`����&�\����xw��|�Nw������y:���/��'��NьF��������t���h�>G�MJ;�b����� r�гL"1��f�܊s�9�Ӟ.n���E�Kg��ֵ�Z)jc��x���>�!d,x��A��$��5��-��S�z����H,5�UI W��b�x���h6T4bj8Zg"`Q~.8�-�==93#=�d<�C���
#x�hR9�J�(���E4U
�hx�P�X����h���J/������·�HX���~p�*i�P2�6(��xTb���qv1p��* �@Df�%�㫈����t��P׵�6Z@r�L2Ш�߂�P�8`r��*4���'��%`�Ob�h��g��V��>&���hr����$����ۜJ����o�`�Hp<I��L&!�d,�lk��NY�E��,�i��_�Y�� �U'��ř��ad �A�o�"���g��_��]�8�/��
{�_���2c��`��ȫ�J_��mP����fJ�ZJ�]Z��>���R{52o����,��*Rݶ���V�1�1ۺG���ӆrG0��PvpW<�L@�Jp��4��	���4���m ��b��qNN�f#��,4i�m��Y0Z�j5q���p��Gԟ�c�Fh_��A*�Z��4z�/��7��f�n�,����h��f~�3��o��\"�6N1�
D>��19MY���a�Š�nS=��M�����Fw�v�_	�:y(�	�����x��}Wb�$���	�%����褔��,�A3�#�6�47a�b!��
�����M�3$x��k�/��R ���h���\�,�CL�w��@J%�C�[�lR�iiǢ�3�kQ:0�X�6��]���U����2� /��2�k<�R!q���8�Q���γ(e��Qz6_	3���y1M�6��ԅÃh�O�6�X;V�І�X|����?��J���2��T�S7�c���-�-���G�`�Eb�k1�qm��^�]���08�xYe�ʂ)^�hbG�x�Q��T�x:N1��9�C�=b���A�j�1�2Ą����l���a����(��yt3l޾�~7�:�
���WA�/@'�:��Zn� ,,���N��wV���"�|��t���X��Y^&ғ���h������9���p��2Pw�=��r����ㆁn���s#�I�6I���}o`ئ��N��;���������y}��U)vQ9=��W%�W�j����B��a�n�.�|g���f��-�#�_5��ꝋw�^��>������;M�m[m2 ��L=��ɲ��]��!v�]���7F{�Z��j�W!�q&��IM��ؔ�^��TUѶ)�n��H��ƺ��5�uM�q�Y�w�m}}h�׌�i�����%Z���/7�b0�=�[�y�
���z�.0�����9���#��N$۽zy�W�,���	3!���hǚF@]�����i�����8����Kv�E�����q@U��^�o~&�UC�9��OGE���l����ޣ�8Y�^S]�`y�Tle]��@S���G��	8i�yڅ�J��$���(���/O����JÙ4j�m���T�Y����[�,NjEL��;���HPS�M\�!����(WRĈu+Z4��T�!<ϩ�h��ڲf�5VgH�s0�)�;���f)��PV�u��(�hi�}����z"�R�Kr?b�C	�ZN�C�b�;�{��ͫ�"],����ۺÈ<h���t���[��(��6��P#|>榴Q$��IV:=�MZZ��`��Ƣ˖b;�2�1Uq�w�\��9�JGf%w �����l�='�T�����^��TK����z!.o�:�n�Mx������[��U�Ӻ��i�o�:���J�a��� �p��pn��4�Znh���>��V	�����c��s�=tc=Z��U6� �@?|�8mK��Z AnF�J��";V8JAܸ�l���V�#]���U����B%}}d����=�ͤR��Fsp��JW��H~�S��ܥ��A���<�?����I��
O�R]9,�D�ȒZ[1@�[g���m��gLxip�ǯ���ʌV]�C��a�:���y�4�:�ų���n��Q���ӷ䁹<�[�z���Л���J�*NUò�fv���c@�����x��J�3oDp�J1��k�i:��9��Q����d��4���67���~gsV��������^F��{_�`��j.��V�K�Һ"h�.���h�ȎZ��f�R��.�}�b����j"b�S<؜U�YɊ���:��T�;��.����P#�d����~{����Ȏ��5�o�eT�x�R���^��O�jJ�NB��eW���A��"X�,B��ԗ暾:x��i,���9�����#��?\����/�WWן�v��ן���l��曍3�%�NS ����8-�� �����3$2�4��S�lZ�#$M�Q�B�m��-�썷��*�U1�f$�N��2|F3��RP��ט���h��B|�en��󇠮ߙ�]��ܥ�i>�5��J�/�@(����j<�$��ܷ�H5-�2�6r姇���LS/�Œ�u�v�M!��!$�qR�n$���?��6�@{��ubZ�ʧI�ܡbx�ca�&E� ۈm�JKr�P�HqXQ.�ɖ��Y*Oa?=�{�`�����f�m�7�����f,��������c���Qr���9��1�(n,0���ۃ纇v��i�B��&��<�P�F|������w�ݻ�?�K�}      �     x���[S�6���_�^�{���7!>:�0��7"�c�m1�M�e[�XW��$�419e��w_�B�Q�D�����_\����t2���++�h@b|$���<I�����u	k�C)���U�/Uՠ��1O娃@(� �x�h��(�AF#?Hq/Q0��T���Fv���P:Ǉ�J"ћ�j!�_�8����A���(�)�ZM X���OH��x�`�A�(W�7�����g�� �~�A<d4��G�V�u���Q�Hx)4b�Ha�?�IH��C�5�d�;�~�^h|�]��N��3�{l����/U��F�o����������P�Y�f$�i��@��:/*D����Ӄ���'g'����|���g>\���Ql��n!��)�M
B2�8�	�xlaVs�j{������)��^��i^|��mg�<,C��<����Qnlyy��}�D��x�{��:�"c?�F�Ĺ�F�W��Xm������sF�;cw1|&��g!{i0ڕD輖+�~���-����ֹ�柶!�������ؿ~ē8'������vu׎���W�~�����ȂOr�ap�< c�IXK-ݗǕɍ�oS8��o�L�+�<+恮vb
�2?�,zkx��H�u�(�ت5~Q������t���P�C�r��B���=Q�`v�ά�b5�aQ��$&�h �/$(�.�~�洺->Ң]V�m�
h�J�����l�:F��9���7��?P���P���%4����f4�d&:ړ�z�;F�|8���4�{��#k]
��R<�zY
3���~����R��Xv��Xl�j��2����/�BG8THmi|(�l��hG��Ջ�^(��Zة��T�����U�-ܹ~{���U�a0�)(ˆÍ2J7A����˾ma�i%�
�JW��]sV���ڶ�F�V�	�q���0�mؠ-�D���_��o�{���JM$=�p�К���'x=�`�R
xn���G#��Z�^����	J�4ub[�����l�/�}�      �   Z  x���M��6���_A��%�~��f?4�i�ki���b ه�"��CI�ג�$Ml��C�w����B]�fs�r�\���/��d�6����/wϫPe������3��L�R��1 lRCv�X?-�� 7LJ�:G��Kz�^��)�^M��.����bҫ�m�~(�\ �9@��F��ٛ����9C"ygA��;Ҳ۲mC[1�{���	�$���s�ye��`�-�M�9u��qS��1V99:z��R�{��T��z�{Z@�	R�\Kn�V&��7a�-A��vu���b�J�q�(��� �1r�Q)7B��ꠄ�R.��%;�q���Q���-�q���\Ry�W�����C6RR�w�0`Z�R�y����r`TM=��ǡe�؇�w�]E��:,��8��%䒲�^�>����7M�.���
��w�؏�a]��?����3��KCMLA�ќF"�T�u�b�˝p2��Z?�f3�V�UY}�[]�m�քm�������S����=E��E�-�)L��dD1�2Ȋ�P>2�V��j��Ԝ*��V��qS�����)�r丐�=��1v��]���i�% �*G����1:�#YC�=��R3:N[v��A��GxK��KϕvF�پ+�_�����M޵�z4�����u.�
��:*���9�UJ�'����9\+�-uƐ�	�����Ara�`z�Y�m�v�yN�Dq�u��ZpL���cz��d�<�\	�묋�26_��0U�\:�*�6���~/ǹ<��@���N��k˝Q
����o��r�5C�;�a�~�����.�߳nv�.M�?�0��m�uUl^t���@c�s�F��Щ񋋋�}k�      �   �   x�mLI�@<w=�8*.��Z��,�n�^I4�R�ݑ���
w�d�G�9{ӕ�D�Ɛ�ϝ$�#���T�Ơr�yq�����"����2�l,��7R�׺�=i���A8G�}��D=�m��p�:}���#i�����U�����E�5���$�w �K�j>      �   �  x�����:�3W�L��쵬U�e�-ۖ���'�BhР���>���va��������N!����9nP |
�����&U!Y)��P�i.�Z[¨�M�?u�OS�t$�.A�����4�k=�?�f�/2H�ugН�:���n���cs�?C��
Y�a`�U����~�}sj�(2BF�Yꇾ9�����x�)����|�c���"J*&�삢+�2�G{j��ŔXk�P�#%|�p����<Z
�0�#��Ls(}Ǚ]��K'�"�����t�R�Xt*V$H�B����\����}3����a��v��Ë[��L1т����Pc�`
L.$�*�[(K ��@�P ���8\�oatP%�^0�/g.Q������`�r}40#Z�fj�O����ؘ`7�X�W5�T���f��L ��>�k�*0F�)�ͮ_��j�ϓ
SK
)tl�E�����j[KY!�MvF\Ԕ��N�]��1՚\exb�X!d��vå�K�O��$Q-]tT�Q�����\�J�����6S7���I�)P}����~�s{黿����2IQ�v|�{�V;%u:h�Z���_�?$=(�� p)k���o�������n.����\fY���k��ˋ"���ԡx�h��F���&Q���y"(SK�{Q&f�����y�����0o-*�Ĕ�ev<�ٕ~&��&�UkH2#�g���PKS	e���I*#�5�	\���@:��c,�ڔ�� vPe � 6�5@Ā��	a����*���b23 �w	v!d^\�H`3�4�d�E�w	�� ����V��7��FL���%A�!v�F7�̍�r�V�2ڊ7�q)�̎���L��A\�&�,+�ޓ(,Pi�p��(nA��T�BG�L��$4�O�����ˉ�
� x}�4�dnE�<����a���LK�W����?��4+      �   6  x��ێ�6��g�b�@"� �ԋd�0���$C�J[�`0�@�O_3�v5��Z�6ֿ>�y�]\ލ�����)��Ќu��]jJ?E%�r	���GeT2��]�7%,�ʨ���G'��j�����۰.D�H�U"&�&O�Ȝ-��M�/�1�b�}�	��	w[�_���p�wy����+�^�Ƶ.��z;��BB�U�=xWW@�	'@�@�B���c���g2\ߛ+��i �ʲJc��]�D%Ea�~���0�´qd/���~U�A(i�qjӁ�B�2�,PR�Yd���w2:xy�_�e>��h3�ȳ��*L��5�k�(/r�ERg���u
�����ܯ��u頱mD���DR����^����p@E���QDΎS����P�F����z#{SEΆ+=-��:K�ڑp��'t�B�p����������]w��'�1�$�e�������r�1��Ȏ ��S�C>��K���d�U^]�L��-�	�qW�8n�Tk�p~�*�`��J���X9#�M���E�5�VP������΅�5�l�P�Cd���7<R�\��҂�@���p��>�C��e	� �b����]yJ��$��L�JXr�\��,����cW����|��'�ۛ�ż��<M�4��Auށ�DI��%��9�}��q��nVh����e��g�肃��ś	�ًw�Џ#�f�~�>��qeه����<�)��ˢm�s��5�Kds���̜̗����O�.=�ݸն�br����*ٰ��_�a�T����ϗ���Gt�DYZ�"���*$HS��S�׼k��aX�Uy����!!��k+� �&�W�J�uy3l����q_��j3[f/�����$d|�����$�ȧ�����ӭ4��p�80����n@��),SD�K-(�PnDl{�Ξɝ`��A�L]{k��[�Q�>���\�{E*���9k�5��KsHmu-��A*��G������O��a��)3�4FvgS6ͅ�
��C��,�<�������&cī���YĘ"}�f��������ore�      �       x�3���ON���/.��0�0D�r��qqq �
�      �     x��ѻn�0��</���X��h��]\�-�̟T}���:���G��ᤵGO���r�� ,�`��L�B��jц�s�9�d@��:�?l���h�{��#�����-ZK3�2�S.kVֲ���ڨ��D���~��;�gq���0�!lت�i��LR�+f��&�C�����4ŕ�����eR��X�d�+.�^Q*b��Eyq�q��<C������4����w��h^ܾ��Oo||݀��!�P)�Q�
y�I�����      �      x������ � �      �   �   x�-̽� @�����R.���,&���q)Mi��|zu:g�ks���zn�4!jkdEh	�%H�t&J��Pյr���XO�@(h��>�����\ �Z��ռLڎip��m�`:wm�+����5��>?�9���Ð�7X�Ө��yw\���1>·���R!>��=�      �      x�3�4�4�2�4�1z\\\ 	      �      x������ � �     