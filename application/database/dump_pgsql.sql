PGDMP     	    
                s            kkcar    9.4.4    9.4.4 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           1262    16638    kkcar    DATABASE     �   CREATE DATABASE kkcar WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';
    DROP DATABASE kkcar;
             postgres    false                        2615    16639    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            �           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6            �            3079    16640    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    211            �            1259    33086    odb_pids    TABLE     �   CREATE TABLE odb_pids (
    id integer NOT NULL,
    manufacture integer,
    "PID" integer,
    descriptionlocal text,
    descriptionodb text,
    "PID_MODE" integer
);
    DROP TABLE public.odb_pids;
       public         postgres    false    6            �           0    0    odb_pids    ACL     �   REVOKE ALL ON TABLE odb_pids FROM PUBLIC;
REVOKE ALL ON TABLE odb_pids FROM postgres;
GRANT ALL ON TABLE odb_pids TO postgres;
GRANT ALL ON TABLE odb_pids TO kkcar_webservice;
            public       postgres    false    194            �            1259    33084    ODB_PID_id_seq    SEQUENCE     r   CREATE SEQUENCE "ODB_PID_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."ODB_PID_id_seq";
       public       postgres    false    6    194            �           0    0    ODB_PID_id_seq    SEQUENCE OWNED BY     6   ALTER SEQUENCE "ODB_PID_id_seq" OWNED BY odb_pids.id;
            public       postgres    false    193            �           0    0    ODB_PID_id_seq    ACL     �   REVOKE ALL ON SEQUENCE "ODB_PID_id_seq" FROM PUBLIC;
REVOKE ALL ON SEQUENCE "ODB_PID_id_seq" FROM postgres;
GRANT ALL ON SEQUENCE "ODB_PID_id_seq" TO postgres;
GRANT ALL ON SEQUENCE "ODB_PID_id_seq" TO kkcar_webservice;
            public       postgres    false    193            �            1259    16645    accounts    TABLE     a   CREATE TABLE accounts (
    id integer NOT NULL,
    uuid text,
    login text,
    pass text
);
    DROP TABLE public.accounts;
       public         garikk    false    6            �           0    0    accounts    ACL     {   REVOKE ALL ON TABLE accounts FROM PUBLIC;
REVOKE ALL ON TABLE accounts FROM garikk;
GRANT ALL ON TABLE accounts TO garikk;
            public       garikk    false    172            �            1259    16651    accounts_id_seq    SEQUENCE     q   CREATE SEQUENCE accounts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.accounts_id_seq;
       public       garikk    false    6    172            �           0    0    accounts_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE accounts_id_seq OWNED BY accounts.id;
            public       garikk    false    173            �           0    0    accounts_id_seq    ACL     �   REVOKE ALL ON SEQUENCE accounts_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE accounts_id_seq FROM garikk;
GRANT ALL ON SEQUENCE accounts_id_seq TO garikk;
            public       garikk    false    173            �            1259    41330    confeditor_blockview    TABLE     �   CREATE TABLE confeditor_blockview (
    id integer NOT NULL,
    configuration integer,
    plugin integer,
    x integer,
    y integer
);
 (   DROP TABLE public.confeditor_blockview;
       public         postgres    false    6            �           0    0    confeditor_blockview    ACL     �   REVOKE ALL ON TABLE confeditor_blockview FROM PUBLIC;
REVOKE ALL ON TABLE confeditor_blockview FROM postgres;
GRANT ALL ON TABLE confeditor_blockview TO postgres;
GRANT ALL ON TABLE confeditor_blockview TO kkcar_webservice;
            public       postgres    false    208            �            1259    41328    confeditor_blockview_id_seq    SEQUENCE     }   CREATE SEQUENCE confeditor_blockview_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.confeditor_blockview_id_seq;
       public       postgres    false    208    6            �           0    0    confeditor_blockview_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE confeditor_blockview_id_seq OWNED BY confeditor_blockview.id;
            public       postgres    false    207            �           0    0    confeditor_blockview_id_seq    ACL       REVOKE ALL ON SEQUENCE confeditor_blockview_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE confeditor_blockview_id_seq FROM postgres;
GRANT ALL ON SEQUENCE confeditor_blockview_id_seq TO postgres;
GRANT ALL ON SEQUENCE confeditor_blockview_id_seq TO kkcar_webservice;
            public       postgres    false    207            �            1259    16653    config_types    TABLE     F   CREATE TABLE config_types (
    id integer NOT NULL,
    type text
);
     DROP TABLE public.config_types;
       public         postgres    false    6            �           0    0    config_types    ACL     �   REVOKE ALL ON TABLE config_types FROM PUBLIC;
REVOKE ALL ON TABLE config_types FROM postgres;
GRANT ALL ON TABLE config_types TO postgres;
            public       postgres    false    174            �            1259    16659    config_types_id_seq    SEQUENCE     u   CREATE SEQUENCE config_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.config_types_id_seq;
       public       postgres    false    6    174            �           0    0    config_types_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE config_types_id_seq OWNED BY config_types.id;
            public       postgres    false    175            �           0    0    config_types_id_seq    ACL     �   REVOKE ALL ON SEQUENCE config_types_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE config_types_id_seq FROM postgres;
GRANT ALL ON SEQUENCE config_types_id_seq TO postgres;
            public       postgres    false    175            �            1259    16661    configurations    TABLE     �   CREATE TABLE configurations (
    id integer NOT NULL,
    uuid text,
    name text,
    description text,
    configuration json,
    stamp text,
    configurationtype integer,
    ownerconf integer,
    kkcar integer
);
 "   DROP TABLE public.configurations;
       public         garikk    false    6            �           0    0    configurations    ACL     �   REVOKE ALL ON TABLE configurations FROM PUBLIC;
REVOKE ALL ON TABLE configurations FROM garikk;
GRANT ALL ON TABLE configurations TO garikk;
            public       garikk    false    176            �            1259    16667    configurations_id_seq    SEQUENCE     w   CREATE SEQUENCE configurations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.configurations_id_seq;
       public       garikk    false    176    6            �           0    0    configurations_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE configurations_id_seq OWNED BY configurations.id;
            public       garikk    false    177            �           0    0    configurations_id_seq    ACL     �   REVOKE ALL ON SEQUENCE configurations_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE configurations_id_seq FROM garikk;
GRANT ALL ON SEQUENCE configurations_id_seq TO garikk;
            public       garikk    false    177            �            1259    41334    extconnector    TABLE     �   CREATE TABLE extconnector (
    "timestamp" integer,
    direction integer,
    status boolean,
    pinid text,
    pinmessage json,
    id integer NOT NULL,
    kkcar_id integer
);
     DROP TABLE public.extconnector;
       public         postgres    false    6            �           0    0    extconnector    ACL     �   REVOKE ALL ON TABLE extconnector FROM PUBLIC;
REVOKE ALL ON TABLE extconnector FROM postgres;
GRANT ALL ON TABLE extconnector TO postgres;
GRANT ALL ON TABLE extconnector TO kkcar_webservice;
            public       postgres    false    209            �            1259    41340    extconnector_id_seq    SEQUENCE     u   CREATE SEQUENCE extconnector_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.extconnector_id_seq;
       public       postgres    false    209    6            �           0    0    extconnector_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE extconnector_id_seq OWNED BY extconnector.id;
            public       postgres    false    210            �           0    0    extconnector_id_seq    ACL     �   REVOKE ALL ON SEQUENCE extconnector_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE extconnector_id_seq FROM postgres;
GRANT ALL ON SEQUENCE extconnector_id_seq TO postgres;
GRANT ALL ON SEQUENCE extconnector_id_seq TO kkcar_webservice;
            public       postgres    false    210            �            1259    24897 
   file_types    TABLE     D   CREATE TABLE file_types (
    id integer NOT NULL,
    name text
);
    DROP TABLE public.file_types;
       public         postgres    false    6            �           0    0 
   file_types    ACL     �   REVOKE ALL ON TABLE file_types FROM PUBLIC;
REVOKE ALL ON TABLE file_types FROM postgres;
GRANT ALL ON TABLE file_types TO postgres;
GRANT ALL ON TABLE file_types TO kkcar_webservice;
            public       postgres    false    189            �            1259    24895    file_types_id_seq    SEQUENCE     s   CREATE SEQUENCE file_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.file_types_id_seq;
       public       postgres    false    189    6            �           0    0    file_types_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE file_types_id_seq OWNED BY file_types.id;
            public       postgres    false    188            �           0    0    file_types_id_seq    ACL     �   REVOKE ALL ON SEQUENCE file_types_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE file_types_id_seq FROM postgres;
GRANT ALL ON SEQUENCE file_types_id_seq TO postgres;
GRANT ALL ON SEQUENCE file_types_id_seq TO kkcar_webservice;
            public       postgres    false    188            �            1259    24841    files    TABLE     �   CREATE TABLE files (
    id integer NOT NULL,
    url text,
    owner_conf integer,
    name text,
    version integer,
    filetype integer,
    owner_plugin integer
);
    DROP TABLE public.files;
       public         postgres    false    6            �           0    0    files    ACL     �   REVOKE ALL ON TABLE files FROM PUBLIC;
REVOKE ALL ON TABLE files FROM postgres;
GRANT ALL ON TABLE files TO postgres;
GRANT ALL ON TABLE files TO kkcar_webservice;
            public       postgres    false    187            �            1259    24839    files_id_seq    SEQUENCE     n   CREATE SEQUENCE files_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.files_id_seq;
       public       postgres    false    187    6            �           0    0    files_id_seq    SEQUENCE OWNED BY     /   ALTER SEQUENCE files_id_seq OWNED BY files.id;
            public       postgres    false    186            �           0    0    files_id_seq    ACL     �   REVOKE ALL ON SEQUENCE files_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE files_id_seq FROM postgres;
GRANT ALL ON SEQUENCE files_id_seq TO postgres;
GRANT ALL ON SEQUENCE files_id_seq TO kkcar_webservice;
            public       postgres    false    186            �            1259    16669    kkcar    TABLE     �   CREATE TABLE kkcar (
    id integer NOT NULL,
    name text,
    owner integer,
    vehicle integer,
    uuid text,
    activeconfiguration integer
);
    DROP TABLE public.kkcar;
       public         garikk    false    6            �           0    0    kkcar    ACL     r   REVOKE ALL ON TABLE kkcar FROM PUBLIC;
REVOKE ALL ON TABLE kkcar FROM garikk;
GRANT ALL ON TABLE kkcar TO garikk;
            public       garikk    false    178            �            1259    41264    kkcar_commands    TABLE     �   CREATE TABLE kkcar_commands (
    id integer NOT NULL,
    kkcar integer,
    description text,
    command text,
    status integer,
    "timestamp" integer
);
 "   DROP TABLE public.kkcar_commands;
       public         postgres    false    6            �           0    0    kkcar_commands    ACL     �   REVOKE ALL ON TABLE kkcar_commands FROM PUBLIC;
REVOKE ALL ON TABLE kkcar_commands FROM postgres;
GRANT ALL ON TABLE kkcar_commands TO postgres;
GRANT ALL ON TABLE kkcar_commands TO kkcar_webservice;
            public       postgres    false    202            �            1259    41262    kkcar_commands_id_seq    SEQUENCE     w   CREATE SEQUENCE kkcar_commands_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.kkcar_commands_id_seq;
       public       postgres    false    6    202            �           0    0    kkcar_commands_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE kkcar_commands_id_seq OWNED BY kkcar_commands.id;
            public       postgres    false    201            �           0    0    kkcar_commands_id_seq    ACL     �   REVOKE ALL ON SEQUENCE kkcar_commands_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE kkcar_commands_id_seq FROM postgres;
GRANT ALL ON SEQUENCE kkcar_commands_id_seq TO postgres;
GRANT ALL ON SEQUENCE kkcar_commands_id_seq TO kkcar_webservice;
            public       postgres    false    201            �            1259    41302    kkcar_confinfo    TABLE       CREATE TABLE kkcar_confinfo (
    id integer NOT NULL,
    kkcar integer,
    carinfo text,
    currentconfig integer,
    configversion text,
    kkcontrollerversion text,
    osversion text,
    confstatus text,
    carstatus text,
    "timestamp" integer,
    enginestatus integer
);
 "   DROP TABLE public.kkcar_confinfo;
       public         postgres    false    6            �           0    0    kkcar_confinfo    ACL     �   REVOKE ALL ON TABLE kkcar_confinfo FROM PUBLIC;
REVOKE ALL ON TABLE kkcar_confinfo FROM postgres;
GRANT ALL ON TABLE kkcar_confinfo TO postgres;
GRANT ALL ON TABLE kkcar_confinfo TO kkcar_webservice;
            public       postgres    false    206            �            1259    41300    kkcar_confinfo_id_seq    SEQUENCE     w   CREATE SEQUENCE kkcar_confinfo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.kkcar_confinfo_id_seq;
       public       postgres    false    6    206            �           0    0    kkcar_confinfo_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE kkcar_confinfo_id_seq OWNED BY kkcar_confinfo.id;
            public       postgres    false    205            �           0    0    kkcar_confinfo_id_seq    ACL     �   REVOKE ALL ON SEQUENCE kkcar_confinfo_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE kkcar_confinfo_id_seq FROM postgres;
GRANT ALL ON SEQUENCE kkcar_confinfo_id_seq TO postgres;
GRANT ALL ON SEQUENCE kkcar_confinfo_id_seq TO kkcar_webservice;
            public       postgres    false    205            �            1259    16675    kkcar_id_seq    SEQUENCE     n   CREATE SEQUENCE kkcar_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.kkcar_id_seq;
       public       garikk    false    6    178            �           0    0    kkcar_id_seq    SEQUENCE OWNED BY     /   ALTER SEQUENCE kkcar_id_seq OWNED BY kkcar.id;
            public       garikk    false    179            �           0    0    kkcar_id_seq    ACL     �   REVOKE ALL ON SEQUENCE kkcar_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE kkcar_id_seq FROM garikk;
GRANT ALL ON SEQUENCE kkcar_id_seq TO garikk;
            public       garikk    false    179            �            1259    41286    kkcar_messages    TABLE     w   CREATE TABLE kkcar_messages (
    id integer NOT NULL,
    kkcar integer,
    message text,
    "timestamp" integer
);
 "   DROP TABLE public.kkcar_messages;
       public         postgres    false    6            �           0    0    kkcar_messages    ACL     �   REVOKE ALL ON TABLE kkcar_messages FROM PUBLIC;
REVOKE ALL ON TABLE kkcar_messages FROM postgres;
GRANT ALL ON TABLE kkcar_messages TO postgres;
GRANT ALL ON TABLE kkcar_messages TO kkcar_webservice;
            public       postgres    false    204            �            1259    41284    kkcar_messages_id_seq    SEQUENCE     w   CREATE SEQUENCE kkcar_messages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.kkcar_messages_id_seq;
       public       postgres    false    6    204            �           0    0    kkcar_messages_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE kkcar_messages_id_seq OWNED BY kkcar_messages.id;
            public       postgres    false    203            �           0    0    kkcar_messages_id_seq    ACL     �   REVOKE ALL ON SEQUENCE kkcar_messages_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE kkcar_messages_id_seq FROM postgres;
GRANT ALL ON SEQUENCE kkcar_messages_id_seq TO postgres;
GRANT ALL ON SEQUENCE kkcar_messages_id_seq TO kkcar_webservice;
            public       postgres    false    203            �            1259    16677    liveinfo    TABLE     �   CREATE TABLE liveinfo (
    id integer NOT NULL,
    kkcar_id integer,
    name text,
    param_id integer,
    value double precision,
    "timestamp" timestamp with time zone
);
    DROP TABLE public.liveinfo;
       public         garikk    false    6            �           0    0    liveinfo    ACL     {   REVOKE ALL ON TABLE liveinfo FROM PUBLIC;
REVOKE ALL ON TABLE liveinfo FROM garikk;
GRANT ALL ON TABLE liveinfo TO garikk;
            public       garikk    false    180            �            1259    33119    liveinfo_dtc    TABLE     �   CREATE TABLE liveinfo_dtc (
    id integer NOT NULL,
    dtc_val integer,
    "timestamp" integer,
    kkcar_id integer,
    actual boolean
);
     DROP TABLE public.liveinfo_dtc;
       public         postgres    false    6            �           0    0    liveinfo_dtc    ACL     �   REVOKE ALL ON TABLE liveinfo_dtc FROM PUBLIC;
REVOKE ALL ON TABLE liveinfo_dtc FROM postgres;
GRANT ALL ON TABLE liveinfo_dtc TO postgres;
GRANT ALL ON TABLE liveinfo_dtc TO kkcar_webservice;
            public       postgres    false    198            �            1259    33117    liveinfo_dtc_id_seq    SEQUENCE     u   CREATE SEQUENCE liveinfo_dtc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.liveinfo_dtc_id_seq;
       public       postgres    false    6    198            �           0    0    liveinfo_dtc_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE liveinfo_dtc_id_seq OWNED BY liveinfo_dtc.id;
            public       postgres    false    197            �           0    0    liveinfo_dtc_id_seq    ACL     �   REVOKE ALL ON SEQUENCE liveinfo_dtc_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE liveinfo_dtc_id_seq FROM postgres;
GRANT ALL ON SEQUENCE liveinfo_dtc_id_seq TO postgres;
GRANT ALL ON SEQUENCE liveinfo_dtc_id_seq TO kkcar_webservice;
            public       postgres    false    197            �            1259    16683    liveinfo_id_seq    SEQUENCE     q   CREATE SEQUENCE liveinfo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.liveinfo_id_seq;
       public       garikk    false    6    180            �           0    0    liveinfo_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE liveinfo_id_seq OWNED BY liveinfo.id;
            public       garikk    false    181            �           0    0    liveinfo_id_seq    ACL     �   REVOKE ALL ON SEQUENCE liveinfo_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE liveinfo_id_seq FROM garikk;
GRANT ALL ON SEQUENCE liveinfo_id_seq TO garikk;
            public       garikk    false    181            �            1259    33079    liveinfo_request    TABLE     �   CREATE TABLE liveinfo_request (
    id integer NOT NULL,
    configuration_id integer NOT NULL,
    "PID" integer,
    "interval" integer
);
 $   DROP TABLE public.liveinfo_request;
       public         postgres    false    6            �           0    0    liveinfo_request    ACL     �   REVOKE ALL ON TABLE liveinfo_request FROM PUBLIC;
REVOKE ALL ON TABLE liveinfo_request FROM postgres;
GRANT ALL ON TABLE liveinfo_request TO postgres;
GRANT ALL ON TABLE liveinfo_request TO kkcar_webservice;
            public       postgres    false    192            �            1259    33077 %   liveinfo_request_configuration_id_seq    SEQUENCE     �   CREATE SEQUENCE liveinfo_request_configuration_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.liveinfo_request_configuration_id_seq;
       public       postgres    false    6    192            �           0    0 %   liveinfo_request_configuration_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE liveinfo_request_configuration_id_seq OWNED BY liveinfo_request.configuration_id;
            public       postgres    false    191            �           0    0 %   liveinfo_request_configuration_id_seq    ACL     0  REVOKE ALL ON SEQUENCE liveinfo_request_configuration_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE liveinfo_request_configuration_id_seq FROM postgres;
GRANT ALL ON SEQUENCE liveinfo_request_configuration_id_seq TO postgres;
GRANT ALL ON SEQUENCE liveinfo_request_configuration_id_seq TO kkcar_webservice;
            public       postgres    false    191            �            1259    33075    liveinfo_request_id_seq    SEQUENCE     y   CREATE SEQUENCE liveinfo_request_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.liveinfo_request_id_seq;
       public       postgres    false    192    6            �           0    0    liveinfo_request_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE liveinfo_request_id_seq OWNED BY liveinfo_request.id;
            public       postgres    false    190            �           0    0    liveinfo_request_id_seq    ACL     �   REVOKE ALL ON SEQUENCE liveinfo_request_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE liveinfo_request_id_seq FROM postgres;
GRANT ALL ON SEQUENCE liveinfo_request_id_seq TO postgres;
GRANT ALL ON SEQUENCE liveinfo_request_id_seq TO kkcar_webservice;
            public       postgres    false    190            �            1259    33095    manufacture    TABLE     E   CREATE TABLE manufacture (
    id integer NOT NULL,
    name text
);
    DROP TABLE public.manufacture;
       public         postgres    false    6            �           0    0    manufacture    ACL     �   REVOKE ALL ON TABLE manufacture FROM PUBLIC;
REVOKE ALL ON TABLE manufacture FROM postgres;
GRANT ALL ON TABLE manufacture TO postgres;
GRANT ALL ON TABLE manufacture TO kkcar_webservice;
            public       postgres    false    196            �            1259    33093    manufacture_id_seq    SEQUENCE     t   CREATE SEQUENCE manufacture_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.manufacture_id_seq;
       public       postgres    false    6    196            �           0    0    manufacture_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE manufacture_id_seq OWNED BY manufacture.id;
            public       postgres    false    195            �           0    0    manufacture_id_seq    ACL     �   REVOKE ALL ON SEQUENCE manufacture_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE manufacture_id_seq FROM postgres;
GRANT ALL ON SEQUENCE manufacture_id_seq TO postgres;
GRANT ALL ON SEQUENCE manufacture_id_seq TO kkcar_webservice;
            public       postgres    false    195            �            1259    33123    odb_dtc    TABLE     �   CREATE TABLE odb_dtc (
    id integer NOT NULL,
    manufacture integer,
    dtc integer,
    descriptionlocal text,
    descriptionodb text
);
    DROP TABLE public.odb_dtc;
       public         postgres    false    6            �           0    0    odb_dtc    ACL     �   REVOKE ALL ON TABLE odb_dtc FROM PUBLIC;
REVOKE ALL ON TABLE odb_dtc FROM postgres;
GRANT ALL ON TABLE odb_dtc TO postgres;
GRANT ALL ON TABLE odb_dtc TO kkcar_webservice;
            public       postgres    false    199            �            1259    33126    odb_dtc_id_seq    SEQUENCE     p   CREATE SEQUENCE odb_dtc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.odb_dtc_id_seq;
       public       postgres    false    6    199            �           0    0    odb_dtc_id_seq    SEQUENCE OWNED BY     3   ALTER SEQUENCE odb_dtc_id_seq OWNED BY odb_dtc.id;
            public       postgres    false    200            �           0    0    odb_dtc_id_seq    ACL     �   REVOKE ALL ON SEQUENCE odb_dtc_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE odb_dtc_id_seq FROM postgres;
GRANT ALL ON SEQUENCE odb_dtc_id_seq TO postgres;
GRANT ALL ON SEQUENCE odb_dtc_id_seq TO kkcar_webservice;
            public       postgres    false    200            �            1259    16685    plugins    TABLE     �   CREATE TABLE plugins (
    id integer NOT NULL,
    uuid text,
    name text,
    description text,
    version integer,
    pins_in text,
    pins_out text
);
    DROP TABLE public.plugins;
       public         garikk    false    6            �           0    0    plugins    ACL     x   REVOKE ALL ON TABLE plugins FROM PUBLIC;
REVOKE ALL ON TABLE plugins FROM garikk;
GRANT ALL ON TABLE plugins TO garikk;
            public       garikk    false    182            �            1259    16691    plugins_id_seq    SEQUENCE     p   CREATE SEQUENCE plugins_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.plugins_id_seq;
       public       garikk    false    6    182            �           0    0    plugins_id_seq    SEQUENCE OWNED BY     3   ALTER SEQUENCE plugins_id_seq OWNED BY plugins.id;
            public       garikk    false    183            �           0    0    plugins_id_seq    ACL     �   REVOKE ALL ON SEQUENCE plugins_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE plugins_id_seq FROM garikk;
GRANT ALL ON SEQUENCE plugins_id_seq TO garikk;
            public       garikk    false    183            �            1259    16731    system_state    TABLE     �   CREATE TABLE system_state (
    id integer NOT NULL,
    name text,
    kkcontroller_version text,
    state integer,
    base_version text
);
     DROP TABLE public.system_state;
       public         postgres    false    6            �           0    0    system_state    ACL     �   REVOKE ALL ON TABLE system_state FROM PUBLIC;
REVOKE ALL ON TABLE system_state FROM postgres;
GRANT ALL ON TABLE system_state TO postgres;
GRANT ALL ON TABLE system_state TO kkcar_webservice;
            public       postgres    false    185            �            1259    16729    system_state_id_seq    SEQUENCE     u   CREATE SEQUENCE system_state_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.system_state_id_seq;
       public       postgres    false    6    185            �           0    0    system_state_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE system_state_id_seq OWNED BY system_state.id;
            public       postgres    false    184             	           0    0    system_state_id_seq    ACL     �   REVOKE ALL ON SEQUENCE system_state_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE system_state_id_seq FROM postgres;
GRANT ALL ON SEQUENCE system_state_id_seq TO postgres;
GRANT ALL ON SEQUENCE system_state_id_seq TO kkcar_webservice;
            public       postgres    false    184            �           2604    16693    id    DEFAULT     \   ALTER TABLE ONLY accounts ALTER COLUMN id SET DEFAULT nextval('accounts_id_seq'::regclass);
 :   ALTER TABLE public.accounts ALTER COLUMN id DROP DEFAULT;
       public       garikk    false    173    172            �           2604    41333    id    DEFAULT     t   ALTER TABLE ONLY confeditor_blockview ALTER COLUMN id SET DEFAULT nextval('confeditor_blockview_id_seq'::regclass);
 F   ALTER TABLE public.confeditor_blockview ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    207    208    208            �           2604    16694    id    DEFAULT     d   ALTER TABLE ONLY config_types ALTER COLUMN id SET DEFAULT nextval('config_types_id_seq'::regclass);
 >   ALTER TABLE public.config_types ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    175    174            �           2604    16695    id    DEFAULT     h   ALTER TABLE ONLY configurations ALTER COLUMN id SET DEFAULT nextval('configurations_id_seq'::regclass);
 @   ALTER TABLE public.configurations ALTER COLUMN id DROP DEFAULT;
       public       garikk    false    177    176            �           2604    41342    id    DEFAULT     d   ALTER TABLE ONLY extconnector ALTER COLUMN id SET DEFAULT nextval('extconnector_id_seq'::regclass);
 >   ALTER TABLE public.extconnector ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    210    209            �           2604    24900    id    DEFAULT     `   ALTER TABLE ONLY file_types ALTER COLUMN id SET DEFAULT nextval('file_types_id_seq'::regclass);
 <   ALTER TABLE public.file_types ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    188    189    189            �           2604    24844    id    DEFAULT     V   ALTER TABLE ONLY files ALTER COLUMN id SET DEFAULT nextval('files_id_seq'::regclass);
 7   ALTER TABLE public.files ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    186    187    187            �           2604    16696    id    DEFAULT     V   ALTER TABLE ONLY kkcar ALTER COLUMN id SET DEFAULT nextval('kkcar_id_seq'::regclass);
 7   ALTER TABLE public.kkcar ALTER COLUMN id DROP DEFAULT;
       public       garikk    false    179    178            �           2604    41267    id    DEFAULT     h   ALTER TABLE ONLY kkcar_commands ALTER COLUMN id SET DEFAULT nextval('kkcar_commands_id_seq'::regclass);
 @   ALTER TABLE public.kkcar_commands ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    201    202    202            �           2604    41305    id    DEFAULT     h   ALTER TABLE ONLY kkcar_confinfo ALTER COLUMN id SET DEFAULT nextval('kkcar_confinfo_id_seq'::regclass);
 @   ALTER TABLE public.kkcar_confinfo ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    206    205    206            �           2604    41289    id    DEFAULT     h   ALTER TABLE ONLY kkcar_messages ALTER COLUMN id SET DEFAULT nextval('kkcar_messages_id_seq'::regclass);
 @   ALTER TABLE public.kkcar_messages ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    204    203    204            �           2604    16697    id    DEFAULT     \   ALTER TABLE ONLY liveinfo ALTER COLUMN id SET DEFAULT nextval('liveinfo_id_seq'::regclass);
 :   ALTER TABLE public.liveinfo ALTER COLUMN id DROP DEFAULT;
       public       garikk    false    181    180            �           2604    33122    id    DEFAULT     d   ALTER TABLE ONLY liveinfo_dtc ALTER COLUMN id SET DEFAULT nextval('liveinfo_dtc_id_seq'::regclass);
 >   ALTER TABLE public.liveinfo_dtc ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    198    198            �           2604    33082    id    DEFAULT     l   ALTER TABLE ONLY liveinfo_request ALTER COLUMN id SET DEFAULT nextval('liveinfo_request_id_seq'::regclass);
 B   ALTER TABLE public.liveinfo_request ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    190    192    192            �           2604    33083    configuration_id    DEFAULT     �   ALTER TABLE ONLY liveinfo_request ALTER COLUMN configuration_id SET DEFAULT nextval('liveinfo_request_configuration_id_seq'::regclass);
 P   ALTER TABLE public.liveinfo_request ALTER COLUMN configuration_id DROP DEFAULT;
       public       postgres    false    192    191    192            �           2604    33098    id    DEFAULT     b   ALTER TABLE ONLY manufacture ALTER COLUMN id SET DEFAULT nextval('manufacture_id_seq'::regclass);
 =   ALTER TABLE public.manufacture ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    195    196            �           2604    33128    id    DEFAULT     Z   ALTER TABLE ONLY odb_dtc ALTER COLUMN id SET DEFAULT nextval('odb_dtc_id_seq'::regclass);
 9   ALTER TABLE public.odb_dtc ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    199            �           2604    33089    id    DEFAULT     ]   ALTER TABLE ONLY odb_pids ALTER COLUMN id SET DEFAULT nextval('"ODB_PID_id_seq"'::regclass);
 :   ALTER TABLE public.odb_pids ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    193    194    194            �           2604    16698    id    DEFAULT     Z   ALTER TABLE ONLY plugins ALTER COLUMN id SET DEFAULT nextval('plugins_id_seq'::regclass);
 9   ALTER TABLE public.plugins ALTER COLUMN id DROP DEFAULT;
       public       garikk    false    183    182            �           2604    16734    id    DEFAULT     d   ALTER TABLE ONLY system_state ALTER COLUMN id SET DEFAULT nextval('system_state_id_seq'::regclass);
 >   ALTER TABLE public.system_state ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    184    185    185            	           0    0    ODB_PID_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('"ODB_PID_id_seq"', 1, true);
            public       postgres    false    193            �          0    16645    accounts 
   TABLE DATA               2   COPY accounts (id, uuid, login, pass) FROM stdin;
    public       garikk    false    172   ��       	           0    0    accounts_id_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('accounts_id_seq', 1, true);
            public       garikk    false    173            �          0    41330    confeditor_blockview 
   TABLE DATA               H   COPY confeditor_blockview (id, configuration, plugin, x, y) FROM stdin;
    public       postgres    false    208   ?�       	           0    0    confeditor_blockview_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('confeditor_blockview_id_seq', 1, false);
            public       postgres    false    207            �          0    16653    config_types 
   TABLE DATA               )   COPY config_types (id, type) FROM stdin;
    public       postgres    false    174   \�       	           0    0    config_types_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('config_types_id_seq', 2, true);
            public       postgres    false    175            �          0    16661    configurations 
   TABLE DATA               y   COPY configurations (id, uuid, name, description, configuration, stamp, configurationtype, ownerconf, kkcar) FROM stdin;
    public       garikk    false    176   ��       	           0    0    configurations_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('configurations_id_seq', 5, true);
            public       garikk    false    177            �          0    41334    extconnector 
   TABLE DATA               `   COPY extconnector ("timestamp", direction, status, pinid, pinmessage, id, kkcar_id) FROM stdin;
    public       postgres    false    209   
�       	           0    0    extconnector_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('extconnector_id_seq', 2, true);
            public       postgres    false    210            �          0    24897 
   file_types 
   TABLE DATA               '   COPY file_types (id, name) FROM stdin;
    public       postgres    false    189   O�       	           0    0    file_types_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('file_types_id_seq', 1, false);
            public       postgres    false    188            �          0    24841    files 
   TABLE DATA               T   COPY files (id, url, owner_conf, name, version, filetype, owner_plugin) FROM stdin;
    public       postgres    false    187   ��       	           0    0    files_id_seq    SEQUENCE SET     3   SELECT pg_catalog.setval('files_id_seq', 8, true);
            public       postgres    false    186            �          0    16669    kkcar 
   TABLE DATA               M   COPY kkcar (id, name, owner, vehicle, uuid, activeconfiguration) FROM stdin;
    public       garikk    false    178   k�       �          0    41264    kkcar_commands 
   TABLE DATA               W   COPY kkcar_commands (id, kkcar, description, command, status, "timestamp") FROM stdin;
    public       postgres    false    202   ��       		           0    0    kkcar_commands_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('kkcar_commands_id_seq', 1, false);
            public       postgres    false    201            �          0    41302    kkcar_confinfo 
   TABLE DATA               �   COPY kkcar_confinfo (id, kkcar, carinfo, currentconfig, configversion, kkcontrollerversion, osversion, confstatus, carstatus, "timestamp", enginestatus) FROM stdin;
    public       postgres    false    206   �       
	           0    0    kkcar_confinfo_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('kkcar_confinfo_id_seq', 1, false);
            public       postgres    false    205            	           0    0    kkcar_id_seq    SEQUENCE SET     3   SELECT pg_catalog.setval('kkcar_id_seq', 1, true);
            public       garikk    false    179            �          0    41286    kkcar_messages 
   TABLE DATA               B   COPY kkcar_messages (id, kkcar, message, "timestamp") FROM stdin;
    public       postgres    false    204   x�       	           0    0    kkcar_messages_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('kkcar_messages_id_seq', 1, false);
            public       postgres    false    203            �          0    16677    liveinfo 
   TABLE DATA               M   COPY liveinfo (id, kkcar_id, name, param_id, value, "timestamp") FROM stdin;
    public       garikk    false    180   ��       �          0    33119    liveinfo_dtc 
   TABLE DATA               K   COPY liveinfo_dtc (id, dtc_val, "timestamp", kkcar_id, actual) FROM stdin;
    public       postgres    false    198   ��       	           0    0    liveinfo_dtc_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('liveinfo_dtc_id_seq', 3, true);
            public       postgres    false    197            	           0    0    liveinfo_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('liveinfo_id_seq', 1, false);
            public       garikk    false    181            �          0    33079    liveinfo_request 
   TABLE DATA               L   COPY liveinfo_request (id, configuration_id, "PID", "interval") FROM stdin;
    public       postgres    false    192   �       	           0    0 %   liveinfo_request_configuration_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('liveinfo_request_configuration_id_seq', 1, false);
            public       postgres    false    191            	           0    0    liveinfo_request_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('liveinfo_request_id_seq', 1, false);
            public       postgres    false    190            �          0    33095    manufacture 
   TABLE DATA               (   COPY manufacture (id, name) FROM stdin;
    public       postgres    false    196   %�       	           0    0    manufacture_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('manufacture_id_seq', 1, false);
            public       postgres    false    195            �          0    33123    odb_dtc 
   TABLE DATA               R   COPY odb_dtc (id, manufacture, dtc, descriptionlocal, descriptionodb) FROM stdin;
    public       postgres    false    199   \�       	           0    0    odb_dtc_id_seq    SEQUENCE SET     5   SELECT pg_catalog.setval('odb_dtc_id_seq', 3, true);
            public       postgres    false    200            �          0    33086    odb_pids 
   TABLE DATA               a   COPY odb_pids (id, manufacture, "PID", descriptionlocal, descriptionodb, "PID_MODE") FROM stdin;
    public       postgres    false    194   s�       �          0    16685    plugins 
   TABLE DATA               S   COPY plugins (id, uuid, name, description, version, pins_in, pins_out) FROM stdin;
    public       garikk    false    182   ��       	           0    0    plugins_id_seq    SEQUENCE SET     5   SELECT pg_catalog.setval('plugins_id_seq', 5, true);
            public       garikk    false    183            �          0    16731    system_state 
   TABLE DATA               T   COPY system_state (id, name, kkcontroller_version, state, base_version) FROM stdin;
    public       postgres    false    185   �       	           0    0    system_state_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('system_state_id_seq', 1, true);
            public       postgres    false    184                       2606    33105    ODB_PID_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY odb_pids
    ADD CONSTRAINT "ODB_PID_pkey" PRIMARY KEY (id);
 A   ALTER TABLE ONLY public.odb_pids DROP CONSTRAINT "ODB_PID_pkey";
       public         postgres    false    194    194                       2606    41350    PK_id 
   CONSTRAINT     K   ALTER TABLE ONLY extconnector
    ADD CONSTRAINT "PK_id" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.extconnector DROP CONSTRAINT "PK_id";
       public         postgres    false    209    209            �           2606    16700    accounts_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY accounts
    ADD CONSTRAINT accounts_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.accounts DROP CONSTRAINT accounts_pkey;
       public         garikk    false    172    172            �           2606    16702    config_types_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY config_types
    ADD CONSTRAINT config_types_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.config_types DROP CONSTRAINT config_types_pkey;
       public         postgres    false    174    174            �           2606    16704    configurations_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY configurations
    ADD CONSTRAINT configurations_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.configurations DROP CONSTRAINT configurations_pkey;
       public         garikk    false    176    176                       2606    24849    fk_id 
   CONSTRAINT     B   ALTER TABLE ONLY files
    ADD CONSTRAINT fk_id PRIMARY KEY (id);
 5   ALTER TABLE ONLY public.files DROP CONSTRAINT fk_id;
       public         postgres    false    187    187                        2606    16740    id 
   CONSTRAINT     F   ALTER TABLE ONLY system_state
    ADD CONSTRAINT id PRIMARY KEY (id);
 9   ALTER TABLE ONLY public.system_state DROP CONSTRAINT id;
       public         postgres    false    185    185                       2606    24905    k_id 
   CONSTRAINT     F   ALTER TABLE ONLY file_types
    ADD CONSTRAINT k_id PRIMARY KEY (id);
 9   ALTER TABLE ONLY public.file_types DROP CONSTRAINT k_id;
       public         postgres    false    189    189                       2606    41272    kkcar_commands_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY kkcar_commands
    ADD CONSTRAINT kkcar_commands_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.kkcar_commands DROP CONSTRAINT kkcar_commands_pkey;
       public         postgres    false    202    202                       2606    41310    kkcar_confinfo_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY kkcar_confinfo
    ADD CONSTRAINT kkcar_confinfo_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.kkcar_confinfo DROP CONSTRAINT kkcar_confinfo_pkey;
       public         postgres    false    206    206                       2606    41294    kkcar_messages_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY kkcar_messages
    ADD CONSTRAINT kkcar_messages_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.kkcar_messages DROP CONSTRAINT kkcar_messages_pkey;
       public         postgres    false    204    204            �           2606    16706 
   kkcar_pkey 
   CONSTRAINT     G   ALTER TABLE ONLY kkcar
    ADD CONSTRAINT kkcar_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.kkcar DROP CONSTRAINT kkcar_pkey;
       public         garikk    false    178    178                       2606    33138    liveinfo_dtc_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY liveinfo_dtc
    ADD CONSTRAINT liveinfo_dtc_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.liveinfo_dtc DROP CONSTRAINT liveinfo_dtc_pkey;
       public         postgres    false    198    198            �           2606    16708    liveinfo_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY liveinfo
    ADD CONSTRAINT liveinfo_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.liveinfo DROP CONSTRAINT liveinfo_pkey;
       public         garikk    false    180    180                       2606    33103    manufacture_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY manufacture
    ADD CONSTRAINT manufacture_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.manufacture DROP CONSTRAINT manufacture_pkey;
       public         postgres    false    196    196                       2606    33136    odb_dtc_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY odb_dtc
    ADD CONSTRAINT odb_dtc_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.odb_dtc DROP CONSTRAINT odb_dtc_pkey;
       public         postgres    false    199    199            �           2606    16710    plugins_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY plugins
    ADD CONSTRAINT plugins_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.plugins DROP CONSTRAINT plugins_pkey;
       public         garikk    false    182    182            �           2606    24879    plugins_uuid_key 
   CONSTRAINT     L   ALTER TABLE ONLY plugins
    ADD CONSTRAINT plugins_uuid_key UNIQUE (uuid);
 B   ALTER TABLE ONLY public.plugins DROP CONSTRAINT plugins_uuid_key;
       public         garikk    false    182    182                       1259    41362    FKI_KKCarId    INDEX     C   CREATE INDEX "FKI_KKCarId" ON extconnector USING btree (kkcar_id);
 !   DROP INDEX public."FKI_KKCarId";
       public         postgres    false    209            �           1259    24877 	   FKI_kkcar    INDEX     @   CREATE INDEX "FKI_kkcar" ON configurations USING btree (kkcar);
    DROP INDEX public."FKI_kkcar";
       public         garikk    false    176                       1259    41327    fki_currconf    INDEX     I   CREATE INDEX fki_currconf ON kkcar_confinfo USING btree (currentconfig);
     DROP INDEX public.fki_currconf;
       public         postgres    false    206                       1259    33149 	   fki_kkcar    INDEX     ?   CREATE INDEX fki_kkcar ON liveinfo_dtc USING btree (kkcar_id);
    DROP INDEX public.fki_kkcar;
       public         postgres    false    198                       1259    41283    fki_kkcar_cmd    INDEX     B   CREATE INDEX fki_kkcar_cmd ON kkcar_commands USING btree (kkcar);
 !   DROP INDEX public.fki_kkcar_cmd;
       public         postgres    false    202                       1259    41321    fki_kkcar_confinfo    INDEX     G   CREATE INDEX fki_kkcar_confinfo ON kkcar_confinfo USING btree (kkcar);
 &   DROP INDEX public.fki_kkcar_confinfo;
       public         postgres    false    206            	           1259    33111    fki_manufacture    INDEX     D   CREATE INDEX fki_manufacture ON odb_pids USING btree (manufacture);
 #   DROP INDEX public.fki_manufacture;
       public         postgres    false    194                       1259    24855 
   fki_owconf    INDEX     ;   CREATE INDEX fki_owconf ON files USING btree (owner_conf);
    DROP INDEX public.fki_owconf;
       public         postgres    false    187                       1259    24911 
   fki_plugin    INDEX     =   CREATE INDEX fki_plugin ON files USING btree (owner_plugin);
    DROP INDEX public.fki_plugin;
       public         postgres    false    187            )           2606    41357 
   FK_KKCarId    FK CONSTRAINT     k   ALTER TABLE ONLY extconnector
    ADD CONSTRAINT "FK_KKCarId" FOREIGN KEY (kkcar_id) REFERENCES kkcar(id);
 C   ALTER TABLE ONLY public.extconnector DROP CONSTRAINT "FK_KKCarId";
       public       postgres    false    178    2040    209                       2606    24872    FK_kkcar    FK CONSTRAINT     h   ALTER TABLE ONLY configurations
    ADD CONSTRAINT "FK_kkcar" FOREIGN KEY (kkcar) REFERENCES kkcar(id);
 C   ALTER TABLE ONLY public.configurations DROP CONSTRAINT "FK_kkcar";
       public       garikk    false    178    2040    176                       2606    16711 %   configurations_configurationtype_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY configurations
    ADD CONSTRAINT configurations_configurationtype_fkey FOREIGN KEY (configurationtype) REFERENCES config_types(id);
 ^   ALTER TABLE ONLY public.configurations DROP CONSTRAINT configurations_configurationtype_fkey;
       public       garikk    false    2035    176    174            "           2606    33070    files_owner_conf_fkey    FK CONSTRAINT     x   ALTER TABLE ONLY files
    ADD CONSTRAINT files_owner_conf_fkey FOREIGN KEY (owner_conf) REFERENCES configurations(id);
 E   ALTER TABLE ONLY public.files DROP CONSTRAINT files_owner_conf_fkey;
       public       postgres    false    2038    176    187            (           2606    41322    fk_currconf    FK CONSTRAINT     z   ALTER TABLE ONLY kkcar_confinfo
    ADD CONSTRAINT fk_currconf FOREIGN KEY (currentconfig) REFERENCES kkcar_confinfo(id);
 D   ALTER TABLE ONLY public.kkcar_confinfo DROP CONSTRAINT fk_currconf;
       public       postgres    false    206    2073    206            $           2606    33144    fk_kkcar    FK CONSTRAINT     g   ALTER TABLE ONLY liveinfo_dtc
    ADD CONSTRAINT fk_kkcar FOREIGN KEY (kkcar_id) REFERENCES kkcar(id);
 ?   ALTER TABLE ONLY public.liveinfo_dtc DROP CONSTRAINT fk_kkcar;
       public       postgres    false    198    2040    178            %           2606    41278    fk_kkcar_cmd    FK CONSTRAINT     j   ALTER TABLE ONLY kkcar_commands
    ADD CONSTRAINT fk_kkcar_cmd FOREIGN KEY (kkcar) REFERENCES kkcar(id);
 E   ALTER TABLE ONLY public.kkcar_commands DROP CONSTRAINT fk_kkcar_cmd;
       public       postgres    false    202    2040    178            '           2606    41316    fk_kkcar_confinfo    FK CONSTRAINT     o   ALTER TABLE ONLY kkcar_confinfo
    ADD CONSTRAINT fk_kkcar_confinfo FOREIGN KEY (kkcar) REFERENCES kkcar(id);
 J   ALTER TABLE ONLY public.kkcar_confinfo DROP CONSTRAINT fk_kkcar_confinfo;
       public       postgres    false    2040    206    178            #           2606    33106    fk_manufacture    FK CONSTRAINT     r   ALTER TABLE ONLY odb_pids
    ADD CONSTRAINT fk_manufacture FOREIGN KEY (manufacture) REFERENCES manufacture(id);
 A   ALTER TABLE ONLY public.odb_pids DROP CONSTRAINT fk_manufacture;
       public       postgres    false    196    2059    194            !           2606    24906 	   fk_plugin    FK CONSTRAINT     g   ALTER TABLE ONLY files
    ADD CONSTRAINT fk_plugin FOREIGN KEY (owner_plugin) REFERENCES plugins(id);
 9   ALTER TABLE ONLY public.files DROP CONSTRAINT fk_plugin;
       public       postgres    false    187    182    2044                       2606    16716    kkcar_ActiveConfiguration_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY kkcar
    ADD CONSTRAINT "kkcar_ActiveConfiguration_fkey" FOREIGN KEY (activeconfiguration) REFERENCES configurations(id);
 P   ALTER TABLE ONLY public.kkcar DROP CONSTRAINT "kkcar_ActiveConfiguration_fkey";
       public       garikk    false    178    176    2038            &           2606    41295    kkcar_messages_kkcar_fkey    FK CONSTRAINT     w   ALTER TABLE ONLY kkcar_messages
    ADD CONSTRAINT kkcar_messages_kkcar_fkey FOREIGN KEY (kkcar) REFERENCES kkcar(id);
 R   ALTER TABLE ONLY public.kkcar_messages DROP CONSTRAINT kkcar_messages_kkcar_fkey;
       public       postgres    false    2040    204    178                        2606    33112    liveinfo_ODB_PID_fkey    FK CONSTRAINT     u   ALTER TABLE ONLY liveinfo
    ADD CONSTRAINT "liveinfo_ODB_PID_fkey" FOREIGN KEY (param_id) REFERENCES odb_pids(id);
 J   ALTER TABLE ONLY public.liveinfo DROP CONSTRAINT "liveinfo_ODB_PID_fkey";
       public       garikk    false    180    2056    194            �           826    16723     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     L  ALTER DEFAULT PRIVILEGES FOR ROLE postgres REVOKE ALL ON SEQUENCES  FROM PUBLIC;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres REVOKE ALL ON SEQUENCES  FROM postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON SEQUENCES  TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON SEQUENCES  TO kkcar_webservice;
                  postgres    false            �           826    16725    DEFAULT PRIVILEGES FOR TYPES    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE postgres REVOKE ALL ON TYPES  FROM PUBLIC;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres REVOKE ALL ON TYPES  FROM postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TYPES  TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TYPES  TO PUBLIC;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TYPES  TO kkcar_webservice;
                  postgres    false            �           826    16724     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE postgres REVOKE ALL ON FUNCTIONS  FROM PUBLIC;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres REVOKE ALL ON FUNCTIONS  FROM postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON FUNCTIONS  TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON FUNCTIONS  TO PUBLIC;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON FUNCTIONS  TO kkcar_webservice;
                  postgres    false            �           826    16721    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL       ALTER DEFAULT PRIVILEGES FOR ROLE garikk IN SCHEMA public REVOKE ALL ON TABLES  FROM PUBLIC;
ALTER DEFAULT PRIVILEGES FOR ROLE garikk IN SCHEMA public REVOKE ALL ON TABLES  FROM garikk;
ALTER DEFAULT PRIVILEGES FOR ROLE garikk IN SCHEMA public GRANT ALL ON TABLES  TO PUBLIC;
            public       garikk    false    6            �           826    16722    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     @  ALTER DEFAULT PRIVILEGES FOR ROLE postgres REVOKE ALL ON TABLES  FROM PUBLIC;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres REVOKE ALL ON TABLES  FROM postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TABLES  TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TABLES  TO kkcar_webservice;
                  postgres    false            �   W   x��;�  �Y�b�_�..�4&z�����B.b�jFKkOp$jŔ(v�o��{�	��6Fo�Y�C��T�(JZ�w�8���,�      �      x������ � �      �   )   x�3��M��s��K�L/-J,����2��)MG����� ���      �   e  x��X[o�8~N�e_�8\¼%���m� ��hv��
5	������=�\J�vF�}hk�ܾ�>>Ǩ�@TI�1
%L���
"2�(T��J�B��͍c�(].iX��7�=�07�Ȫ�����o-�sbWt=��hLҬ �e���oEi$~��p�.��d	31������T
cYFT
T���"��#԰���:�#w����	�XG��3���K(	I4�2@���vd�I���G�`�Id�dA!X��d=/���{�KN�=���ߟD���c�&?���$�$��tA�HٚvE;��G�/))�YiO%�u��UC�� �P��%heI���p�GRj��pvŦg�e�\&���Ã?����I�V�I����@���6B�6BJ�V1�ӏ���F��t`��J�k����hA�y��!��{z���q�HREa����?��fY��}���̗߻'�A�di�>���ԙ���B]�+��|
���[�
�p�LN�Y�kL��'����iQ�A �Ju"�4�$�Y�C�O�a}s3Ll��,b3պI�����K�i^T��2��Q�r��z��PSc-�+a)�n@�AtD5M�bC�U]�=J�m�e����$���f�&�j3��$KC��i��͐S���;�zi��bK��Ág����3mor;��$_����8�f,�s\a��	���&3�v���2|�%Mc]Á)- ��;�tdmE����j����9�Me;H-�[��]© 6bM1�U��A�	B!=�-&H
u��D �xz���#Y�Z�Tl�H1T�)B��*��I�r���y^��f ����d�[�uF�$]B���I0�%�*�J��)ts���<d�"g��šȨ��}Rj�ë��ۛe�n�Óh6٘N�~9�v����t���D��i@��+:��F�V=��>���r׫�|��W��:����ڧ5�����g���a��p0�9ϥ��w`�c��=UB����L�t�'��:�Ȑ�Loθ�	%�8D�"%
tOZ�YCU"�sE����\Ivp�����U5��U����d�],ɱ�
h��P0
��� 2�X1���T�����lk���`�,R[���e��c^��>�e���D\�ގw������ˤ���e`���Iy?p��[�[v,gIvO����{`����	d���.�@2������w`�Rl���t�wqb�}����;�Xe-I0����AL3#�+�t��}؍��q�����^Ӓ�#Č�����|77���n@��C�fn�|�j�����N�q�@|�a�S��G���%�L�3�{����-�i�},#��{{���K�_��J���h� �5!Y��r��a���AU�Ox��!�,��xm,BM^��J��ֹ�T�m�?ks+�;x���*�����Ld�.�}Mg��7��1��:8f`J�B�dY~a�l~�H㳤{m�&���q��p�Ypp����(�1�P%��b�vU��D9��}��5%L�����5����K�4-NYp���L�'�/�	N��0q�Z�sy)6�qssG;.����K/LngW��k@������X�g;c�>m����z��?]\\��kz�      �   5   x�3555�4�L������w���u�sᬮ�4�4�2 ��P:F��� =+      �   &   x�3��J,r��I�2�t�(I-�K�q��K����� ���      �   �   x���K
�0��u<LS_}�'�`F�����/��PD��*��̷	�����q��t�X�[�oʛ�������?�]E�A��*T(���d	�B���~�u.���<4�1c{�r�y�-�@�U|�9��U�@ի�(r�u9򑣱w�c:���.t�C':څN}�tB�[�(Z�e�h���h��
�NX$�_)�ŀ��O�Lμ;0;A����      �   I   x�3�tO,���V/Vp�(�,�I-�4B�T�Դ�$��$c]��D]�d]�TӤ$�$�D�2�=... ��       �   ?   x�3�4�,I-.Q���M�K12624欮��ن�\F@NiAJbI��K�3\���Ȅ+F��� V1�      �   U   x�3�4�t�(�,�I-Rp��K�/JIU0�3����p�����($&�d����r%$�Ur�gs礦pB �W� �n      �      x������ � �      �   4   x�3�4���4�4 R\&�2���� F�FFF �!�o�i	���qqq }B       �      x�3�4�4 �.cNc(ˈ�ʊ���� W��      �      x������ � �      �   '   x�3�t�(�,�I-�2�tO�K-�LV�wq2����� ��`      �     x���AJAE�ݧ��f4����������4cc����#��q!8�I��`�hr��Y-�E������*��R�p���ZÉ�,s�������g�	Gcm���M�����
|�`C����q��%�c��{���;�X㊦�,p�3`s���1�-Uk������a�\KϿ�,�,,h���L3���hQ�������*��B��vM�9ku���02���Ӡ|(�V|��5��VWp謉���8x�
������t]J���V      �   �   x�5�MNA��ݧh.`P.`\b�Vl&�A�q���~��09�&z�ƠHs�z7����u}U/Q��R���G%%�2�I�A����XS~�~�1|n(�r�$cl�u���t����o��H���*�Lh6���K)3�+숨Ld`Ǽ�s+S�+�2k�P��+���e��z�̚��|ڷ�s��d'u�,X��^�-�_�KED�v�xw�b�F�5>G��CdjXqIO8�/Ȉ�m{?�2�qhm��Ι��$��      �   �  x��S]O�0}.���ٚ����Ɔ1fs3��g��%A 0c���C��06M�=���{z7X���A�/�"�L�5���t�T1-A	QH��PHƙ�rj,w�����r��Nc��!�s�C�i^��qmX��z����`rs�#�q=���0�nG�W��g�9
�B�lp�?v;�%c�����@�`�be��$�",��J���e�u�ɏ�*�9��F~�:�w����j����TGr����f��b�aJ<cO"�}�$��ֱȌ��Y��\�V�,}-3��ԩ|���eUĦ���Z�����.4����57��?.�M�P�=M���<�#*A��q�}&�5�~�z^d��ee�z[.���e�����p��}���q�/��       �   3   x�3�I-.��K�4г�4�\F�E�)��%��y��z� �+F��� +s     