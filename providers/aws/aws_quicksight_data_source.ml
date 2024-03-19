(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type credentials__credential_pair = {
  password: string prop;  (** password *)
  username: string prop;  (** username *)
} [@@deriving yojson_of]
(** credentials__credential_pair *)

type credentials = {
  copy_source_arn: string  prop option; [@option] (** copy_source_arn *)
  credential_pair: credentials__credential_pair list;
} [@@deriving yojson_of]
(** credentials *)

type parameters__amazon_elasticsearch = {
  domain: string prop;  (** domain *)
} [@@deriving yojson_of]
(** parameters__amazon_elasticsearch *)

type parameters__athena = {
  work_group: string  prop option; [@option] (** work_group *)
} [@@deriving yojson_of]
(** parameters__athena *)

type parameters__aurora = {
  database: string prop;  (** database *)
  host: string prop;  (** host *)
  port: float prop;  (** port *)
} [@@deriving yojson_of]
(** parameters__aurora *)

type parameters__aurora_postgresql = {
  database: string prop;  (** database *)
  host: string prop;  (** host *)
  port: float prop;  (** port *)
} [@@deriving yojson_of]
(** parameters__aurora_postgresql *)

type parameters__aws_iot_analytics = {
  data_set_name: string prop;  (** data_set_name *)
} [@@deriving yojson_of]
(** parameters__aws_iot_analytics *)

type parameters__jira = {
  site_base_url: string prop;  (** site_base_url *)
} [@@deriving yojson_of]
(** parameters__jira *)

type parameters__maria_db = {
  database: string prop;  (** database *)
  host: string prop;  (** host *)
  port: float prop;  (** port *)
} [@@deriving yojson_of]
(** parameters__maria_db *)

type parameters__mysql = {
  database: string prop;  (** database *)
  host: string prop;  (** host *)
  port: float prop;  (** port *)
} [@@deriving yojson_of]
(** parameters__mysql *)

type parameters__oracle = {
  database: string prop;  (** database *)
  host: string prop;  (** host *)
  port: float prop;  (** port *)
} [@@deriving yojson_of]
(** parameters__oracle *)

type parameters__postgresql = {
  database: string prop;  (** database *)
  host: string prop;  (** host *)
  port: float prop;  (** port *)
} [@@deriving yojson_of]
(** parameters__postgresql *)

type parameters__presto = {
  catalog: string prop;  (** catalog *)
  host: string prop;  (** host *)
  port: float prop;  (** port *)
} [@@deriving yojson_of]
(** parameters__presto *)

type parameters__rds = {
  database: string prop;  (** database *)
  instance_id: string prop;  (** instance_id *)
} [@@deriving yojson_of]
(** parameters__rds *)

type parameters__redshift = {
  cluster_id: string  prop option; [@option] (** cluster_id *)
  database: string prop;  (** database *)
  host: string  prop option; [@option] (** host *)
  port: float  prop option; [@option] (** port *)
} [@@deriving yojson_of]
(** parameters__redshift *)

type parameters__s3__manifest_file_location = {
  bucket: string prop;  (** bucket *)
  key: string prop;  (** key *)
} [@@deriving yojson_of]
(** parameters__s3__manifest_file_location *)

type parameters__s3 = {
  manifest_file_location: parameters__s3__manifest_file_location list;
} [@@deriving yojson_of]
(** parameters__s3 *)

type parameters__service_now = {
  site_base_url: string prop;  (** site_base_url *)
} [@@deriving yojson_of]
(** parameters__service_now *)

type parameters__snowflake = {
  database: string prop;  (** database *)
  host: string prop;  (** host *)
  warehouse: string prop;  (** warehouse *)
} [@@deriving yojson_of]
(** parameters__snowflake *)

type parameters__spark = {
  host: string prop;  (** host *)
  port: float prop;  (** port *)
} [@@deriving yojson_of]
(** parameters__spark *)

type parameters__sql_server = {
  database: string prop;  (** database *)
  host: string prop;  (** host *)
  port: float prop;  (** port *)
} [@@deriving yojson_of]
(** parameters__sql_server *)

type parameters__teradata = {
  database: string prop;  (** database *)
  host: string prop;  (** host *)
  port: float prop;  (** port *)
} [@@deriving yojson_of]
(** parameters__teradata *)

type parameters__twitter = {
  max_rows: float prop;  (** max_rows *)
  query: string prop;  (** query *)
} [@@deriving yojson_of]
(** parameters__twitter *)

type parameters = {
  amazon_elasticsearch: parameters__amazon_elasticsearch list;
  athena: parameters__athena list;
  aurora: parameters__aurora list;
  aurora_postgresql: parameters__aurora_postgresql list;
  aws_iot_analytics: parameters__aws_iot_analytics list;
  jira: parameters__jira list;
  maria_db: parameters__maria_db list;
  mysql: parameters__mysql list;
  oracle: parameters__oracle list;
  postgresql: parameters__postgresql list;
  presto: parameters__presto list;
  rds: parameters__rds list;
  redshift: parameters__redshift list;
  s3: parameters__s3 list;
  service_now: parameters__service_now list;
  snowflake: parameters__snowflake list;
  spark: parameters__spark list;
  sql_server: parameters__sql_server list;
  teradata: parameters__teradata list;
  twitter: parameters__twitter list;
} [@@deriving yojson_of]
(** parameters *)

type permission = {
  actions: string  prop list;  (** actions *)
  principal: string prop;  (** principal *)
} [@@deriving yojson_of]
(** permission *)

type ssl_properties = {
  disable_ssl: bool prop;  (** disable_ssl *)
} [@@deriving yojson_of]
(** ssl_properties *)

type vpc_connection_properties = {
  vpc_connection_arn: string prop;  (** vpc_connection_arn *)
} [@@deriving yojson_of]
(** vpc_connection_properties *)

type aws_quicksight_data_source = {
  aws_account_id: string  prop option; [@option] (** aws_account_id *)
  data_source_id: string prop;  (** data_source_id *)
  id: string  prop option; [@option] (** id *)
  name: string prop;  (** name *)
  tags: (string * string   prop) list option; [@option] (** tags *)
  tags_all: (string * string   prop) list option; [@option] (** tags_all *)
  type_: string prop; [@key "type"] (** type *)
  credentials: credentials list;
  parameters: parameters list;
  permission: permission list;
  ssl_properties: ssl_properties list;
  vpc_connection_properties: vpc_connection_properties list;
} [@@deriving yojson_of]
(** aws_quicksight_data_source *)

let credentials__credential_pair ~password ~username () =
  ({
    password;
    username;
  } : credentials__credential_pair);;

let credentials ?copy_source_arn ~credential_pair () =
  ({
    copy_source_arn;
    credential_pair;
  } : credentials);;

let parameters__amazon_elasticsearch ~domain () =
  ({
    domain;
  } : parameters__amazon_elasticsearch);;

let parameters__athena ?work_group () =
  ({
    work_group;
  } : parameters__athena);;

let parameters__aurora ~database ~host ~port () =
  ({
    database;
    host;
    port;
  } : parameters__aurora);;

let parameters__aurora_postgresql ~database ~host ~port () =
  ({
    database;
    host;
    port;
  } : parameters__aurora_postgresql);;

let parameters__aws_iot_analytics ~data_set_name () =
  ({
    data_set_name;
  } : parameters__aws_iot_analytics);;

let parameters__jira ~site_base_url () =
  ({
    site_base_url;
  } : parameters__jira);;

let parameters__maria_db ~database ~host ~port () =
  ({
    database;
    host;
    port;
  } : parameters__maria_db);;

let parameters__mysql ~database ~host ~port () =
  ({
    database;
    host;
    port;
  } : parameters__mysql);;

let parameters__oracle ~database ~host ~port () =
  ({
    database;
    host;
    port;
  } : parameters__oracle);;

let parameters__postgresql ~database ~host ~port () =
  ({
    database;
    host;
    port;
  } : parameters__postgresql);;

let parameters__presto ~catalog ~host ~port () =
  ({
    catalog;
    host;
    port;
  } : parameters__presto);;

let parameters__rds ~database ~instance_id () =
  ({
    database;
    instance_id;
  } : parameters__rds);;

let parameters__redshift ?cluster_id ?host ?port ~database () =
  ({
    cluster_id;
    database;
    host;
    port;
  } : parameters__redshift);;

let parameters__s3__manifest_file_location ~bucket ~key () =
  ({
    bucket;
    key;
  } : parameters__s3__manifest_file_location);;

let parameters__s3 ~manifest_file_location () =
  ({
    manifest_file_location;
  } : parameters__s3);;

let parameters__service_now ~site_base_url () =
  ({
    site_base_url;
  } : parameters__service_now);;

let parameters__snowflake ~database ~host ~warehouse () =
  ({
    database;
    host;
    warehouse;
  } : parameters__snowflake);;

let parameters__spark ~host ~port () =
  ({
    host;
    port;
  } : parameters__spark);;

let parameters__sql_server ~database ~host ~port () =
  ({
    database;
    host;
    port;
  } : parameters__sql_server);;

let parameters__teradata ~database ~host ~port () =
  ({
    database;
    host;
    port;
  } : parameters__teradata);;

let parameters__twitter ~max_rows ~query () =
  ({
    max_rows;
    query;
  } : parameters__twitter);;

let parameters ~amazon_elasticsearch ~athena ~aurora ~aurora_postgresql ~aws_iot_analytics ~jira ~maria_db ~mysql ~oracle ~postgresql ~presto ~rds ~redshift ~s3 ~service_now ~snowflake ~spark ~sql_server ~teradata ~twitter () =
  ({
    amazon_elasticsearch;
    athena;
    aurora;
    aurora_postgresql;
    aws_iot_analytics;
    jira;
    maria_db;
    mysql;
    oracle;
    postgresql;
    presto;
    rds;
    redshift;
    s3;
    service_now;
    snowflake;
    spark;
    sql_server;
    teradata;
    twitter;
  } : parameters);;

let permission ~actions ~principal () =
  ({
    actions;
    principal;
  } : permission);;

let ssl_properties ~disable_ssl () =
  ({
    disable_ssl;
  } : ssl_properties);;

let vpc_connection_properties ~vpc_connection_arn () =
  ({
    vpc_connection_arn;
  } : vpc_connection_properties);;

let aws_quicksight_data_source ?aws_account_id ?id ?tags ?tags_all ~data_source_id ~name ~type_ ~credentials ~parameters ~permission ~ssl_properties ~vpc_connection_properties () =
  ({
    aws_account_id;
    data_source_id;
    id;
    name;
    tags;
    tags_all;
    type_;
    credentials;
    parameters;
    permission;
    ssl_properties;
    vpc_connection_properties;
  } : aws_quicksight_data_source);;

type t = {
  arn: string prop;
  aws_account_id: string prop;
  data_source_id: string prop;
  id: string prop;
  name: string prop;
  tags: (string * string) list prop;
  tags_all: (string * string) list prop;
  type_: string prop;
}

let register ?tf_module ?aws_account_id ?id ?tags ?tags_all ~data_source_id ~name ~type_ ~credentials ~parameters ~permission ~ssl_properties ~vpc_connection_properties __resource_id =
  let __resource_type = "aws_quicksight_data_source" in
  let __resource = aws_quicksight_data_source ?aws_account_id ?id ?tags ?tags_all ~data_source_id ~name ~type_ ~credentials ~parameters ~permission ~ssl_properties ~vpc_connection_properties () in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_quicksight_data_source __resource);
  let __resource_attributes = ({
    arn = Prop.computed __resource_type __resource_id "arn";
    aws_account_id = Prop.computed __resource_type __resource_id "aws_account_id";
    data_source_id = Prop.computed __resource_type __resource_id "data_source_id";
    id = Prop.computed __resource_type __resource_id "id";
    name = Prop.computed __resource_type __resource_id "name";
    tags = Prop.computed __resource_type __resource_id "tags";
    tags_all = Prop.computed __resource_type __resource_id "tags_all";
    type_ = Prop.computed __resource_type __resource_id "type";
  } : t) in
  __resource_attributes;;

