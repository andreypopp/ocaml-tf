(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_glue_crawler__catalog_target = {
  connection_name : string option; [@option]  (** connection_name *)
  database_name : string;  (** database_name *)
  dlq_event_queue_arn : string option; [@option]
      (** dlq_event_queue_arn *)
  event_queue_arn : string option; [@option]  (** event_queue_arn *)
  tables : string list;  (** tables *)
}
[@@deriving yojson_of]
(** aws_glue_crawler__catalog_target *)

type aws_glue_crawler__delta_target = {
  connection_name : string option; [@option]  (** connection_name *)
  create_native_delta_table : bool option; [@option]
      (** create_native_delta_table *)
  delta_tables : string list;  (** delta_tables *)
  write_manifest : bool;  (** write_manifest *)
}
[@@deriving yojson_of]
(** aws_glue_crawler__delta_target *)

type aws_glue_crawler__dynamodb_target = {
  path : string;  (** path *)
  scan_all : bool option; [@option]  (** scan_all *)
  scan_rate : float option; [@option]  (** scan_rate *)
}
[@@deriving yojson_of]
(** aws_glue_crawler__dynamodb_target *)

type aws_glue_crawler__hudi_target = {
  connection_name : string option; [@option]  (** connection_name *)
  exclusions : string list option; [@option]  (** exclusions *)
  maximum_traversal_depth : float;  (** maximum_traversal_depth *)
  paths : string list;  (** paths *)
}
[@@deriving yojson_of]
(** aws_glue_crawler__hudi_target *)

type aws_glue_crawler__iceberg_target = {
  connection_name : string option; [@option]  (** connection_name *)
  exclusions : string list option; [@option]  (** exclusions *)
  maximum_traversal_depth : float;  (** maximum_traversal_depth *)
  paths : string list;  (** paths *)
}
[@@deriving yojson_of]
(** aws_glue_crawler__iceberg_target *)

type aws_glue_crawler__jdbc_target = {
  connection_name : string;  (** connection_name *)
  enable_additional_metadata : string list option; [@option]
      (** enable_additional_metadata *)
  exclusions : string list option; [@option]  (** exclusions *)
  path : string;  (** path *)
}
[@@deriving yojson_of]
(** aws_glue_crawler__jdbc_target *)

type aws_glue_crawler__lake_formation_configuration = {
  account_id : string option; [@option]  (** account_id *)
  use_lake_formation_credentials : bool option; [@option]
      (** use_lake_formation_credentials *)
}
[@@deriving yojson_of]
(** aws_glue_crawler__lake_formation_configuration *)

type aws_glue_crawler__lineage_configuration = {
  crawler_lineage_settings : string option; [@option]
      (** crawler_lineage_settings *)
}
[@@deriving yojson_of]
(** aws_glue_crawler__lineage_configuration *)

type aws_glue_crawler__mongodb_target = {
  connection_name : string;  (** connection_name *)
  path : string;  (** path *)
  scan_all : bool option; [@option]  (** scan_all *)
}
[@@deriving yojson_of]
(** aws_glue_crawler__mongodb_target *)

type aws_glue_crawler__recrawl_policy = {
  recrawl_behavior : string option; [@option]  (** recrawl_behavior *)
}
[@@deriving yojson_of]
(** aws_glue_crawler__recrawl_policy *)

type aws_glue_crawler__s3_target = {
  connection_name : string option; [@option]  (** connection_name *)
  dlq_event_queue_arn : string option; [@option]
      (** dlq_event_queue_arn *)
  event_queue_arn : string option; [@option]  (** event_queue_arn *)
  exclusions : string list option; [@option]  (** exclusions *)
  path : string;  (** path *)
  sample_size : float option; [@option]  (** sample_size *)
}
[@@deriving yojson_of]
(** aws_glue_crawler__s3_target *)

type aws_glue_crawler__schema_change_policy = {
  delete_behavior : string option; [@option]  (** delete_behavior *)
  update_behavior : string option; [@option]  (** update_behavior *)
}
[@@deriving yojson_of]
(** aws_glue_crawler__schema_change_policy *)

type aws_glue_crawler = {
  classifiers : string list option; [@option]  (** classifiers *)
  configuration : string option; [@option]  (** configuration *)
  database_name : string;  (** database_name *)
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  role : string;  (** role *)
  schedule : string option; [@option]  (** schedule *)
  security_configuration : string option; [@option]
      (** security_configuration *)
  table_prefix : string option; [@option]  (** table_prefix *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  catalog_target : aws_glue_crawler__catalog_target list;
  delta_target : aws_glue_crawler__delta_target list;
  dynamodb_target : aws_glue_crawler__dynamodb_target list;
  hudi_target : aws_glue_crawler__hudi_target list;
  iceberg_target : aws_glue_crawler__iceberg_target list;
  jdbc_target : aws_glue_crawler__jdbc_target list;
  lake_formation_configuration :
    aws_glue_crawler__lake_formation_configuration list;
  lineage_configuration :
    aws_glue_crawler__lineage_configuration list;
  mongodb_target : aws_glue_crawler__mongodb_target list;
  recrawl_policy : aws_glue_crawler__recrawl_policy list;
  s3_target : aws_glue_crawler__s3_target list;
  schema_change_policy : aws_glue_crawler__schema_change_policy list;
}
[@@deriving yojson_of]
(** aws_glue_crawler *)

let aws_glue_crawler ?classifiers ?configuration ?description ?id
    ?schedule ?security_configuration ?table_prefix ?tags ?tags_all
    ~database_name ~name ~role ~catalog_target ~delta_target
    ~dynamodb_target ~hudi_target ~iceberg_target ~jdbc_target
    ~lake_formation_configuration ~lineage_configuration
    ~mongodb_target ~recrawl_policy ~s3_target ~schema_change_policy
    __resource_id =
  let __resource_type = "aws_glue_crawler" in
  let __resource =
    {
      classifiers;
      configuration;
      database_name;
      description;
      id;
      name;
      role;
      schedule;
      security_configuration;
      table_prefix;
      tags;
      tags_all;
      catalog_target;
      delta_target;
      dynamodb_target;
      hudi_target;
      iceberg_target;
      jdbc_target;
      lake_formation_configuration;
      lineage_configuration;
      mongodb_target;
      recrawl_policy;
      s3_target;
      schema_change_policy;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_glue_crawler __resource);
  ()
