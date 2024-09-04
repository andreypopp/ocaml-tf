(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type catalog_target = {
  connection_name : string prop option; [@option]
  database_name : string prop;
  dlq_event_queue_arn : string prop option; [@option]
  event_queue_arn : string prop option; [@option]
  tables : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : catalog_target) -> ()

let yojson_of_catalog_target =
  (function
   | {
       connection_name = v_connection_name;
       database_name = v_database_name;
       dlq_event_queue_arn = v_dlq_event_queue_arn;
       event_queue_arn = v_event_queue_arn;
       tables = v_tables;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tables then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_tables
           in
           let bnd = "tables", arg in
           bnd :: bnds
       in
       let bnds =
         match v_event_queue_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "event_queue_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dlq_event_queue_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dlq_event_queue_arn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_database_name in
         ("database_name", arg) :: bnds
       in
       let bnds =
         match v_connection_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "connection_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : catalog_target -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_catalog_target

[@@@deriving.end]

type delta_target = {
  connection_name : string prop option; [@option]
  create_native_delta_table : bool prop option; [@option]
  delta_tables : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  write_manifest : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : delta_target) -> ()

let yojson_of_delta_target =
  (function
   | {
       connection_name = v_connection_name;
       create_native_delta_table = v_create_native_delta_table;
       delta_tables = v_delta_tables;
       write_manifest = v_write_manifest;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_write_manifest in
         ("write_manifest", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_delta_tables then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_delta_tables
           in
           let bnd = "delta_tables", arg in
           bnd :: bnds
       in
       let bnds =
         match v_create_native_delta_table with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "create_native_delta_table", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connection_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "connection_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : delta_target -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_delta_target

[@@@deriving.end]

type dynamodb_target = {
  path : string prop;
  scan_all : bool prop option; [@option]
  scan_rate : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dynamodb_target) -> ()

let yojson_of_dynamodb_target =
  (function
   | {
       path = v_path;
       scan_all = v_scan_all;
       scan_rate = v_scan_rate;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_scan_rate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "scan_rate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scan_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "scan_all", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       `Assoc bnds
    : dynamodb_target -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dynamodb_target

[@@@deriving.end]

type hudi_target = {
  connection_name : string prop option; [@option]
  exclusions : string prop list option; [@option]
  maximum_traversal_depth : float prop;
  paths : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hudi_target) -> ()

let yojson_of_hudi_target =
  (function
   | {
       connection_name = v_connection_name;
       exclusions = v_exclusions;
       maximum_traversal_depth = v_maximum_traversal_depth;
       paths = v_paths;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_paths then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_paths
           in
           let bnd = "paths", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_maximum_traversal_depth
         in
         ("maximum_traversal_depth", arg) :: bnds
       in
       let bnds =
         match v_exclusions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "exclusions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connection_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "connection_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : hudi_target -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hudi_target

[@@@deriving.end]

type iceberg_target = {
  connection_name : string prop option; [@option]
  exclusions : string prop list option; [@option]
  maximum_traversal_depth : float prop;
  paths : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : iceberg_target) -> ()

let yojson_of_iceberg_target =
  (function
   | {
       connection_name = v_connection_name;
       exclusions = v_exclusions;
       maximum_traversal_depth = v_maximum_traversal_depth;
       paths = v_paths;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_paths then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_paths
           in
           let bnd = "paths", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_maximum_traversal_depth
         in
         ("maximum_traversal_depth", arg) :: bnds
       in
       let bnds =
         match v_exclusions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "exclusions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connection_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "connection_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : iceberg_target -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_iceberg_target

[@@@deriving.end]

type jdbc_target = {
  connection_name : string prop;
  enable_additional_metadata : string prop list option; [@option]
  exclusions : string prop list option; [@option]
  path : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : jdbc_target) -> ()

let yojson_of_jdbc_target =
  (function
   | {
       connection_name = v_connection_name;
       enable_additional_metadata = v_enable_additional_metadata;
       exclusions = v_exclusions;
       path = v_path;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         match v_exclusions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "exclusions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_additional_metadata with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "enable_additional_metadata", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_connection_name
         in
         ("connection_name", arg) :: bnds
       in
       `Assoc bnds
    : jdbc_target -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_jdbc_target

[@@@deriving.end]

type lake_formation_configuration = {
  account_id : string prop option; [@option]
  use_lake_formation_credentials : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : lake_formation_configuration) -> ()

let yojson_of_lake_formation_configuration =
  (function
   | {
       account_id = v_account_id;
       use_lake_formation_credentials =
         v_use_lake_formation_credentials;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_use_lake_formation_credentials with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_lake_formation_credentials", arg in
             bnd :: bnds
       in
       let bnds =
         match v_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : lake_formation_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_lake_formation_configuration

[@@@deriving.end]

type lineage_configuration = {
  crawler_lineage_settings : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : lineage_configuration) -> ()

let yojson_of_lineage_configuration =
  (function
   | { crawler_lineage_settings = v_crawler_lineage_settings } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_crawler_lineage_settings with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "crawler_lineage_settings", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : lineage_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_lineage_configuration

[@@@deriving.end]

type mongodb_target = {
  connection_name : string prop;
  path : string prop;
  scan_all : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : mongodb_target) -> ()

let yojson_of_mongodb_target =
  (function
   | {
       connection_name = v_connection_name;
       path = v_path;
       scan_all = v_scan_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_scan_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "scan_all", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_connection_name
         in
         ("connection_name", arg) :: bnds
       in
       `Assoc bnds
    : mongodb_target -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mongodb_target

[@@@deriving.end]

type recrawl_policy = {
  recrawl_behavior : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : recrawl_policy) -> ()

let yojson_of_recrawl_policy =
  (function
   | { recrawl_behavior = v_recrawl_behavior } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_recrawl_behavior with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "recrawl_behavior", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : recrawl_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_recrawl_policy

[@@@deriving.end]

type s3_target = {
  connection_name : string prop option; [@option]
  dlq_event_queue_arn : string prop option; [@option]
  event_queue_arn : string prop option; [@option]
  exclusions : string prop list option; [@option]
  path : string prop;
  sample_size : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : s3_target) -> ()

let yojson_of_s3_target =
  (function
   | {
       connection_name = v_connection_name;
       dlq_event_queue_arn = v_dlq_event_queue_arn;
       event_queue_arn = v_event_queue_arn;
       exclusions = v_exclusions;
       path = v_path;
       sample_size = v_sample_size;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_sample_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "sample_size", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         match v_exclusions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "exclusions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_event_queue_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "event_queue_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dlq_event_queue_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dlq_event_queue_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connection_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "connection_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : s3_target -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_s3_target

[@@@deriving.end]

type schema_change_policy = {
  delete_behavior : string prop option; [@option]
  update_behavior : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : schema_change_policy) -> ()

let yojson_of_schema_change_policy =
  (function
   | {
       delete_behavior = v_delete_behavior;
       update_behavior = v_update_behavior;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update_behavior with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update_behavior", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete_behavior with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete_behavior", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : schema_change_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schema_change_policy

[@@@deriving.end]

type aws_glue_crawler = {
  classifiers : string prop list option; [@option]
  configuration : string prop option; [@option]
  database_name : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  role : string prop;
  schedule : string prop option; [@option]
  security_configuration : string prop option; [@option]
  table_prefix : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  catalog_target : catalog_target list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  delta_target : delta_target list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dynamodb_target : dynamodb_target list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  hudi_target : hudi_target list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  iceberg_target : iceberg_target list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  jdbc_target : jdbc_target list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  lake_formation_configuration : lake_formation_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  lineage_configuration : lineage_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  mongodb_target : mongodb_target list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  recrawl_policy : recrawl_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  s3_target : s3_target list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  schema_change_policy : schema_change_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_glue_crawler) -> ()

let yojson_of_aws_glue_crawler =
  (function
   | {
       classifiers = v_classifiers;
       configuration = v_configuration;
       database_name = v_database_name;
       description = v_description;
       id = v_id;
       name = v_name;
       role = v_role;
       schedule = v_schedule;
       security_configuration = v_security_configuration;
       table_prefix = v_table_prefix;
       tags = v_tags;
       tags_all = v_tags_all;
       catalog_target = v_catalog_target;
       delta_target = v_delta_target;
       dynamodb_target = v_dynamodb_target;
       hudi_target = v_hudi_target;
       iceberg_target = v_iceberg_target;
       jdbc_target = v_jdbc_target;
       lake_formation_configuration = v_lake_formation_configuration;
       lineage_configuration = v_lineage_configuration;
       mongodb_target = v_mongodb_target;
       recrawl_policy = v_recrawl_policy;
       s3_target = v_s3_target;
       schema_change_policy = v_schema_change_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_schema_change_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_schema_change_policy)
               v_schema_change_policy
           in
           let bnd = "schema_change_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_s3_target then bnds
         else
           let arg =
             (yojson_of_list yojson_of_s3_target) v_s3_target
           in
           let bnd = "s3_target", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_recrawl_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_recrawl_policy)
               v_recrawl_policy
           in
           let bnd = "recrawl_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_mongodb_target then bnds
         else
           let arg =
             (yojson_of_list yojson_of_mongodb_target)
               v_mongodb_target
           in
           let bnd = "mongodb_target", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_lineage_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_lineage_configuration)
               v_lineage_configuration
           in
           let bnd = "lineage_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_lake_formation_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_lake_formation_configuration)
               v_lake_formation_configuration
           in
           let bnd = "lake_formation_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_jdbc_target then bnds
         else
           let arg =
             (yojson_of_list yojson_of_jdbc_target) v_jdbc_target
           in
           let bnd = "jdbc_target", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_iceberg_target then bnds
         else
           let arg =
             (yojson_of_list yojson_of_iceberg_target)
               v_iceberg_target
           in
           let bnd = "iceberg_target", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_hudi_target then bnds
         else
           let arg =
             (yojson_of_list yojson_of_hudi_target) v_hudi_target
           in
           let bnd = "hudi_target", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dynamodb_target then bnds
         else
           let arg =
             (yojson_of_list yojson_of_dynamodb_target)
               v_dynamodb_target
           in
           let bnd = "dynamodb_target", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_delta_target then bnds
         else
           let arg =
             (yojson_of_list yojson_of_delta_target) v_delta_target
           in
           let bnd = "delta_target", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_catalog_target then bnds
         else
           let arg =
             (yojson_of_list yojson_of_catalog_target)
               v_catalog_target
           in
           let bnd = "catalog_target", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_table_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "table_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_security_configuration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "security_configuration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_schedule with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "schedule", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role in
         ("role", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_database_name in
         ("database_name", arg) :: bnds
       in
       let bnds =
         match v_configuration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "configuration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_classifiers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "classifiers", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_glue_crawler -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_glue_crawler

[@@@deriving.end]

let catalog_target ?connection_name ?dlq_event_queue_arn
    ?event_queue_arn ~database_name ~tables () : catalog_target =
  {
    connection_name;
    database_name;
    dlq_event_queue_arn;
    event_queue_arn;
    tables;
  }

let delta_target ?connection_name ?create_native_delta_table
    ~delta_tables ~write_manifest () : delta_target =
  {
    connection_name;
    create_native_delta_table;
    delta_tables;
    write_manifest;
  }

let dynamodb_target ?scan_all ?scan_rate ~path () : dynamodb_target =
  { path; scan_all; scan_rate }

let hudi_target ?connection_name ?exclusions ~maximum_traversal_depth
    ~paths () : hudi_target =
  { connection_name; exclusions; maximum_traversal_depth; paths }

let iceberg_target ?connection_name ?exclusions
    ~maximum_traversal_depth ~paths () : iceberg_target =
  { connection_name; exclusions; maximum_traversal_depth; paths }

let jdbc_target ?enable_additional_metadata ?exclusions
    ~connection_name ~path () : jdbc_target =
  { connection_name; enable_additional_metadata; exclusions; path }

let lake_formation_configuration ?account_id
    ?use_lake_formation_credentials () : lake_formation_configuration
    =
  { account_id; use_lake_formation_credentials }

let lineage_configuration ?crawler_lineage_settings () :
    lineage_configuration =
  { crawler_lineage_settings }

let mongodb_target ?scan_all ~connection_name ~path () :
    mongodb_target =
  { connection_name; path; scan_all }

let recrawl_policy ?recrawl_behavior () : recrawl_policy =
  { recrawl_behavior }

let s3_target ?connection_name ?dlq_event_queue_arn ?event_queue_arn
    ?exclusions ?sample_size ~path () : s3_target =
  {
    connection_name;
    dlq_event_queue_arn;
    event_queue_arn;
    exclusions;
    path;
    sample_size;
  }

let schema_change_policy ?delete_behavior ?update_behavior () :
    schema_change_policy =
  { delete_behavior; update_behavior }

let aws_glue_crawler ?classifiers ?configuration ?description ?id
    ?schedule ?security_configuration ?table_prefix ?tags ?tags_all
    ?(catalog_target = []) ?(delta_target = [])
    ?(dynamodb_target = []) ?(hudi_target = [])
    ?(iceberg_target = []) ?(jdbc_target = [])
    ?(lake_formation_configuration = [])
    ?(lineage_configuration = []) ?(mongodb_target = [])
    ?(recrawl_policy = []) ?(s3_target = [])
    ?(schema_change_policy = []) ~database_name ~name ~role () :
    aws_glue_crawler =
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

type t = {
  tf_name : string;
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
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?classifiers ?configuration ?description ?id ?schedule
    ?security_configuration ?table_prefix ?tags ?tags_all
    ?(catalog_target = []) ?(delta_target = [])
    ?(dynamodb_target = []) ?(hudi_target = [])
    ?(iceberg_target = []) ?(jdbc_target = [])
    ?(lake_formation_configuration = [])
    ?(lineage_configuration = []) ?(mongodb_target = [])
    ?(recrawl_policy = []) ?(s3_target = [])
    ?(schema_change_policy = []) ~database_name ~name ~role __id =
  let __type = "aws_glue_crawler" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       classifiers = Prop.computed __type __id "classifiers";
       configuration = Prop.computed __type __id "configuration";
       database_name = Prop.computed __type __id "database_name";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       role = Prop.computed __type __id "role";
       schedule = Prop.computed __type __id "schedule";
       security_configuration =
         Prop.computed __type __id "security_configuration";
       table_prefix = Prop.computed __type __id "table_prefix";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_glue_crawler
        (aws_glue_crawler ?classifiers ?configuration ?description
           ?id ?schedule ?security_configuration ?table_prefix ?tags
           ?tags_all ~catalog_target ~delta_target ~dynamodb_target
           ~hudi_target ~iceberg_target ~jdbc_target
           ~lake_formation_configuration ~lineage_configuration
           ~mongodb_target ~recrawl_policy ~s3_target
           ~schema_change_policy ~database_name ~name ~role ());
    attrs = __attrs;
  }

let register ?tf_module ?classifiers ?configuration ?description ?id
    ?schedule ?security_configuration ?table_prefix ?tags ?tags_all
    ?(catalog_target = []) ?(delta_target = [])
    ?(dynamodb_target = []) ?(hudi_target = [])
    ?(iceberg_target = []) ?(jdbc_target = [])
    ?(lake_formation_configuration = [])
    ?(lineage_configuration = []) ?(mongodb_target = [])
    ?(recrawl_policy = []) ?(s3_target = [])
    ?(schema_change_policy = []) ~database_name ~name ~role __id =
  let (r : _ Tf_core.resource) =
    make ?classifiers ?configuration ?description ?id ?schedule
      ?security_configuration ?table_prefix ?tags ?tags_all
      ~catalog_target ~delta_target ~dynamodb_target ~hudi_target
      ~iceberg_target ~jdbc_target ~lake_formation_configuration
      ~lineage_configuration ~mongodb_target ~recrawl_policy
      ~s3_target ~schema_change_policy ~database_name ~name ~role
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
