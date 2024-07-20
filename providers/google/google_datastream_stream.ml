(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type backfill_all__mysql_excluded_objects__mysql_databases__mysql_tables__mysql_columns = {
  collation : string prop option; [@option]
  column : string prop option; [@option]
  data_type : string prop option; [@option]
  nullable : bool prop option; [@option]
  ordinal_position : float prop option; [@option]
  primary_key : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       backfill_all__mysql_excluded_objects__mysql_databases__mysql_tables__mysql_columns) ->
  ()

let yojson_of_backfill_all__mysql_excluded_objects__mysql_databases__mysql_tables__mysql_columns
    =
  (function
   | {
       collation = v_collation;
       column = v_column;
       data_type = v_data_type;
       nullable = v_nullable;
       ordinal_position = v_ordinal_position;
       primary_key = v_primary_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_primary_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "primary_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ordinal_position with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "ordinal_position", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nullable with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "nullable", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_column with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "column", arg in
             bnd :: bnds
       in
       let bnds =
         match v_collation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "collation", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : backfill_all__mysql_excluded_objects__mysql_databases__mysql_tables__mysql_columns ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_backfill_all__mysql_excluded_objects__mysql_databases__mysql_tables__mysql_columns

[@@@deriving.end]

type backfill_all__mysql_excluded_objects__mysql_databases__mysql_tables = {
  table : string prop;
  mysql_columns :
    backfill_all__mysql_excluded_objects__mysql_databases__mysql_tables__mysql_columns
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       backfill_all__mysql_excluded_objects__mysql_databases__mysql_tables) ->
  ()

let yojson_of_backfill_all__mysql_excluded_objects__mysql_databases__mysql_tables
    =
  (function
   | { table = v_table; mysql_columns = v_mysql_columns } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_mysql_columns then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_backfill_all__mysql_excluded_objects__mysql_databases__mysql_tables__mysql_columns)
               v_mysql_columns
           in
           let bnd = "mysql_columns", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_table in
         ("table", arg) :: bnds
       in
       `Assoc bnds
    : backfill_all__mysql_excluded_objects__mysql_databases__mysql_tables ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_backfill_all__mysql_excluded_objects__mysql_databases__mysql_tables

[@@@deriving.end]

type backfill_all__mysql_excluded_objects__mysql_databases = {
  database : string prop;
  mysql_tables :
    backfill_all__mysql_excluded_objects__mysql_databases__mysql_tables
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : backfill_all__mysql_excluded_objects__mysql_databases) ->
  ()

let yojson_of_backfill_all__mysql_excluded_objects__mysql_databases =
  (function
   | { database = v_database; mysql_tables = v_mysql_tables } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_mysql_tables then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_backfill_all__mysql_excluded_objects__mysql_databases__mysql_tables)
               v_mysql_tables
           in
           let bnd = "mysql_tables", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_database in
         ("database", arg) :: bnds
       in
       `Assoc bnds
    : backfill_all__mysql_excluded_objects__mysql_databases ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_backfill_all__mysql_excluded_objects__mysql_databases

[@@@deriving.end]

type backfill_all__mysql_excluded_objects = {
  mysql_databases :
    backfill_all__mysql_excluded_objects__mysql_databases list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backfill_all__mysql_excluded_objects) -> ()

let yojson_of_backfill_all__mysql_excluded_objects =
  (function
   | { mysql_databases = v_mysql_databases } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_mysql_databases then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_backfill_all__mysql_excluded_objects__mysql_databases)
               v_mysql_databases
           in
           let bnd = "mysql_databases", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : backfill_all__mysql_excluded_objects ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backfill_all__mysql_excluded_objects

[@@@deriving.end]

type backfill_all__oracle_excluded_objects__oracle_schemas__oracle_tables__oracle_columns = {
  column : string prop option; [@option]
  data_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       backfill_all__oracle_excluded_objects__oracle_schemas__oracle_tables__oracle_columns) ->
  ()

let yojson_of_backfill_all__oracle_excluded_objects__oracle_schemas__oracle_tables__oracle_columns
    =
  (function
   | { column = v_column; data_type = v_data_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_data_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_column with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "column", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : backfill_all__oracle_excluded_objects__oracle_schemas__oracle_tables__oracle_columns ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_backfill_all__oracle_excluded_objects__oracle_schemas__oracle_tables__oracle_columns

[@@@deriving.end]

type backfill_all__oracle_excluded_objects__oracle_schemas__oracle_tables = {
  table : string prop;
  oracle_columns :
    backfill_all__oracle_excluded_objects__oracle_schemas__oracle_tables__oracle_columns
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       backfill_all__oracle_excluded_objects__oracle_schemas__oracle_tables) ->
  ()

let yojson_of_backfill_all__oracle_excluded_objects__oracle_schemas__oracle_tables
    =
  (function
   | { table = v_table; oracle_columns = v_oracle_columns } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_oracle_columns then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_backfill_all__oracle_excluded_objects__oracle_schemas__oracle_tables__oracle_columns)
               v_oracle_columns
           in
           let bnd = "oracle_columns", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_table in
         ("table", arg) :: bnds
       in
       `Assoc bnds
    : backfill_all__oracle_excluded_objects__oracle_schemas__oracle_tables ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_backfill_all__oracle_excluded_objects__oracle_schemas__oracle_tables

[@@@deriving.end]

type backfill_all__oracle_excluded_objects__oracle_schemas = {
  schema : string prop;
  oracle_tables :
    backfill_all__oracle_excluded_objects__oracle_schemas__oracle_tables
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : backfill_all__oracle_excluded_objects__oracle_schemas) ->
  ()

let yojson_of_backfill_all__oracle_excluded_objects__oracle_schemas =
  (function
   | { schema = v_schema; oracle_tables = v_oracle_tables } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_oracle_tables then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_backfill_all__oracle_excluded_objects__oracle_schemas__oracle_tables)
               v_oracle_tables
           in
           let bnd = "oracle_tables", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_schema in
         ("schema", arg) :: bnds
       in
       `Assoc bnds
    : backfill_all__oracle_excluded_objects__oracle_schemas ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_backfill_all__oracle_excluded_objects__oracle_schemas

[@@@deriving.end]

type backfill_all__oracle_excluded_objects = {
  oracle_schemas :
    backfill_all__oracle_excluded_objects__oracle_schemas list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backfill_all__oracle_excluded_objects) -> ()

let yojson_of_backfill_all__oracle_excluded_objects =
  (function
   | { oracle_schemas = v_oracle_schemas } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_oracle_schemas then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_backfill_all__oracle_excluded_objects__oracle_schemas)
               v_oracle_schemas
           in
           let bnd = "oracle_schemas", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : backfill_all__oracle_excluded_objects ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backfill_all__oracle_excluded_objects

[@@@deriving.end]

type backfill_all__postgresql_excluded_objects__postgresql_schemas__postgresql_tables__postgresql_columns = {
  column : string prop option; [@option]
  data_type : string prop option; [@option]
  nullable : bool prop option; [@option]
  ordinal_position : float prop option; [@option]
  primary_key : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       backfill_all__postgresql_excluded_objects__postgresql_schemas__postgresql_tables__postgresql_columns) ->
  ()

let yojson_of_backfill_all__postgresql_excluded_objects__postgresql_schemas__postgresql_tables__postgresql_columns
    =
  (function
   | {
       column = v_column;
       data_type = v_data_type;
       nullable = v_nullable;
       ordinal_position = v_ordinal_position;
       primary_key = v_primary_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_primary_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "primary_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ordinal_position with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "ordinal_position", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nullable with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "nullable", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_column with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "column", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : backfill_all__postgresql_excluded_objects__postgresql_schemas__postgresql_tables__postgresql_columns ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_backfill_all__postgresql_excluded_objects__postgresql_schemas__postgresql_tables__postgresql_columns

[@@@deriving.end]

type backfill_all__postgresql_excluded_objects__postgresql_schemas__postgresql_tables = {
  table : string prop;
  postgresql_columns :
    backfill_all__postgresql_excluded_objects__postgresql_schemas__postgresql_tables__postgresql_columns
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       backfill_all__postgresql_excluded_objects__postgresql_schemas__postgresql_tables) ->
  ()

let yojson_of_backfill_all__postgresql_excluded_objects__postgresql_schemas__postgresql_tables
    =
  (function
   | { table = v_table; postgresql_columns = v_postgresql_columns }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_postgresql_columns then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_backfill_all__postgresql_excluded_objects__postgresql_schemas__postgresql_tables__postgresql_columns)
               v_postgresql_columns
           in
           let bnd = "postgresql_columns", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_table in
         ("table", arg) :: bnds
       in
       `Assoc bnds
    : backfill_all__postgresql_excluded_objects__postgresql_schemas__postgresql_tables ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_backfill_all__postgresql_excluded_objects__postgresql_schemas__postgresql_tables

[@@@deriving.end]

type backfill_all__postgresql_excluded_objects__postgresql_schemas = {
  schema : string prop;
  postgresql_tables :
    backfill_all__postgresql_excluded_objects__postgresql_schemas__postgresql_tables
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       backfill_all__postgresql_excluded_objects__postgresql_schemas) ->
  ()

let yojson_of_backfill_all__postgresql_excluded_objects__postgresql_schemas
    =
  (function
   | { schema = v_schema; postgresql_tables = v_postgresql_tables }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_postgresql_tables then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_backfill_all__postgresql_excluded_objects__postgresql_schemas__postgresql_tables)
               v_postgresql_tables
           in
           let bnd = "postgresql_tables", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_schema in
         ("schema", arg) :: bnds
       in
       `Assoc bnds
    : backfill_all__postgresql_excluded_objects__postgresql_schemas ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_backfill_all__postgresql_excluded_objects__postgresql_schemas

[@@@deriving.end]

type backfill_all__postgresql_excluded_objects = {
  postgresql_schemas :
    backfill_all__postgresql_excluded_objects__postgresql_schemas
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backfill_all__postgresql_excluded_objects) -> ()

let yojson_of_backfill_all__postgresql_excluded_objects =
  (function
   | { postgresql_schemas = v_postgresql_schemas } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_postgresql_schemas then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_backfill_all__postgresql_excluded_objects__postgresql_schemas)
               v_postgresql_schemas
           in
           let bnd = "postgresql_schemas", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : backfill_all__postgresql_excluded_objects ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backfill_all__postgresql_excluded_objects

[@@@deriving.end]

type backfill_all = {
  mysql_excluded_objects : backfill_all__mysql_excluded_objects list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  oracle_excluded_objects :
    backfill_all__oracle_excluded_objects list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  postgresql_excluded_objects :
    backfill_all__postgresql_excluded_objects list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backfill_all) -> ()

let yojson_of_backfill_all =
  (function
   | {
       mysql_excluded_objects = v_mysql_excluded_objects;
       oracle_excluded_objects = v_oracle_excluded_objects;
       postgresql_excluded_objects = v_postgresql_excluded_objects;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_postgresql_excluded_objects then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_backfill_all__postgresql_excluded_objects)
               v_postgresql_excluded_objects
           in
           let bnd = "postgresql_excluded_objects", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_oracle_excluded_objects then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_backfill_all__oracle_excluded_objects)
               v_oracle_excluded_objects
           in
           let bnd = "oracle_excluded_objects", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_mysql_excluded_objects then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_backfill_all__mysql_excluded_objects)
               v_mysql_excluded_objects
           in
           let bnd = "mysql_excluded_objects", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : backfill_all -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backfill_all

[@@@deriving.end]

type backfill_none = unit [@@deriving_inline yojson_of]

let _ = fun (_ : backfill_none) -> ()

let yojson_of_backfill_none =
  (yojson_of_unit
    : backfill_none -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backfill_none

[@@@deriving.end]

type destination_config__bigquery_destination_config__single_target_dataset = {
  dataset_id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       destination_config__bigquery_destination_config__single_target_dataset) ->
  ()

let yojson_of_destination_config__bigquery_destination_config__single_target_dataset
    =
  (function
   | { dataset_id = v_dataset_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dataset_id in
         ("dataset_id", arg) :: bnds
       in
       `Assoc bnds
    : destination_config__bigquery_destination_config__single_target_dataset ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_destination_config__bigquery_destination_config__single_target_dataset

[@@@deriving.end]

type destination_config__bigquery_destination_config__source_hierarchy_datasets__dataset_template = {
  dataset_id_prefix : string prop option; [@option]
  kms_key_name : string prop option; [@option]
  location : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       destination_config__bigquery_destination_config__source_hierarchy_datasets__dataset_template) ->
  ()

let yojson_of_destination_config__bigquery_destination_config__source_hierarchy_datasets__dataset_template
    =
  (function
   | {
       dataset_id_prefix = v_dataset_id_prefix;
       kms_key_name = v_kms_key_name;
       location = v_location;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_kms_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dataset_id_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dataset_id_prefix", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : destination_config__bigquery_destination_config__source_hierarchy_datasets__dataset_template ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_destination_config__bigquery_destination_config__source_hierarchy_datasets__dataset_template

[@@@deriving.end]

type destination_config__bigquery_destination_config__source_hierarchy_datasets = {
  dataset_template :
    destination_config__bigquery_destination_config__source_hierarchy_datasets__dataset_template
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       destination_config__bigquery_destination_config__source_hierarchy_datasets) ->
  ()

let yojson_of_destination_config__bigquery_destination_config__source_hierarchy_datasets
    =
  (function
   | { dataset_template = v_dataset_template } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_dataset_template then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_destination_config__bigquery_destination_config__source_hierarchy_datasets__dataset_template)
               v_dataset_template
           in
           let bnd = "dataset_template", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : destination_config__bigquery_destination_config__source_hierarchy_datasets ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_destination_config__bigquery_destination_config__source_hierarchy_datasets

[@@@deriving.end]

type destination_config__bigquery_destination_config = {
  data_freshness : string prop option; [@option]
  single_target_dataset :
    destination_config__bigquery_destination_config__single_target_dataset
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  source_hierarchy_datasets :
    destination_config__bigquery_destination_config__source_hierarchy_datasets
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : destination_config__bigquery_destination_config) -> ()

let yojson_of_destination_config__bigquery_destination_config =
  (function
   | {
       data_freshness = v_data_freshness;
       single_target_dataset = v_single_target_dataset;
       source_hierarchy_datasets = v_source_hierarchy_datasets;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_source_hierarchy_datasets then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_destination_config__bigquery_destination_config__source_hierarchy_datasets)
               v_source_hierarchy_datasets
           in
           let bnd = "source_hierarchy_datasets", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_single_target_dataset then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_destination_config__bigquery_destination_config__single_target_dataset)
               v_single_target_dataset
           in
           let bnd = "single_target_dataset", arg in
           bnd :: bnds
       in
       let bnds =
         match v_data_freshness with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data_freshness", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : destination_config__bigquery_destination_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destination_config__bigquery_destination_config

[@@@deriving.end]

type destination_config__gcs_destination_config__avro_file_format =
  unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       destination_config__gcs_destination_config__avro_file_format) ->
  ()

let yojson_of_destination_config__gcs_destination_config__avro_file_format
    =
  (yojson_of_unit
    : destination_config__gcs_destination_config__avro_file_format ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_destination_config__gcs_destination_config__avro_file_format

[@@@deriving.end]

type destination_config__gcs_destination_config__json_file_format = {
  compression : string prop option; [@option]
  schema_file_format : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       destination_config__gcs_destination_config__json_file_format) ->
  ()

let yojson_of_destination_config__gcs_destination_config__json_file_format
    =
  (function
   | {
       compression = v_compression;
       schema_file_format = v_schema_file_format;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_schema_file_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "schema_file_format", arg in
             bnd :: bnds
       in
       let bnds =
         match v_compression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "compression", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : destination_config__gcs_destination_config__json_file_format ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_destination_config__gcs_destination_config__json_file_format

[@@@deriving.end]

type destination_config__gcs_destination_config = {
  file_rotation_interval : string prop option; [@option]
  file_rotation_mb : float prop option; [@option]
  path : string prop option; [@option]
  avro_file_format :
    destination_config__gcs_destination_config__avro_file_format list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  json_file_format :
    destination_config__gcs_destination_config__json_file_format list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destination_config__gcs_destination_config) -> ()

let yojson_of_destination_config__gcs_destination_config =
  (function
   | {
       file_rotation_interval = v_file_rotation_interval;
       file_rotation_mb = v_file_rotation_mb;
       path = v_path;
       avro_file_format = v_avro_file_format;
       json_file_format = v_json_file_format;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_json_file_format then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_destination_config__gcs_destination_config__json_file_format)
               v_json_file_format
           in
           let bnd = "json_file_format", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_avro_file_format then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_destination_config__gcs_destination_config__avro_file_format)
               v_avro_file_format
           in
           let bnd = "avro_file_format", arg in
           bnd :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_file_rotation_mb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "file_rotation_mb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_file_rotation_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "file_rotation_interval", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : destination_config__gcs_destination_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destination_config__gcs_destination_config

[@@@deriving.end]

type destination_config = {
  destination_connection_profile : string prop;
  bigquery_destination_config :
    destination_config__bigquery_destination_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  gcs_destination_config :
    destination_config__gcs_destination_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destination_config) -> ()

let yojson_of_destination_config =
  (function
   | {
       destination_connection_profile =
         v_destination_connection_profile;
       bigquery_destination_config = v_bigquery_destination_config;
       gcs_destination_config = v_gcs_destination_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_gcs_destination_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_destination_config__gcs_destination_config)
               v_gcs_destination_config
           in
           let bnd = "gcs_destination_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_bigquery_destination_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_destination_config__bigquery_destination_config)
               v_bigquery_destination_config
           in
           let bnd = "bigquery_destination_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_destination_connection_profile
         in
         ("destination_connection_profile", arg) :: bnds
       in
       `Assoc bnds
    : destination_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destination_config

[@@@deriving.end]

type source_config__mysql_source_config__exclude_objects__mysql_databases__mysql_tables__mysql_columns = {
  collation : string prop option; [@option]
  column : string prop option; [@option]
  data_type : string prop option; [@option]
  nullable : bool prop option; [@option]
  ordinal_position : float prop option; [@option]
  primary_key : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       source_config__mysql_source_config__exclude_objects__mysql_databases__mysql_tables__mysql_columns) ->
  ()

let yojson_of_source_config__mysql_source_config__exclude_objects__mysql_databases__mysql_tables__mysql_columns
    =
  (function
   | {
       collation = v_collation;
       column = v_column;
       data_type = v_data_type;
       nullable = v_nullable;
       ordinal_position = v_ordinal_position;
       primary_key = v_primary_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_primary_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "primary_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ordinal_position with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "ordinal_position", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nullable with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "nullable", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_column with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "column", arg in
             bnd :: bnds
       in
       let bnds =
         match v_collation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "collation", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source_config__mysql_source_config__exclude_objects__mysql_databases__mysql_tables__mysql_columns ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_config__mysql_source_config__exclude_objects__mysql_databases__mysql_tables__mysql_columns

[@@@deriving.end]

type source_config__mysql_source_config__exclude_objects__mysql_databases__mysql_tables = {
  table : string prop;
  mysql_columns :
    source_config__mysql_source_config__exclude_objects__mysql_databases__mysql_tables__mysql_columns
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       source_config__mysql_source_config__exclude_objects__mysql_databases__mysql_tables) ->
  ()

let yojson_of_source_config__mysql_source_config__exclude_objects__mysql_databases__mysql_tables
    =
  (function
   | { table = v_table; mysql_columns = v_mysql_columns } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_mysql_columns then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_source_config__mysql_source_config__exclude_objects__mysql_databases__mysql_tables__mysql_columns)
               v_mysql_columns
           in
           let bnd = "mysql_columns", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_table in
         ("table", arg) :: bnds
       in
       `Assoc bnds
    : source_config__mysql_source_config__exclude_objects__mysql_databases__mysql_tables ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_config__mysql_source_config__exclude_objects__mysql_databases__mysql_tables

[@@@deriving.end]

type source_config__mysql_source_config__exclude_objects__mysql_databases = {
  database : string prop;
  mysql_tables :
    source_config__mysql_source_config__exclude_objects__mysql_databases__mysql_tables
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       source_config__mysql_source_config__exclude_objects__mysql_databases) ->
  ()

let yojson_of_source_config__mysql_source_config__exclude_objects__mysql_databases
    =
  (function
   | { database = v_database; mysql_tables = v_mysql_tables } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_mysql_tables then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_source_config__mysql_source_config__exclude_objects__mysql_databases__mysql_tables)
               v_mysql_tables
           in
           let bnd = "mysql_tables", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_database in
         ("database", arg) :: bnds
       in
       `Assoc bnds
    : source_config__mysql_source_config__exclude_objects__mysql_databases ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_config__mysql_source_config__exclude_objects__mysql_databases

[@@@deriving.end]

type source_config__mysql_source_config__exclude_objects = {
  mysql_databases :
    source_config__mysql_source_config__exclude_objects__mysql_databases
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : source_config__mysql_source_config__exclude_objects) -> ()

let yojson_of_source_config__mysql_source_config__exclude_objects =
  (function
   | { mysql_databases = v_mysql_databases } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_mysql_databases then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_source_config__mysql_source_config__exclude_objects__mysql_databases)
               v_mysql_databases
           in
           let bnd = "mysql_databases", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : source_config__mysql_source_config__exclude_objects ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source_config__mysql_source_config__exclude_objects

[@@@deriving.end]

type source_config__mysql_source_config__include_objects__mysql_databases__mysql_tables__mysql_columns = {
  collation : string prop option; [@option]
  column : string prop option; [@option]
  data_type : string prop option; [@option]
  nullable : bool prop option; [@option]
  ordinal_position : float prop option; [@option]
  primary_key : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       source_config__mysql_source_config__include_objects__mysql_databases__mysql_tables__mysql_columns) ->
  ()

let yojson_of_source_config__mysql_source_config__include_objects__mysql_databases__mysql_tables__mysql_columns
    =
  (function
   | {
       collation = v_collation;
       column = v_column;
       data_type = v_data_type;
       nullable = v_nullable;
       ordinal_position = v_ordinal_position;
       primary_key = v_primary_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_primary_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "primary_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ordinal_position with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "ordinal_position", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nullable with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "nullable", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_column with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "column", arg in
             bnd :: bnds
       in
       let bnds =
         match v_collation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "collation", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source_config__mysql_source_config__include_objects__mysql_databases__mysql_tables__mysql_columns ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_config__mysql_source_config__include_objects__mysql_databases__mysql_tables__mysql_columns

[@@@deriving.end]

type source_config__mysql_source_config__include_objects__mysql_databases__mysql_tables = {
  table : string prop;
  mysql_columns :
    source_config__mysql_source_config__include_objects__mysql_databases__mysql_tables__mysql_columns
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       source_config__mysql_source_config__include_objects__mysql_databases__mysql_tables) ->
  ()

let yojson_of_source_config__mysql_source_config__include_objects__mysql_databases__mysql_tables
    =
  (function
   | { table = v_table; mysql_columns = v_mysql_columns } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_mysql_columns then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_source_config__mysql_source_config__include_objects__mysql_databases__mysql_tables__mysql_columns)
               v_mysql_columns
           in
           let bnd = "mysql_columns", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_table in
         ("table", arg) :: bnds
       in
       `Assoc bnds
    : source_config__mysql_source_config__include_objects__mysql_databases__mysql_tables ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_config__mysql_source_config__include_objects__mysql_databases__mysql_tables

[@@@deriving.end]

type source_config__mysql_source_config__include_objects__mysql_databases = {
  database : string prop;
  mysql_tables :
    source_config__mysql_source_config__include_objects__mysql_databases__mysql_tables
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       source_config__mysql_source_config__include_objects__mysql_databases) ->
  ()

let yojson_of_source_config__mysql_source_config__include_objects__mysql_databases
    =
  (function
   | { database = v_database; mysql_tables = v_mysql_tables } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_mysql_tables then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_source_config__mysql_source_config__include_objects__mysql_databases__mysql_tables)
               v_mysql_tables
           in
           let bnd = "mysql_tables", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_database in
         ("database", arg) :: bnds
       in
       `Assoc bnds
    : source_config__mysql_source_config__include_objects__mysql_databases ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_config__mysql_source_config__include_objects__mysql_databases

[@@@deriving.end]

type source_config__mysql_source_config__include_objects = {
  mysql_databases :
    source_config__mysql_source_config__include_objects__mysql_databases
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : source_config__mysql_source_config__include_objects) -> ()

let yojson_of_source_config__mysql_source_config__include_objects =
  (function
   | { mysql_databases = v_mysql_databases } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_mysql_databases then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_source_config__mysql_source_config__include_objects__mysql_databases)
               v_mysql_databases
           in
           let bnd = "mysql_databases", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : source_config__mysql_source_config__include_objects ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source_config__mysql_source_config__include_objects

[@@@deriving.end]

type source_config__mysql_source_config = {
  max_concurrent_backfill_tasks : float prop option; [@option]
  max_concurrent_cdc_tasks : float prop option; [@option]
  exclude_objects :
    source_config__mysql_source_config__exclude_objects list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  include_objects :
    source_config__mysql_source_config__include_objects list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source_config__mysql_source_config) -> ()

let yojson_of_source_config__mysql_source_config =
  (function
   | {
       max_concurrent_backfill_tasks =
         v_max_concurrent_backfill_tasks;
       max_concurrent_cdc_tasks = v_max_concurrent_cdc_tasks;
       exclude_objects = v_exclude_objects;
       include_objects = v_include_objects;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_include_objects then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_source_config__mysql_source_config__include_objects)
               v_include_objects
           in
           let bnd = "include_objects", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_exclude_objects then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_source_config__mysql_source_config__exclude_objects)
               v_exclude_objects
           in
           let bnd = "exclude_objects", arg in
           bnd :: bnds
       in
       let bnds =
         match v_max_concurrent_cdc_tasks with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_concurrent_cdc_tasks", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_concurrent_backfill_tasks with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_concurrent_backfill_tasks", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source_config__mysql_source_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source_config__mysql_source_config

[@@@deriving.end]

type source_config__oracle_source_config__drop_large_objects = unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ : source_config__oracle_source_config__drop_large_objects) ->
  ()

let yojson_of_source_config__oracle_source_config__drop_large_objects
    =
  (yojson_of_unit
    : source_config__oracle_source_config__drop_large_objects ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_config__oracle_source_config__drop_large_objects

[@@@deriving.end]

type source_config__oracle_source_config__exclude_objects__oracle_schemas__oracle_tables__oracle_columns = {
  column : string prop option; [@option]
  data_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       source_config__oracle_source_config__exclude_objects__oracle_schemas__oracle_tables__oracle_columns) ->
  ()

let yojson_of_source_config__oracle_source_config__exclude_objects__oracle_schemas__oracle_tables__oracle_columns
    =
  (function
   | { column = v_column; data_type = v_data_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_data_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_column with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "column", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source_config__oracle_source_config__exclude_objects__oracle_schemas__oracle_tables__oracle_columns ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_config__oracle_source_config__exclude_objects__oracle_schemas__oracle_tables__oracle_columns

[@@@deriving.end]

type source_config__oracle_source_config__exclude_objects__oracle_schemas__oracle_tables = {
  table : string prop;
  oracle_columns :
    source_config__oracle_source_config__exclude_objects__oracle_schemas__oracle_tables__oracle_columns
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       source_config__oracle_source_config__exclude_objects__oracle_schemas__oracle_tables) ->
  ()

let yojson_of_source_config__oracle_source_config__exclude_objects__oracle_schemas__oracle_tables
    =
  (function
   | { table = v_table; oracle_columns = v_oracle_columns } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_oracle_columns then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_source_config__oracle_source_config__exclude_objects__oracle_schemas__oracle_tables__oracle_columns)
               v_oracle_columns
           in
           let bnd = "oracle_columns", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_table in
         ("table", arg) :: bnds
       in
       `Assoc bnds
    : source_config__oracle_source_config__exclude_objects__oracle_schemas__oracle_tables ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_config__oracle_source_config__exclude_objects__oracle_schemas__oracle_tables

[@@@deriving.end]

type source_config__oracle_source_config__exclude_objects__oracle_schemas = {
  schema : string prop;
  oracle_tables :
    source_config__oracle_source_config__exclude_objects__oracle_schemas__oracle_tables
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       source_config__oracle_source_config__exclude_objects__oracle_schemas) ->
  ()

let yojson_of_source_config__oracle_source_config__exclude_objects__oracle_schemas
    =
  (function
   | { schema = v_schema; oracle_tables = v_oracle_tables } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_oracle_tables then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_source_config__oracle_source_config__exclude_objects__oracle_schemas__oracle_tables)
               v_oracle_tables
           in
           let bnd = "oracle_tables", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_schema in
         ("schema", arg) :: bnds
       in
       `Assoc bnds
    : source_config__oracle_source_config__exclude_objects__oracle_schemas ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_config__oracle_source_config__exclude_objects__oracle_schemas

[@@@deriving.end]

type source_config__oracle_source_config__exclude_objects = {
  oracle_schemas :
    source_config__oracle_source_config__exclude_objects__oracle_schemas
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : source_config__oracle_source_config__exclude_objects) -> ()

let yojson_of_source_config__oracle_source_config__exclude_objects =
  (function
   | { oracle_schemas = v_oracle_schemas } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_oracle_schemas then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_source_config__oracle_source_config__exclude_objects__oracle_schemas)
               v_oracle_schemas
           in
           let bnd = "oracle_schemas", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : source_config__oracle_source_config__exclude_objects ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_config__oracle_source_config__exclude_objects

[@@@deriving.end]

type source_config__oracle_source_config__include_objects__oracle_schemas__oracle_tables__oracle_columns = {
  column : string prop option; [@option]
  data_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       source_config__oracle_source_config__include_objects__oracle_schemas__oracle_tables__oracle_columns) ->
  ()

let yojson_of_source_config__oracle_source_config__include_objects__oracle_schemas__oracle_tables__oracle_columns
    =
  (function
   | { column = v_column; data_type = v_data_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_data_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_column with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "column", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source_config__oracle_source_config__include_objects__oracle_schemas__oracle_tables__oracle_columns ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_config__oracle_source_config__include_objects__oracle_schemas__oracle_tables__oracle_columns

[@@@deriving.end]

type source_config__oracle_source_config__include_objects__oracle_schemas__oracle_tables = {
  table : string prop;
  oracle_columns :
    source_config__oracle_source_config__include_objects__oracle_schemas__oracle_tables__oracle_columns
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       source_config__oracle_source_config__include_objects__oracle_schemas__oracle_tables) ->
  ()

let yojson_of_source_config__oracle_source_config__include_objects__oracle_schemas__oracle_tables
    =
  (function
   | { table = v_table; oracle_columns = v_oracle_columns } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_oracle_columns then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_source_config__oracle_source_config__include_objects__oracle_schemas__oracle_tables__oracle_columns)
               v_oracle_columns
           in
           let bnd = "oracle_columns", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_table in
         ("table", arg) :: bnds
       in
       `Assoc bnds
    : source_config__oracle_source_config__include_objects__oracle_schemas__oracle_tables ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_config__oracle_source_config__include_objects__oracle_schemas__oracle_tables

[@@@deriving.end]

type source_config__oracle_source_config__include_objects__oracle_schemas = {
  schema : string prop;
  oracle_tables :
    source_config__oracle_source_config__include_objects__oracle_schemas__oracle_tables
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       source_config__oracle_source_config__include_objects__oracle_schemas) ->
  ()

let yojson_of_source_config__oracle_source_config__include_objects__oracle_schemas
    =
  (function
   | { schema = v_schema; oracle_tables = v_oracle_tables } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_oracle_tables then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_source_config__oracle_source_config__include_objects__oracle_schemas__oracle_tables)
               v_oracle_tables
           in
           let bnd = "oracle_tables", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_schema in
         ("schema", arg) :: bnds
       in
       `Assoc bnds
    : source_config__oracle_source_config__include_objects__oracle_schemas ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_config__oracle_source_config__include_objects__oracle_schemas

[@@@deriving.end]

type source_config__oracle_source_config__include_objects = {
  oracle_schemas :
    source_config__oracle_source_config__include_objects__oracle_schemas
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : source_config__oracle_source_config__include_objects) -> ()

let yojson_of_source_config__oracle_source_config__include_objects =
  (function
   | { oracle_schemas = v_oracle_schemas } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_oracle_schemas then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_source_config__oracle_source_config__include_objects__oracle_schemas)
               v_oracle_schemas
           in
           let bnd = "oracle_schemas", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : source_config__oracle_source_config__include_objects ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_config__oracle_source_config__include_objects

[@@@deriving.end]

type source_config__oracle_source_config__stream_large_objects = unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ : source_config__oracle_source_config__stream_large_objects) ->
  ()

let yojson_of_source_config__oracle_source_config__stream_large_objects
    =
  (yojson_of_unit
    : source_config__oracle_source_config__stream_large_objects ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_config__oracle_source_config__stream_large_objects

[@@@deriving.end]

type source_config__oracle_source_config = {
  max_concurrent_backfill_tasks : float prop option; [@option]
  max_concurrent_cdc_tasks : float prop option; [@option]
  drop_large_objects :
    source_config__oracle_source_config__drop_large_objects list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  exclude_objects :
    source_config__oracle_source_config__exclude_objects list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  include_objects :
    source_config__oracle_source_config__include_objects list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  stream_large_objects :
    source_config__oracle_source_config__stream_large_objects list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source_config__oracle_source_config) -> ()

let yojson_of_source_config__oracle_source_config =
  (function
   | {
       max_concurrent_backfill_tasks =
         v_max_concurrent_backfill_tasks;
       max_concurrent_cdc_tasks = v_max_concurrent_cdc_tasks;
       drop_large_objects = v_drop_large_objects;
       exclude_objects = v_exclude_objects;
       include_objects = v_include_objects;
       stream_large_objects = v_stream_large_objects;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_stream_large_objects then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_source_config__oracle_source_config__stream_large_objects)
               v_stream_large_objects
           in
           let bnd = "stream_large_objects", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_include_objects then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_source_config__oracle_source_config__include_objects)
               v_include_objects
           in
           let bnd = "include_objects", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_exclude_objects then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_source_config__oracle_source_config__exclude_objects)
               v_exclude_objects
           in
           let bnd = "exclude_objects", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_drop_large_objects then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_source_config__oracle_source_config__drop_large_objects)
               v_drop_large_objects
           in
           let bnd = "drop_large_objects", arg in
           bnd :: bnds
       in
       let bnds =
         match v_max_concurrent_cdc_tasks with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_concurrent_cdc_tasks", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_concurrent_backfill_tasks with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_concurrent_backfill_tasks", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source_config__oracle_source_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source_config__oracle_source_config

[@@@deriving.end]

type source_config__postgresql_source_config__exclude_objects__postgresql_schemas__postgresql_tables__postgresql_columns = {
  column : string prop option; [@option]
  data_type : string prop option; [@option]
  nullable : bool prop option; [@option]
  ordinal_position : float prop option; [@option]
  primary_key : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       source_config__postgresql_source_config__exclude_objects__postgresql_schemas__postgresql_tables__postgresql_columns) ->
  ()

let yojson_of_source_config__postgresql_source_config__exclude_objects__postgresql_schemas__postgresql_tables__postgresql_columns
    =
  (function
   | {
       column = v_column;
       data_type = v_data_type;
       nullable = v_nullable;
       ordinal_position = v_ordinal_position;
       primary_key = v_primary_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_primary_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "primary_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ordinal_position with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "ordinal_position", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nullable with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "nullable", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_column with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "column", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source_config__postgresql_source_config__exclude_objects__postgresql_schemas__postgresql_tables__postgresql_columns ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_config__postgresql_source_config__exclude_objects__postgresql_schemas__postgresql_tables__postgresql_columns

[@@@deriving.end]

type source_config__postgresql_source_config__exclude_objects__postgresql_schemas__postgresql_tables = {
  table : string prop;
  postgresql_columns :
    source_config__postgresql_source_config__exclude_objects__postgresql_schemas__postgresql_tables__postgresql_columns
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       source_config__postgresql_source_config__exclude_objects__postgresql_schemas__postgresql_tables) ->
  ()

let yojson_of_source_config__postgresql_source_config__exclude_objects__postgresql_schemas__postgresql_tables
    =
  (function
   | { table = v_table; postgresql_columns = v_postgresql_columns }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_postgresql_columns then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_source_config__postgresql_source_config__exclude_objects__postgresql_schemas__postgresql_tables__postgresql_columns)
               v_postgresql_columns
           in
           let bnd = "postgresql_columns", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_table in
         ("table", arg) :: bnds
       in
       `Assoc bnds
    : source_config__postgresql_source_config__exclude_objects__postgresql_schemas__postgresql_tables ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_config__postgresql_source_config__exclude_objects__postgresql_schemas__postgresql_tables

[@@@deriving.end]

type source_config__postgresql_source_config__exclude_objects__postgresql_schemas = {
  schema : string prop;
  postgresql_tables :
    source_config__postgresql_source_config__exclude_objects__postgresql_schemas__postgresql_tables
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       source_config__postgresql_source_config__exclude_objects__postgresql_schemas) ->
  ()

let yojson_of_source_config__postgresql_source_config__exclude_objects__postgresql_schemas
    =
  (function
   | { schema = v_schema; postgresql_tables = v_postgresql_tables }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_postgresql_tables then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_source_config__postgresql_source_config__exclude_objects__postgresql_schemas__postgresql_tables)
               v_postgresql_tables
           in
           let bnd = "postgresql_tables", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_schema in
         ("schema", arg) :: bnds
       in
       `Assoc bnds
    : source_config__postgresql_source_config__exclude_objects__postgresql_schemas ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_config__postgresql_source_config__exclude_objects__postgresql_schemas

[@@@deriving.end]

type source_config__postgresql_source_config__exclude_objects = {
  postgresql_schemas :
    source_config__postgresql_source_config__exclude_objects__postgresql_schemas
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : source_config__postgresql_source_config__exclude_objects) ->
  ()

let yojson_of_source_config__postgresql_source_config__exclude_objects
    =
  (function
   | { postgresql_schemas = v_postgresql_schemas } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_postgresql_schemas then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_source_config__postgresql_source_config__exclude_objects__postgresql_schemas)
               v_postgresql_schemas
           in
           let bnd = "postgresql_schemas", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : source_config__postgresql_source_config__exclude_objects ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_config__postgresql_source_config__exclude_objects

[@@@deriving.end]

type source_config__postgresql_source_config__include_objects__postgresql_schemas__postgresql_tables__postgresql_columns = {
  column : string prop option; [@option]
  data_type : string prop option; [@option]
  nullable : bool prop option; [@option]
  ordinal_position : float prop option; [@option]
  primary_key : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       source_config__postgresql_source_config__include_objects__postgresql_schemas__postgresql_tables__postgresql_columns) ->
  ()

let yojson_of_source_config__postgresql_source_config__include_objects__postgresql_schemas__postgresql_tables__postgresql_columns
    =
  (function
   | {
       column = v_column;
       data_type = v_data_type;
       nullable = v_nullable;
       ordinal_position = v_ordinal_position;
       primary_key = v_primary_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_primary_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "primary_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ordinal_position with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "ordinal_position", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nullable with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "nullable", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_column with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "column", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source_config__postgresql_source_config__include_objects__postgresql_schemas__postgresql_tables__postgresql_columns ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_config__postgresql_source_config__include_objects__postgresql_schemas__postgresql_tables__postgresql_columns

[@@@deriving.end]

type source_config__postgresql_source_config__include_objects__postgresql_schemas__postgresql_tables = {
  table : string prop;
  postgresql_columns :
    source_config__postgresql_source_config__include_objects__postgresql_schemas__postgresql_tables__postgresql_columns
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       source_config__postgresql_source_config__include_objects__postgresql_schemas__postgresql_tables) ->
  ()

let yojson_of_source_config__postgresql_source_config__include_objects__postgresql_schemas__postgresql_tables
    =
  (function
   | { table = v_table; postgresql_columns = v_postgresql_columns }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_postgresql_columns then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_source_config__postgresql_source_config__include_objects__postgresql_schemas__postgresql_tables__postgresql_columns)
               v_postgresql_columns
           in
           let bnd = "postgresql_columns", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_table in
         ("table", arg) :: bnds
       in
       `Assoc bnds
    : source_config__postgresql_source_config__include_objects__postgresql_schemas__postgresql_tables ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_config__postgresql_source_config__include_objects__postgresql_schemas__postgresql_tables

[@@@deriving.end]

type source_config__postgresql_source_config__include_objects__postgresql_schemas = {
  schema : string prop;
  postgresql_tables :
    source_config__postgresql_source_config__include_objects__postgresql_schemas__postgresql_tables
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       source_config__postgresql_source_config__include_objects__postgresql_schemas) ->
  ()

let yojson_of_source_config__postgresql_source_config__include_objects__postgresql_schemas
    =
  (function
   | { schema = v_schema; postgresql_tables = v_postgresql_tables }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_postgresql_tables then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_source_config__postgresql_source_config__include_objects__postgresql_schemas__postgresql_tables)
               v_postgresql_tables
           in
           let bnd = "postgresql_tables", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_schema in
         ("schema", arg) :: bnds
       in
       `Assoc bnds
    : source_config__postgresql_source_config__include_objects__postgresql_schemas ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_config__postgresql_source_config__include_objects__postgresql_schemas

[@@@deriving.end]

type source_config__postgresql_source_config__include_objects = {
  postgresql_schemas :
    source_config__postgresql_source_config__include_objects__postgresql_schemas
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : source_config__postgresql_source_config__include_objects) ->
  ()

let yojson_of_source_config__postgresql_source_config__include_objects
    =
  (function
   | { postgresql_schemas = v_postgresql_schemas } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_postgresql_schemas then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_source_config__postgresql_source_config__include_objects__postgresql_schemas)
               v_postgresql_schemas
           in
           let bnd = "postgresql_schemas", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : source_config__postgresql_source_config__include_objects ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_config__postgresql_source_config__include_objects

[@@@deriving.end]

type source_config__postgresql_source_config = {
  max_concurrent_backfill_tasks : float prop option; [@option]
  publication : string prop;
  replication_slot : string prop;
  exclude_objects :
    source_config__postgresql_source_config__exclude_objects list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  include_objects :
    source_config__postgresql_source_config__include_objects list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source_config__postgresql_source_config) -> ()

let yojson_of_source_config__postgresql_source_config =
  (function
   | {
       max_concurrent_backfill_tasks =
         v_max_concurrent_backfill_tasks;
       publication = v_publication;
       replication_slot = v_replication_slot;
       exclude_objects = v_exclude_objects;
       include_objects = v_include_objects;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_include_objects then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_source_config__postgresql_source_config__include_objects)
               v_include_objects
           in
           let bnd = "include_objects", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_exclude_objects then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_source_config__postgresql_source_config__exclude_objects)
               v_exclude_objects
           in
           let bnd = "exclude_objects", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_replication_slot
         in
         ("replication_slot", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_publication in
         ("publication", arg) :: bnds
       in
       let bnds =
         match v_max_concurrent_backfill_tasks with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_concurrent_backfill_tasks", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source_config__postgresql_source_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source_config__postgresql_source_config

[@@@deriving.end]

type source_config = {
  source_connection_profile : string prop;
  mysql_source_config : source_config__mysql_source_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  oracle_source_config : source_config__oracle_source_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  postgresql_source_config :
    source_config__postgresql_source_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source_config) -> ()

let yojson_of_source_config =
  (function
   | {
       source_connection_profile = v_source_connection_profile;
       mysql_source_config = v_mysql_source_config;
       oracle_source_config = v_oracle_source_config;
       postgresql_source_config = v_postgresql_source_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_postgresql_source_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_source_config__postgresql_source_config)
               v_postgresql_source_config
           in
           let bnd = "postgresql_source_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_oracle_source_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_source_config__oracle_source_config)
               v_oracle_source_config
           in
           let bnd = "oracle_source_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_mysql_source_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_source_config__mysql_source_config)
               v_mysql_source_config
           in
           let bnd = "mysql_source_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_source_connection_profile
         in
         ("source_connection_profile", arg) :: bnds
       in
       `Assoc bnds
    : source_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source_config

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type google_datastream_stream = {
  create_without_validation : bool prop option; [@option]
  customer_managed_encryption_key : string prop option; [@option]
  desired_state : string prop option; [@option]
  display_name : string prop;
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  location : string prop;
  project : string prop option; [@option]
  stream_id : string prop;
  backfill_all : backfill_all list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  backfill_none : backfill_none list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  destination_config : destination_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  source_config : source_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_datastream_stream) -> ()

let yojson_of_google_datastream_stream =
  (function
   | {
       create_without_validation = v_create_without_validation;
       customer_managed_encryption_key =
         v_customer_managed_encryption_key;
       desired_state = v_desired_state;
       display_name = v_display_name;
       id = v_id;
       labels = v_labels;
       location = v_location;
       project = v_project;
       stream_id = v_stream_id;
       backfill_all = v_backfill_all;
       backfill_none = v_backfill_none;
       destination_config = v_destination_config;
       source_config = v_source_config;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_source_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_source_config) v_source_config
           in
           let bnd = "source_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_destination_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_destination_config)
               v_destination_config
           in
           let bnd = "destination_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_backfill_none then bnds
         else
           let arg =
             (yojson_of_list yojson_of_backfill_none) v_backfill_none
           in
           let bnd = "backfill_none", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_backfill_all then bnds
         else
           let arg =
             (yojson_of_list yojson_of_backfill_all) v_backfill_all
           in
           let bnd = "backfill_all", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_stream_id in
         ("stream_id", arg) :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "labels", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         match v_desired_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "desired_state", arg in
             bnd :: bnds
       in
       let bnds =
         match v_customer_managed_encryption_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "customer_managed_encryption_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create_without_validation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "create_without_validation", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_datastream_stream -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_datastream_stream

[@@@deriving.end]

let backfill_all__mysql_excluded_objects__mysql_databases__mysql_tables__mysql_columns
    ?collation ?column ?data_type ?nullable ?ordinal_position
    ?primary_key () :
    backfill_all__mysql_excluded_objects__mysql_databases__mysql_tables__mysql_columns
    =
  {
    collation;
    column;
    data_type;
    nullable;
    ordinal_position;
    primary_key;
  }

let backfill_all__mysql_excluded_objects__mysql_databases__mysql_tables
    ?(mysql_columns = []) ~table () :
    backfill_all__mysql_excluded_objects__mysql_databases__mysql_tables
    =
  { table; mysql_columns }

let backfill_all__mysql_excluded_objects__mysql_databases
    ?(mysql_tables = []) ~database () :
    backfill_all__mysql_excluded_objects__mysql_databases =
  { database; mysql_tables }

let backfill_all__mysql_excluded_objects ~mysql_databases () :
    backfill_all__mysql_excluded_objects =
  { mysql_databases }

let backfill_all__oracle_excluded_objects__oracle_schemas__oracle_tables__oracle_columns
    ?column ?data_type () :
    backfill_all__oracle_excluded_objects__oracle_schemas__oracle_tables__oracle_columns
    =
  { column; data_type }

let backfill_all__oracle_excluded_objects__oracle_schemas__oracle_tables
    ?(oracle_columns = []) ~table () :
    backfill_all__oracle_excluded_objects__oracle_schemas__oracle_tables
    =
  { table; oracle_columns }

let backfill_all__oracle_excluded_objects__oracle_schemas
    ?(oracle_tables = []) ~schema () :
    backfill_all__oracle_excluded_objects__oracle_schemas =
  { schema; oracle_tables }

let backfill_all__oracle_excluded_objects ~oracle_schemas () :
    backfill_all__oracle_excluded_objects =
  { oracle_schemas }

let backfill_all__postgresql_excluded_objects__postgresql_schemas__postgresql_tables__postgresql_columns
    ?column ?data_type ?nullable ?ordinal_position ?primary_key () :
    backfill_all__postgresql_excluded_objects__postgresql_schemas__postgresql_tables__postgresql_columns
    =
  { column; data_type; nullable; ordinal_position; primary_key }

let backfill_all__postgresql_excluded_objects__postgresql_schemas__postgresql_tables
    ?(postgresql_columns = []) ~table () :
    backfill_all__postgresql_excluded_objects__postgresql_schemas__postgresql_tables
    =
  { table; postgresql_columns }

let backfill_all__postgresql_excluded_objects__postgresql_schemas
    ?(postgresql_tables = []) ~schema () :
    backfill_all__postgresql_excluded_objects__postgresql_schemas =
  { schema; postgresql_tables }

let backfill_all__postgresql_excluded_objects ~postgresql_schemas ()
    : backfill_all__postgresql_excluded_objects =
  { postgresql_schemas }

let backfill_all ?(mysql_excluded_objects = [])
    ?(oracle_excluded_objects = [])
    ?(postgresql_excluded_objects = []) () : backfill_all =
  {
    mysql_excluded_objects;
    oracle_excluded_objects;
    postgresql_excluded_objects;
  }

let backfill_none () = ()

let destination_config__bigquery_destination_config__single_target_dataset
    ~dataset_id () :
    destination_config__bigquery_destination_config__single_target_dataset
    =
  { dataset_id }

let destination_config__bigquery_destination_config__source_hierarchy_datasets__dataset_template
    ?dataset_id_prefix ?kms_key_name ~location () :
    destination_config__bigquery_destination_config__source_hierarchy_datasets__dataset_template
    =
  { dataset_id_prefix; kms_key_name; location }

let destination_config__bigquery_destination_config__source_hierarchy_datasets
    ~dataset_template () :
    destination_config__bigquery_destination_config__source_hierarchy_datasets
    =
  { dataset_template }

let destination_config__bigquery_destination_config ?data_freshness
    ?(single_target_dataset = []) ?(source_hierarchy_datasets = [])
    () : destination_config__bigquery_destination_config =
  {
    data_freshness;
    single_target_dataset;
    source_hierarchy_datasets;
  }

let destination_config__gcs_destination_config__avro_file_format () =
  ()

let destination_config__gcs_destination_config__json_file_format
    ?compression ?schema_file_format () :
    destination_config__gcs_destination_config__json_file_format =
  { compression; schema_file_format }

let destination_config__gcs_destination_config
    ?file_rotation_interval ?file_rotation_mb ?path
    ?(avro_file_format = []) ?(json_file_format = []) () :
    destination_config__gcs_destination_config =
  {
    file_rotation_interval;
    file_rotation_mb;
    path;
    avro_file_format;
    json_file_format;
  }

let destination_config ?(bigquery_destination_config = [])
    ?(gcs_destination_config = []) ~destination_connection_profile ()
    : destination_config =
  {
    destination_connection_profile;
    bigquery_destination_config;
    gcs_destination_config;
  }

let source_config__mysql_source_config__exclude_objects__mysql_databases__mysql_tables__mysql_columns
    ?collation ?column ?data_type ?nullable ?ordinal_position
    ?primary_key () :
    source_config__mysql_source_config__exclude_objects__mysql_databases__mysql_tables__mysql_columns
    =
  {
    collation;
    column;
    data_type;
    nullable;
    ordinal_position;
    primary_key;
  }

let source_config__mysql_source_config__exclude_objects__mysql_databases__mysql_tables
    ?(mysql_columns = []) ~table () :
    source_config__mysql_source_config__exclude_objects__mysql_databases__mysql_tables
    =
  { table; mysql_columns }

let source_config__mysql_source_config__exclude_objects__mysql_databases
    ?(mysql_tables = []) ~database () :
    source_config__mysql_source_config__exclude_objects__mysql_databases
    =
  { database; mysql_tables }

let source_config__mysql_source_config__exclude_objects
    ~mysql_databases () :
    source_config__mysql_source_config__exclude_objects =
  { mysql_databases }

let source_config__mysql_source_config__include_objects__mysql_databases__mysql_tables__mysql_columns
    ?collation ?column ?data_type ?nullable ?ordinal_position
    ?primary_key () :
    source_config__mysql_source_config__include_objects__mysql_databases__mysql_tables__mysql_columns
    =
  {
    collation;
    column;
    data_type;
    nullable;
    ordinal_position;
    primary_key;
  }

let source_config__mysql_source_config__include_objects__mysql_databases__mysql_tables
    ?(mysql_columns = []) ~table () :
    source_config__mysql_source_config__include_objects__mysql_databases__mysql_tables
    =
  { table; mysql_columns }

let source_config__mysql_source_config__include_objects__mysql_databases
    ?(mysql_tables = []) ~database () :
    source_config__mysql_source_config__include_objects__mysql_databases
    =
  { database; mysql_tables }

let source_config__mysql_source_config__include_objects
    ~mysql_databases () :
    source_config__mysql_source_config__include_objects =
  { mysql_databases }

let source_config__mysql_source_config ?max_concurrent_backfill_tasks
    ?max_concurrent_cdc_tasks ?(exclude_objects = [])
    ?(include_objects = []) () : source_config__mysql_source_config =
  {
    max_concurrent_backfill_tasks;
    max_concurrent_cdc_tasks;
    exclude_objects;
    include_objects;
  }

let source_config__oracle_source_config__drop_large_objects () = ()

let source_config__oracle_source_config__exclude_objects__oracle_schemas__oracle_tables__oracle_columns
    ?column ?data_type () :
    source_config__oracle_source_config__exclude_objects__oracle_schemas__oracle_tables__oracle_columns
    =
  { column; data_type }

let source_config__oracle_source_config__exclude_objects__oracle_schemas__oracle_tables
    ?(oracle_columns = []) ~table () :
    source_config__oracle_source_config__exclude_objects__oracle_schemas__oracle_tables
    =
  { table; oracle_columns }

let source_config__oracle_source_config__exclude_objects__oracle_schemas
    ?(oracle_tables = []) ~schema () :
    source_config__oracle_source_config__exclude_objects__oracle_schemas
    =
  { schema; oracle_tables }

let source_config__oracle_source_config__exclude_objects
    ~oracle_schemas () :
    source_config__oracle_source_config__exclude_objects =
  { oracle_schemas }

let source_config__oracle_source_config__include_objects__oracle_schemas__oracle_tables__oracle_columns
    ?column ?data_type () :
    source_config__oracle_source_config__include_objects__oracle_schemas__oracle_tables__oracle_columns
    =
  { column; data_type }

let source_config__oracle_source_config__include_objects__oracle_schemas__oracle_tables
    ?(oracle_columns = []) ~table () :
    source_config__oracle_source_config__include_objects__oracle_schemas__oracle_tables
    =
  { table; oracle_columns }

let source_config__oracle_source_config__include_objects__oracle_schemas
    ?(oracle_tables = []) ~schema () :
    source_config__oracle_source_config__include_objects__oracle_schemas
    =
  { schema; oracle_tables }

let source_config__oracle_source_config__include_objects
    ~oracle_schemas () :
    source_config__oracle_source_config__include_objects =
  { oracle_schemas }

let source_config__oracle_source_config__stream_large_objects () = ()

let source_config__oracle_source_config
    ?max_concurrent_backfill_tasks ?max_concurrent_cdc_tasks
    ?(drop_large_objects = []) ?(exclude_objects = [])
    ?(include_objects = []) ?(stream_large_objects = []) () :
    source_config__oracle_source_config =
  {
    max_concurrent_backfill_tasks;
    max_concurrent_cdc_tasks;
    drop_large_objects;
    exclude_objects;
    include_objects;
    stream_large_objects;
  }

let source_config__postgresql_source_config__exclude_objects__postgresql_schemas__postgresql_tables__postgresql_columns
    ?column ?data_type ?nullable ?ordinal_position ?primary_key () :
    source_config__postgresql_source_config__exclude_objects__postgresql_schemas__postgresql_tables__postgresql_columns
    =
  { column; data_type; nullable; ordinal_position; primary_key }

let source_config__postgresql_source_config__exclude_objects__postgresql_schemas__postgresql_tables
    ?(postgresql_columns = []) ~table () :
    source_config__postgresql_source_config__exclude_objects__postgresql_schemas__postgresql_tables
    =
  { table; postgresql_columns }

let source_config__postgresql_source_config__exclude_objects__postgresql_schemas
    ?(postgresql_tables = []) ~schema () :
    source_config__postgresql_source_config__exclude_objects__postgresql_schemas
    =
  { schema; postgresql_tables }

let source_config__postgresql_source_config__exclude_objects
    ~postgresql_schemas () :
    source_config__postgresql_source_config__exclude_objects =
  { postgresql_schemas }

let source_config__postgresql_source_config__include_objects__postgresql_schemas__postgresql_tables__postgresql_columns
    ?column ?data_type ?nullable ?ordinal_position ?primary_key () :
    source_config__postgresql_source_config__include_objects__postgresql_schemas__postgresql_tables__postgresql_columns
    =
  { column; data_type; nullable; ordinal_position; primary_key }

let source_config__postgresql_source_config__include_objects__postgresql_schemas__postgresql_tables
    ?(postgresql_columns = []) ~table () :
    source_config__postgresql_source_config__include_objects__postgresql_schemas__postgresql_tables
    =
  { table; postgresql_columns }

let source_config__postgresql_source_config__include_objects__postgresql_schemas
    ?(postgresql_tables = []) ~schema () :
    source_config__postgresql_source_config__include_objects__postgresql_schemas
    =
  { schema; postgresql_tables }

let source_config__postgresql_source_config__include_objects
    ~postgresql_schemas () :
    source_config__postgresql_source_config__include_objects =
  { postgresql_schemas }

let source_config__postgresql_source_config
    ?max_concurrent_backfill_tasks ?(exclude_objects = [])
    ?(include_objects = []) ~publication ~replication_slot () :
    source_config__postgresql_source_config =
  {
    max_concurrent_backfill_tasks;
    publication;
    replication_slot;
    exclude_objects;
    include_objects;
  }

let source_config ?(mysql_source_config = [])
    ?(oracle_source_config = []) ?(postgresql_source_config = [])
    ~source_connection_profile () : source_config =
  {
    source_connection_profile;
    mysql_source_config;
    oracle_source_config;
    postgresql_source_config;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_datastream_stream ?create_without_validation
    ?customer_managed_encryption_key ?desired_state ?id ?labels
    ?project ?(backfill_all = []) ?(backfill_none = []) ?timeouts
    ~display_name ~location ~stream_id ~destination_config
    ~source_config () : google_datastream_stream =
  {
    create_without_validation;
    customer_managed_encryption_key;
    desired_state;
    display_name;
    id;
    labels;
    location;
    project;
    stream_id;
    backfill_all;
    backfill_none;
    destination_config;
    source_config;
    timeouts;
  }

type t = {
  tf_name : string;
  create_without_validation : bool prop;
  customer_managed_encryption_key : string prop;
  desired_state : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  stream_id : string prop;
  terraform_labels : (string * string) list prop;
}

let make ?create_without_validation ?customer_managed_encryption_key
    ?desired_state ?id ?labels ?project ?(backfill_all = [])
    ?(backfill_none = []) ?timeouts ~display_name ~location
    ~stream_id ~destination_config ~source_config __id =
  let __type = "google_datastream_stream" in
  let __attrs =
    ({
       tf_name = __id;
       create_without_validation =
         Prop.computed __type __id "create_without_validation";
       customer_managed_encryption_key =
         Prop.computed __type __id "customer_managed_encryption_key";
       desired_state = Prop.computed __type __id "desired_state";
       display_name = Prop.computed __type __id "display_name";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       state = Prop.computed __type __id "state";
       stream_id = Prop.computed __type __id "stream_id";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_datastream_stream
        (google_datastream_stream ?create_without_validation
           ?customer_managed_encryption_key ?desired_state ?id
           ?labels ?project ~backfill_all ~backfill_none ?timeouts
           ~display_name ~location ~stream_id ~destination_config
           ~source_config ());
    attrs = __attrs;
  }

let register ?tf_module ?create_without_validation
    ?customer_managed_encryption_key ?desired_state ?id ?labels
    ?project ?(backfill_all = []) ?(backfill_none = []) ?timeouts
    ~display_name ~location ~stream_id ~destination_config
    ~source_config __id =
  let (r : _ Tf_core.resource) =
    make ?create_without_validation ?customer_managed_encryption_key
      ?desired_state ?id ?labels ?project ~backfill_all
      ~backfill_none ?timeouts ~display_name ~location ~stream_id
      ~destination_config ~source_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
