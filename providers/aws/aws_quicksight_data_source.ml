(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_quicksight_data_source__credentials__credential_pair = {
  password : string prop;  (** password *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** aws_quicksight_data_source__credentials__credential_pair *)

type aws_quicksight_data_source__credentials = {
  copy_source_arn : string prop option; [@option]
      (** copy_source_arn *)
  credential_pair :
    aws_quicksight_data_source__credentials__credential_pair list;
}
[@@deriving yojson_of]
(** aws_quicksight_data_source__credentials *)

type aws_quicksight_data_source__parameters__amazon_elasticsearch = {
  domain : string prop;  (** domain *)
}
[@@deriving yojson_of]
(** aws_quicksight_data_source__parameters__amazon_elasticsearch *)

type aws_quicksight_data_source__parameters__athena = {
  work_group : string prop option; [@option]  (** work_group *)
}
[@@deriving yojson_of]
(** aws_quicksight_data_source__parameters__athena *)

type aws_quicksight_data_source__parameters__aurora = {
  database : string prop;  (** database *)
  host : string prop;  (** host *)
  port : float prop;  (** port *)
}
[@@deriving yojson_of]
(** aws_quicksight_data_source__parameters__aurora *)

type aws_quicksight_data_source__parameters__aurora_postgresql = {
  database : string prop;  (** database *)
  host : string prop;  (** host *)
  port : float prop;  (** port *)
}
[@@deriving yojson_of]
(** aws_quicksight_data_source__parameters__aurora_postgresql *)

type aws_quicksight_data_source__parameters__aws_iot_analytics = {
  data_set_name : string prop;  (** data_set_name *)
}
[@@deriving yojson_of]
(** aws_quicksight_data_source__parameters__aws_iot_analytics *)

type aws_quicksight_data_source__parameters__jira = {
  site_base_url : string prop;  (** site_base_url *)
}
[@@deriving yojson_of]
(** aws_quicksight_data_source__parameters__jira *)

type aws_quicksight_data_source__parameters__maria_db = {
  database : string prop;  (** database *)
  host : string prop;  (** host *)
  port : float prop;  (** port *)
}
[@@deriving yojson_of]
(** aws_quicksight_data_source__parameters__maria_db *)

type aws_quicksight_data_source__parameters__mysql = {
  database : string prop;  (** database *)
  host : string prop;  (** host *)
  port : float prop;  (** port *)
}
[@@deriving yojson_of]
(** aws_quicksight_data_source__parameters__mysql *)

type aws_quicksight_data_source__parameters__oracle = {
  database : string prop;  (** database *)
  host : string prop;  (** host *)
  port : float prop;  (** port *)
}
[@@deriving yojson_of]
(** aws_quicksight_data_source__parameters__oracle *)

type aws_quicksight_data_source__parameters__postgresql = {
  database : string prop;  (** database *)
  host : string prop;  (** host *)
  port : float prop;  (** port *)
}
[@@deriving yojson_of]
(** aws_quicksight_data_source__parameters__postgresql *)

type aws_quicksight_data_source__parameters__presto = {
  catalog : string prop;  (** catalog *)
  host : string prop;  (** host *)
  port : float prop;  (** port *)
}
[@@deriving yojson_of]
(** aws_quicksight_data_source__parameters__presto *)

type aws_quicksight_data_source__parameters__rds = {
  database : string prop;  (** database *)
  instance_id : string prop;  (** instance_id *)
}
[@@deriving yojson_of]
(** aws_quicksight_data_source__parameters__rds *)

type aws_quicksight_data_source__parameters__redshift = {
  cluster_id : string prop option; [@option]  (** cluster_id *)
  database : string prop;  (** database *)
  host : string prop option; [@option]  (** host *)
  port : float prop option; [@option]  (** port *)
}
[@@deriving yojson_of]
(** aws_quicksight_data_source__parameters__redshift *)

type aws_quicksight_data_source__parameters__s3__manifest_file_location = {
  bucket : string prop;  (** bucket *)
  key : string prop;  (** key *)
}
[@@deriving yojson_of]
(** aws_quicksight_data_source__parameters__s3__manifest_file_location *)

type aws_quicksight_data_source__parameters__s3 = {
  manifest_file_location :
    aws_quicksight_data_source__parameters__s3__manifest_file_location
    list;
}
[@@deriving yojson_of]
(** aws_quicksight_data_source__parameters__s3 *)

type aws_quicksight_data_source__parameters__service_now = {
  site_base_url : string prop;  (** site_base_url *)
}
[@@deriving yojson_of]
(** aws_quicksight_data_source__parameters__service_now *)

type aws_quicksight_data_source__parameters__snowflake = {
  database : string prop;  (** database *)
  host : string prop;  (** host *)
  warehouse : string prop;  (** warehouse *)
}
[@@deriving yojson_of]
(** aws_quicksight_data_source__parameters__snowflake *)

type aws_quicksight_data_source__parameters__spark = {
  host : string prop;  (** host *)
  port : float prop;  (** port *)
}
[@@deriving yojson_of]
(** aws_quicksight_data_source__parameters__spark *)

type aws_quicksight_data_source__parameters__sql_server = {
  database : string prop;  (** database *)
  host : string prop;  (** host *)
  port : float prop;  (** port *)
}
[@@deriving yojson_of]
(** aws_quicksight_data_source__parameters__sql_server *)

type aws_quicksight_data_source__parameters__teradata = {
  database : string prop;  (** database *)
  host : string prop;  (** host *)
  port : float prop;  (** port *)
}
[@@deriving yojson_of]
(** aws_quicksight_data_source__parameters__teradata *)

type aws_quicksight_data_source__parameters__twitter = {
  max_rows : float prop;  (** max_rows *)
  query : string prop;  (** query *)
}
[@@deriving yojson_of]
(** aws_quicksight_data_source__parameters__twitter *)

type aws_quicksight_data_source__parameters = {
  amazon_elasticsearch :
    aws_quicksight_data_source__parameters__amazon_elasticsearch list;
  athena : aws_quicksight_data_source__parameters__athena list;
  aurora : aws_quicksight_data_source__parameters__aurora list;
  aurora_postgresql :
    aws_quicksight_data_source__parameters__aurora_postgresql list;
  aws_iot_analytics :
    aws_quicksight_data_source__parameters__aws_iot_analytics list;
  jira : aws_quicksight_data_source__parameters__jira list;
  maria_db : aws_quicksight_data_source__parameters__maria_db list;
  mysql : aws_quicksight_data_source__parameters__mysql list;
  oracle : aws_quicksight_data_source__parameters__oracle list;
  postgresql :
    aws_quicksight_data_source__parameters__postgresql list;
  presto : aws_quicksight_data_source__parameters__presto list;
  rds : aws_quicksight_data_source__parameters__rds list;
  redshift : aws_quicksight_data_source__parameters__redshift list;
  s3 : aws_quicksight_data_source__parameters__s3 list;
  service_now :
    aws_quicksight_data_source__parameters__service_now list;
  snowflake : aws_quicksight_data_source__parameters__snowflake list;
  spark : aws_quicksight_data_source__parameters__spark list;
  sql_server :
    aws_quicksight_data_source__parameters__sql_server list;
  teradata : aws_quicksight_data_source__parameters__teradata list;
  twitter : aws_quicksight_data_source__parameters__twitter list;
}
[@@deriving yojson_of]
(** aws_quicksight_data_source__parameters *)

type aws_quicksight_data_source__permission = {
  actions : string prop list;  (** actions *)
  principal : string prop;  (** principal *)
}
[@@deriving yojson_of]
(** aws_quicksight_data_source__permission *)

type aws_quicksight_data_source__ssl_properties = {
  disable_ssl : bool prop;  (** disable_ssl *)
}
[@@deriving yojson_of]
(** aws_quicksight_data_source__ssl_properties *)

type aws_quicksight_data_source__vpc_connection_properties = {
  vpc_connection_arn : string prop;  (** vpc_connection_arn *)
}
[@@deriving yojson_of]
(** aws_quicksight_data_source__vpc_connection_properties *)

type aws_quicksight_data_source = {
  aws_account_id : string prop option; [@option]
      (** aws_account_id *)
  data_source_id : string prop;  (** data_source_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  type_ : string prop; [@key "type"]  (** type *)
  credentials : aws_quicksight_data_source__credentials list;
  parameters : aws_quicksight_data_source__parameters list;
  permission : aws_quicksight_data_source__permission list;
  ssl_properties : aws_quicksight_data_source__ssl_properties list;
  vpc_connection_properties :
    aws_quicksight_data_source__vpc_connection_properties list;
}
[@@deriving yojson_of]
(** aws_quicksight_data_source *)

type t = {
  arn : string prop;
  aws_account_id : string prop;
  data_source_id : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

let aws_quicksight_data_source ?aws_account_id ?id ?tags ?tags_all
    ~data_source_id ~name ~type_ ~credentials ~parameters ~permission
    ~ssl_properties ~vpc_connection_properties __resource_id =
  let __resource_type = "aws_quicksight_data_source" in
  let __resource =
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
     }
      : aws_quicksight_data_source)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_quicksight_data_source __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       aws_account_id =
         Prop.computed __resource_type __resource_id "aws_account_id";
       data_source_id =
         Prop.computed __resource_type __resource_id "data_source_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
