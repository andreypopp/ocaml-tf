(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appsync_datasource__dynamodb_config__delta_sync_config = {
  base_table_ttl : float prop option; [@option]
      (** base_table_ttl *)
  delta_sync_table_name : string prop;  (** delta_sync_table_name *)
  delta_sync_table_ttl : float prop option; [@option]
      (** delta_sync_table_ttl *)
}
[@@deriving yojson_of]
(** aws_appsync_datasource__dynamodb_config__delta_sync_config *)

type aws_appsync_datasource__dynamodb_config = {
  region : string prop option; [@option]  (** region *)
  table_name : string prop;  (** table_name *)
  use_caller_credentials : bool prop option; [@option]
      (** use_caller_credentials *)
  versioned : bool prop option; [@option]  (** versioned *)
  delta_sync_config :
    aws_appsync_datasource__dynamodb_config__delta_sync_config list;
}
[@@deriving yojson_of]
(** aws_appsync_datasource__dynamodb_config *)

type aws_appsync_datasource__elasticsearch_config = {
  endpoint : string prop;  (** endpoint *)
  region : string prop option; [@option]  (** region *)
}
[@@deriving yojson_of]
(** aws_appsync_datasource__elasticsearch_config *)

type aws_appsync_datasource__event_bridge_config = {
  event_bus_arn : string prop;  (** event_bus_arn *)
}
[@@deriving yojson_of]
(** aws_appsync_datasource__event_bridge_config *)

type aws_appsync_datasource__http_config__authorization_config__aws_iam_config = {
  signing_region : string prop option; [@option]
      (** signing_region *)
  signing_service_name : string prop option; [@option]
      (** signing_service_name *)
}
[@@deriving yojson_of]
(** aws_appsync_datasource__http_config__authorization_config__aws_iam_config *)

type aws_appsync_datasource__http_config__authorization_config = {
  authorization_type : string prop option; [@option]
      (** authorization_type *)
  aws_iam_config :
    aws_appsync_datasource__http_config__authorization_config__aws_iam_config
    list;
}
[@@deriving yojson_of]
(** aws_appsync_datasource__http_config__authorization_config *)

type aws_appsync_datasource__http_config = {
  endpoint : string prop;  (** endpoint *)
  authorization_config :
    aws_appsync_datasource__http_config__authorization_config list;
}
[@@deriving yojson_of]
(** aws_appsync_datasource__http_config *)

type aws_appsync_datasource__lambda_config = {
  function_arn : string prop;  (** function_arn *)
}
[@@deriving yojson_of]
(** aws_appsync_datasource__lambda_config *)

type aws_appsync_datasource__opensearchservice_config = {
  endpoint : string prop;  (** endpoint *)
  region : string prop option; [@option]  (** region *)
}
[@@deriving yojson_of]
(** aws_appsync_datasource__opensearchservice_config *)

type aws_appsync_datasource__relational_database_config__http_endpoint_config = {
  aws_secret_store_arn : string prop;  (** aws_secret_store_arn *)
  database_name : string prop option; [@option]  (** database_name *)
  db_cluster_identifier : string prop;  (** db_cluster_identifier *)
  region : string prop option; [@option]  (** region *)
  schema : string prop option; [@option]  (** schema *)
}
[@@deriving yojson_of]
(** aws_appsync_datasource__relational_database_config__http_endpoint_config *)

type aws_appsync_datasource__relational_database_config = {
  source_type : string prop option; [@option]  (** source_type *)
  http_endpoint_config :
    aws_appsync_datasource__relational_database_config__http_endpoint_config
    list;
}
[@@deriving yojson_of]
(** aws_appsync_datasource__relational_database_config *)

type aws_appsync_datasource = {
  api_id : string prop;  (** api_id *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  service_role_arn : string prop option; [@option]
      (** service_role_arn *)
  type_ : string prop; [@key "type"]  (** type *)
  dynamodb_config : aws_appsync_datasource__dynamodb_config list;
  elasticsearch_config :
    aws_appsync_datasource__elasticsearch_config list;
  event_bridge_config :
    aws_appsync_datasource__event_bridge_config list;
  http_config : aws_appsync_datasource__http_config list;
  lambda_config : aws_appsync_datasource__lambda_config list;
  opensearchservice_config :
    aws_appsync_datasource__opensearchservice_config list;
  relational_database_config :
    aws_appsync_datasource__relational_database_config list;
}
[@@deriving yojson_of]
(** aws_appsync_datasource *)

type t = {
  api_id : string prop;
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  service_role_arn : string prop;
  type_ : string prop;
}

let aws_appsync_datasource ?description ?id ?service_role_arn ~api_id
    ~name ~type_ ~dynamodb_config ~elasticsearch_config
    ~event_bridge_config ~http_config ~lambda_config
    ~opensearchservice_config ~relational_database_config
    __resource_id =
  let __resource_type = "aws_appsync_datasource" in
  let __resource =
    ({
       api_id;
       description;
       id;
       name;
       service_role_arn;
       type_;
       dynamodb_config;
       elasticsearch_config;
       event_bridge_config;
       http_config;
       lambda_config;
       opensearchservice_config;
       relational_database_config;
     }
      : aws_appsync_datasource)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appsync_datasource __resource);
  let __resource_attributes =
    ({
       api_id = Prop.computed __resource_type __resource_id "api_id";
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       service_role_arn =
         Prop.computed __resource_type __resource_id
           "service_role_arn";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
