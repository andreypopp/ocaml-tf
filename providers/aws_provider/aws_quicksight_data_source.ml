(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_quicksight_data_source__credentials__credential_pair = {
  password: string;  (** password *)
  username: string;  (** username *)
} [@@deriving yojson_of]
(** aws_quicksight_data_source__credentials__credential_pair *)

type aws_quicksight_data_source__credentials = {
  copy_source_arn: string option; [@option] (** copy_source_arn *)
  credential_pair: aws_quicksight_data_source__credentials__credential_pair list;
} [@@deriving yojson_of]
(** aws_quicksight_data_source__credentials *)

type aws_quicksight_data_source__parameters__amazon_elasticsearch = {
  domain: string;  (** domain *)
} [@@deriving yojson_of]
(** aws_quicksight_data_source__parameters__amazon_elasticsearch *)

type aws_quicksight_data_source__parameters__athena = {
  work_group: string option; [@option] (** work_group *)
} [@@deriving yojson_of]
(** aws_quicksight_data_source__parameters__athena *)

type aws_quicksight_data_source__parameters__aurora = {
  database: string;  (** database *)
  host: string;  (** host *)
  port: float;  (** port *)
} [@@deriving yojson_of]
(** aws_quicksight_data_source__parameters__aurora *)

type aws_quicksight_data_source__parameters__aurora_postgresql = {
  database: string;  (** database *)
  host: string;  (** host *)
  port: float;  (** port *)
} [@@deriving yojson_of]
(** aws_quicksight_data_source__parameters__aurora_postgresql *)

type aws_quicksight_data_source__parameters__aws_iot_analytics = {
  data_set_name: string;  (** data_set_name *)
} [@@deriving yojson_of]
(** aws_quicksight_data_source__parameters__aws_iot_analytics *)

type aws_quicksight_data_source__parameters__jira = {
  site_base_url: string;  (** site_base_url *)
} [@@deriving yojson_of]
(** aws_quicksight_data_source__parameters__jira *)

type aws_quicksight_data_source__parameters__maria_db = {
  database: string;  (** database *)
  host: string;  (** host *)
  port: float;  (** port *)
} [@@deriving yojson_of]
(** aws_quicksight_data_source__parameters__maria_db *)

type aws_quicksight_data_source__parameters__mysql = {
  database: string;  (** database *)
  host: string;  (** host *)
  port: float;  (** port *)
} [@@deriving yojson_of]
(** aws_quicksight_data_source__parameters__mysql *)

type aws_quicksight_data_source__parameters__oracle = {
  database: string;  (** database *)
  host: string;  (** host *)
  port: float;  (** port *)
} [@@deriving yojson_of]
(** aws_quicksight_data_source__parameters__oracle *)

type aws_quicksight_data_source__parameters__postgresql = {
  database: string;  (** database *)
  host: string;  (** host *)
  port: float;  (** port *)
} [@@deriving yojson_of]
(** aws_quicksight_data_source__parameters__postgresql *)

type aws_quicksight_data_source__parameters__presto = {
  catalog: string;  (** catalog *)
  host: string;  (** host *)
  port: float;  (** port *)
} [@@deriving yojson_of]
(** aws_quicksight_data_source__parameters__presto *)

type aws_quicksight_data_source__parameters__rds = {
  database: string;  (** database *)
  instance_id: string;  (** instance_id *)
} [@@deriving yojson_of]
(** aws_quicksight_data_source__parameters__rds *)

type aws_quicksight_data_source__parameters__redshift = {
  cluster_id: string option; [@option] (** cluster_id *)
  database: string;  (** database *)
  host: string option; [@option] (** host *)
  port: float option; [@option] (** port *)
} [@@deriving yojson_of]
(** aws_quicksight_data_source__parameters__redshift *)

type aws_quicksight_data_source__parameters__s3__manifest_file_location = {
  bucket: string;  (** bucket *)
  key: string;  (** key *)
} [@@deriving yojson_of]
(** aws_quicksight_data_source__parameters__s3__manifest_file_location *)

type aws_quicksight_data_source__parameters__s3 = {
  manifest_file_location: aws_quicksight_data_source__parameters__s3__manifest_file_location list;
} [@@deriving yojson_of]
(** aws_quicksight_data_source__parameters__s3 *)

type aws_quicksight_data_source__parameters__service_now = {
  site_base_url: string;  (** site_base_url *)
} [@@deriving yojson_of]
(** aws_quicksight_data_source__parameters__service_now *)

type aws_quicksight_data_source__parameters__snowflake = {
  database: string;  (** database *)
  host: string;  (** host *)
  warehouse: string;  (** warehouse *)
} [@@deriving yojson_of]
(** aws_quicksight_data_source__parameters__snowflake *)

type aws_quicksight_data_source__parameters__spark = {
  host: string;  (** host *)
  port: float;  (** port *)
} [@@deriving yojson_of]
(** aws_quicksight_data_source__parameters__spark *)

type aws_quicksight_data_source__parameters__sql_server = {
  database: string;  (** database *)
  host: string;  (** host *)
  port: float;  (** port *)
} [@@deriving yojson_of]
(** aws_quicksight_data_source__parameters__sql_server *)

type aws_quicksight_data_source__parameters__teradata = {
  database: string;  (** database *)
  host: string;  (** host *)
  port: float;  (** port *)
} [@@deriving yojson_of]
(** aws_quicksight_data_source__parameters__teradata *)

type aws_quicksight_data_source__parameters__twitter = {
  max_rows: float;  (** max_rows *)
  query: string;  (** query *)
} [@@deriving yojson_of]
(** aws_quicksight_data_source__parameters__twitter *)

type aws_quicksight_data_source__parameters = {
  amazon_elasticsearch: aws_quicksight_data_source__parameters__amazon_elasticsearch list;
  athena: aws_quicksight_data_source__parameters__athena list;
  aurora: aws_quicksight_data_source__parameters__aurora list;
  aurora_postgresql: aws_quicksight_data_source__parameters__aurora_postgresql list;
  aws_iot_analytics: aws_quicksight_data_source__parameters__aws_iot_analytics list;
  jira: aws_quicksight_data_source__parameters__jira list;
  maria_db: aws_quicksight_data_source__parameters__maria_db list;
  mysql: aws_quicksight_data_source__parameters__mysql list;
  oracle: aws_quicksight_data_source__parameters__oracle list;
  postgresql: aws_quicksight_data_source__parameters__postgresql list;
  presto: aws_quicksight_data_source__parameters__presto list;
  rds: aws_quicksight_data_source__parameters__rds list;
  redshift: aws_quicksight_data_source__parameters__redshift list;
  s3: aws_quicksight_data_source__parameters__s3 list;
  service_now: aws_quicksight_data_source__parameters__service_now list;
  snowflake: aws_quicksight_data_source__parameters__snowflake list;
  spark: aws_quicksight_data_source__parameters__spark list;
  sql_server: aws_quicksight_data_source__parameters__sql_server list;
  teradata: aws_quicksight_data_source__parameters__teradata list;
  twitter: aws_quicksight_data_source__parameters__twitter list;
} [@@deriving yojson_of]
(** aws_quicksight_data_source__parameters *)

type aws_quicksight_data_source__permission = {
  actions: string list;  (** actions *)
  principal: string;  (** principal *)
} [@@deriving yojson_of]
(** aws_quicksight_data_source__permission *)

type aws_quicksight_data_source__ssl_properties = {
  disable_ssl: bool;  (** disable_ssl *)
} [@@deriving yojson_of]
(** aws_quicksight_data_source__ssl_properties *)

type aws_quicksight_data_source__vpc_connection_properties = {
  vpc_connection_arn: string;  (** vpc_connection_arn *)
} [@@deriving yojson_of]
(** aws_quicksight_data_source__vpc_connection_properties *)

type aws_quicksight_data_source = {
  data_source_id: string;  (** data_source_id *)
  name: string;  (** name *)
  tags: (string * string) list option; [@option] (** tags *)
  type_: string; [@key "type"] (** type *)
  credentials: aws_quicksight_data_source__credentials list;
  parameters: aws_quicksight_data_source__parameters list;
  permission: aws_quicksight_data_source__permission list;
  ssl_properties: aws_quicksight_data_source__ssl_properties list;
  vpc_connection_properties: aws_quicksight_data_source__vpc_connection_properties list;
} [@@deriving yojson_of]
(** aws_quicksight_data_source *)

let aws_quicksight_data_source ?tags  ~data_source_id ~name ~type_ ~credentials ~parameters ~permission ~ssl_properties ~vpc_connection_properties __resource_id =
  let __resource_type = "aws_quicksight_data_source" in
  let __resource = {
    data_source_id;
    name;
    tags;
    type_;
    credentials;
    parameters;
    permission;
    ssl_properties;
    vpc_connection_properties;
  } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_quicksight_data_source __resource);
  ()
  ;;

