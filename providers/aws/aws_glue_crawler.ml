(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_glue_crawler__catalog_target = {
  connection_name : string prop option; [@option]
      (** connection_name *)
  database_name : string prop;  (** database_name *)
  dlq_event_queue_arn : string prop option; [@option]
      (** dlq_event_queue_arn *)
  event_queue_arn : string prop option; [@option]
      (** event_queue_arn *)
  tables : string prop list;  (** tables *)
}
[@@deriving yojson_of]
(** aws_glue_crawler__catalog_target *)

type aws_glue_crawler__delta_target = {
  connection_name : string prop option; [@option]
      (** connection_name *)
  create_native_delta_table : bool prop option; [@option]
      (** create_native_delta_table *)
  delta_tables : string prop list;  (** delta_tables *)
  write_manifest : bool prop;  (** write_manifest *)
}
[@@deriving yojson_of]
(** aws_glue_crawler__delta_target *)

type aws_glue_crawler__dynamodb_target = {
  path : string prop;  (** path *)
  scan_all : bool prop option; [@option]  (** scan_all *)
  scan_rate : float prop option; [@option]  (** scan_rate *)
}
[@@deriving yojson_of]
(** aws_glue_crawler__dynamodb_target *)

type aws_glue_crawler__hudi_target = {
  connection_name : string prop option; [@option]
      (** connection_name *)
  exclusions : string prop list option; [@option]  (** exclusions *)
  maximum_traversal_depth : float prop;
      (** maximum_traversal_depth *)
  paths : string prop list;  (** paths *)
}
[@@deriving yojson_of]
(** aws_glue_crawler__hudi_target *)

type aws_glue_crawler__iceberg_target = {
  connection_name : string prop option; [@option]
      (** connection_name *)
  exclusions : string prop list option; [@option]  (** exclusions *)
  maximum_traversal_depth : float prop;
      (** maximum_traversal_depth *)
  paths : string prop list;  (** paths *)
}
[@@deriving yojson_of]
(** aws_glue_crawler__iceberg_target *)

type aws_glue_crawler__jdbc_target = {
  connection_name : string prop;  (** connection_name *)
  enable_additional_metadata : string prop list option; [@option]
      (** enable_additional_metadata *)
  exclusions : string prop list option; [@option]  (** exclusions *)
  path : string prop;  (** path *)
}
[@@deriving yojson_of]
(** aws_glue_crawler__jdbc_target *)

type aws_glue_crawler__lake_formation_configuration = {
  account_id : string prop option; [@option]  (** account_id *)
  use_lake_formation_credentials : bool prop option; [@option]
      (** use_lake_formation_credentials *)
}
[@@deriving yojson_of]
(** aws_glue_crawler__lake_formation_configuration *)

type aws_glue_crawler__lineage_configuration = {
  crawler_lineage_settings : string prop option; [@option]
      (** crawler_lineage_settings *)
}
[@@deriving yojson_of]
(** aws_glue_crawler__lineage_configuration *)

type aws_glue_crawler__mongodb_target = {
  connection_name : string prop;  (** connection_name *)
  path : string prop;  (** path *)
  scan_all : bool prop option; [@option]  (** scan_all *)
}
[@@deriving yojson_of]
(** aws_glue_crawler__mongodb_target *)

type aws_glue_crawler__recrawl_policy = {
  recrawl_behavior : string prop option; [@option]
      (** recrawl_behavior *)
}
[@@deriving yojson_of]
(** aws_glue_crawler__recrawl_policy *)

type aws_glue_crawler__s3_target = {
  connection_name : string prop option; [@option]
      (** connection_name *)
  dlq_event_queue_arn : string prop option; [@option]
      (** dlq_event_queue_arn *)
  event_queue_arn : string prop option; [@option]
      (** event_queue_arn *)
  exclusions : string prop list option; [@option]  (** exclusions *)
  path : string prop;  (** path *)
  sample_size : float prop option; [@option]  (** sample_size *)
}
[@@deriving yojson_of]
(** aws_glue_crawler__s3_target *)

type aws_glue_crawler__schema_change_policy = {
  delete_behavior : string prop option; [@option]
      (** delete_behavior *)
  update_behavior : string prop option; [@option]
      (** update_behavior *)
}
[@@deriving yojson_of]
(** aws_glue_crawler__schema_change_policy *)

type aws_glue_crawler = {
  classifiers : string prop list option; [@option]
      (** classifiers *)
  configuration : string prop option; [@option]  (** configuration *)
  database_name : string prop;  (** database_name *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  role : string prop;  (** role *)
  schedule : string prop option; [@option]  (** schedule *)
  security_configuration : string prop option; [@option]
      (** security_configuration *)
  table_prefix : string prop option; [@option]  (** table_prefix *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
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

type t = {
  arn : string prop;
  classifiers : string list prop;
  configuration : string prop;
  database_name : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  role : string prop;
  schedule : string prop;
  security_configuration : string prop;
  table_prefix : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_glue_crawler ?classifiers ?configuration ?description ?id
    ?schedule ?security_configuration ?table_prefix ?tags ?tags_all
    ~database_name ~name ~role ~catalog_target ~delta_target
    ~dynamodb_target ~hudi_target ~iceberg_target ~jdbc_target
    ~lake_formation_configuration ~lineage_configuration
    ~mongodb_target ~recrawl_policy ~s3_target ~schema_change_policy
    __resource_id =
  let __resource_type = "aws_glue_crawler" in
  let __resource =
    ({
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
      : aws_glue_crawler)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_glue_crawler __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       classifiers =
         Prop.computed __resource_type __resource_id "classifiers";
       configuration =
         Prop.computed __resource_type __resource_id "configuration";
       database_name =
         Prop.computed __resource_type __resource_id "database_name";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       role = Prop.computed __resource_type __resource_id "role";
       schedule =
         Prop.computed __resource_type __resource_id "schedule";
       security_configuration =
         Prop.computed __resource_type __resource_id
           "security_configuration";
       table_prefix =
         Prop.computed __resource_type __resource_id "table_prefix";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
