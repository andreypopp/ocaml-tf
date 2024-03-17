(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_appsync_datasource__dynamodb_config__delta_sync_config = {
  base_table_ttl : float option; [@option]  (** base_table_ttl *)
  delta_sync_table_name : string;  (** delta_sync_table_name *)
  delta_sync_table_ttl : float option; [@option]
      (** delta_sync_table_ttl *)
}
[@@deriving yojson_of]
(** aws_appsync_datasource__dynamodb_config__delta_sync_config *)

type aws_appsync_datasource__dynamodb_config = {
  region : string option; [@option]  (** region *)
  table_name : string;  (** table_name *)
  use_caller_credentials : bool option; [@option]
      (** use_caller_credentials *)
  versioned : bool option; [@option]  (** versioned *)
  delta_sync_config :
    aws_appsync_datasource__dynamodb_config__delta_sync_config list;
}
[@@deriving yojson_of]
(** aws_appsync_datasource__dynamodb_config *)

type aws_appsync_datasource__elasticsearch_config = {
  endpoint : string;  (** endpoint *)
  region : string option; [@option]  (** region *)
}
[@@deriving yojson_of]
(** aws_appsync_datasource__elasticsearch_config *)

type aws_appsync_datasource__event_bridge_config = {
  event_bus_arn : string;  (** event_bus_arn *)
}
[@@deriving yojson_of]
(** aws_appsync_datasource__event_bridge_config *)

type aws_appsync_datasource__http_config__authorization_config__aws_iam_config = {
  signing_region : string option; [@option]  (** signing_region *)
  signing_service_name : string option; [@option]
      (** signing_service_name *)
}
[@@deriving yojson_of]
(** aws_appsync_datasource__http_config__authorization_config__aws_iam_config *)

type aws_appsync_datasource__http_config__authorization_config = {
  authorization_type : string option; [@option]
      (** authorization_type *)
  aws_iam_config :
    aws_appsync_datasource__http_config__authorization_config__aws_iam_config
    list;
}
[@@deriving yojson_of]
(** aws_appsync_datasource__http_config__authorization_config *)

type aws_appsync_datasource__http_config = {
  endpoint : string;  (** endpoint *)
  authorization_config :
    aws_appsync_datasource__http_config__authorization_config list;
}
[@@deriving yojson_of]
(** aws_appsync_datasource__http_config *)

type aws_appsync_datasource__lambda_config = {
  function_arn : string;  (** function_arn *)
}
[@@deriving yojson_of]
(** aws_appsync_datasource__lambda_config *)

type aws_appsync_datasource__opensearchservice_config = {
  endpoint : string;  (** endpoint *)
  region : string option; [@option]  (** region *)
}
[@@deriving yojson_of]
(** aws_appsync_datasource__opensearchservice_config *)

type aws_appsync_datasource__relational_database_config__http_endpoint_config = {
  aws_secret_store_arn : string;  (** aws_secret_store_arn *)
  database_name : string option; [@option]  (** database_name *)
  db_cluster_identifier : string;  (** db_cluster_identifier *)
  region : string option; [@option]  (** region *)
  schema : string option; [@option]  (** schema *)
}
[@@deriving yojson_of]
(** aws_appsync_datasource__relational_database_config__http_endpoint_config *)

type aws_appsync_datasource__relational_database_config = {
  source_type : string option; [@option]  (** source_type *)
  http_endpoint_config :
    aws_appsync_datasource__relational_database_config__http_endpoint_config
    list;
}
[@@deriving yojson_of]
(** aws_appsync_datasource__relational_database_config *)

type aws_appsync_datasource = {
  api_id : string;  (** api_id *)
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  service_role_arn : string option; [@option]
      (** service_role_arn *)
  type_ : string; [@key "type"]  (** type *)
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

let aws_appsync_datasource ?description ?service_role_arn ~api_id
    ~name ~type_ ~dynamodb_config ~elasticsearch_config
    ~event_bridge_config ~http_config ~lambda_config
    ~opensearchservice_config ~relational_database_config
    __resource_id =
  let __resource_type = "aws_appsync_datasource" in
  let __resource =
    {
      api_id;
      description;
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appsync_datasource __resource);
  ()
