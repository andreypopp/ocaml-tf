(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type actions__export_data__profile_table = {
  dataset_id : string prop option; [@option]
  project_id : string prop option; [@option]
  table_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : actions__export_data__profile_table) -> ()

let yojson_of_actions__export_data__profile_table =
  (function
   | {
       dataset_id = v_dataset_id;
       project_id = v_project_id;
       table_id = v_table_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_table_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "table_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_project_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dataset_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dataset_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : actions__export_data__profile_table ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_actions__export_data__profile_table

[@@@deriving.end]

type actions__export_data = {
  profile_table : actions__export_data__profile_table list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : actions__export_data) -> ()

let yojson_of_actions__export_data =
  (function
   | { profile_table = v_profile_table } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_profile_table then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_actions__export_data__profile_table)
               v_profile_table
           in
           let bnd = "profile_table", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : actions__export_data -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_actions__export_data

[@@@deriving.end]

type actions__pub_sub_notification__pubsub_condition__expressions__conditions = {
  minimum_risk_score : string prop option; [@option]
  minimum_sensitivity_score : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       actions__pub_sub_notification__pubsub_condition__expressions__conditions) ->
  ()

let yojson_of_actions__pub_sub_notification__pubsub_condition__expressions__conditions
    =
  (function
   | {
       minimum_risk_score = v_minimum_risk_score;
       minimum_sensitivity_score = v_minimum_sensitivity_score;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_minimum_sensitivity_score with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "minimum_sensitivity_score", arg in
             bnd :: bnds
       in
       let bnds =
         match v_minimum_risk_score with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "minimum_risk_score", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : actions__pub_sub_notification__pubsub_condition__expressions__conditions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_actions__pub_sub_notification__pubsub_condition__expressions__conditions

[@@@deriving.end]

type actions__pub_sub_notification__pubsub_condition__expressions = {
  logical_operator : string prop option; [@option]
  conditions :
    actions__pub_sub_notification__pubsub_condition__expressions__conditions
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       actions__pub_sub_notification__pubsub_condition__expressions) ->
  ()

let yojson_of_actions__pub_sub_notification__pubsub_condition__expressions
    =
  (function
   | {
       logical_operator = v_logical_operator;
       conditions = v_conditions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_conditions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_actions__pub_sub_notification__pubsub_condition__expressions__conditions)
               v_conditions
           in
           let bnd = "conditions", arg in
           bnd :: bnds
       in
       let bnds =
         match v_logical_operator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "logical_operator", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : actions__pub_sub_notification__pubsub_condition__expressions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_actions__pub_sub_notification__pubsub_condition__expressions

[@@@deriving.end]

type actions__pub_sub_notification__pubsub_condition = {
  expressions :
    actions__pub_sub_notification__pubsub_condition__expressions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : actions__pub_sub_notification__pubsub_condition) -> ()

let yojson_of_actions__pub_sub_notification__pubsub_condition =
  (function
   | { expressions = v_expressions } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_expressions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_actions__pub_sub_notification__pubsub_condition__expressions)
               v_expressions
           in
           let bnd = "expressions", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : actions__pub_sub_notification__pubsub_condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_actions__pub_sub_notification__pubsub_condition

[@@@deriving.end]

type actions__pub_sub_notification = {
  detail_of_message : string prop option; [@option]
  event : string prop option; [@option]
  topic : string prop option; [@option]
  pubsub_condition :
    actions__pub_sub_notification__pubsub_condition list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : actions__pub_sub_notification) -> ()

let yojson_of_actions__pub_sub_notification =
  (function
   | {
       detail_of_message = v_detail_of_message;
       event = v_event;
       topic = v_topic;
       pubsub_condition = v_pubsub_condition;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_pubsub_condition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_actions__pub_sub_notification__pubsub_condition)
               v_pubsub_condition
           in
           let bnd = "pubsub_condition", arg in
           bnd :: bnds
       in
       let bnds =
         match v_topic with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "topic", arg in
             bnd :: bnds
       in
       let bnds =
         match v_event with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "event", arg in
             bnd :: bnds
       in
       let bnds =
         match v_detail_of_message with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "detail_of_message", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : actions__pub_sub_notification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_actions__pub_sub_notification

[@@@deriving.end]

type actions = {
  export_data : actions__export_data list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  pub_sub_notification : actions__pub_sub_notification list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : actions) -> ()

let yojson_of_actions =
  (function
   | {
       export_data = v_export_data;
       pub_sub_notification = v_pub_sub_notification;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_pub_sub_notification then bnds
         else
           let arg =
             (yojson_of_list yojson_of_actions__pub_sub_notification)
               v_pub_sub_notification
           in
           let bnd = "pub_sub_notification", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_export_data then bnds
         else
           let arg =
             (yojson_of_list yojson_of_actions__export_data)
               v_export_data
           in
           let bnd = "export_data", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : actions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_actions

[@@@deriving.end]

type org_config__location = {
  folder_id : string prop option; [@option]
  organization_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : org_config__location) -> ()

let yojson_of_org_config__location =
  (function
   | { folder_id = v_folder_id; organization_id = v_organization_id }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_organization_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "organization_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_folder_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "folder_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : org_config__location -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_org_config__location

[@@@deriving.end]

type org_config = {
  project_id : string prop option; [@option]
  location : org_config__location list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : org_config) -> ()

let yojson_of_org_config =
  (function
   | { project_id = v_project_id; location = v_location } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_location then bnds
         else
           let arg =
             (yojson_of_list yojson_of_org_config__location)
               v_location
           in
           let bnd = "location", arg in
           bnd :: bnds
       in
       let bnds =
         match v_project_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : org_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_org_config

[@@@deriving.end]

type targets__big_query_target__cadence__schema_modified_cadence = {
  frequency : string prop option; [@option]
  types : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       targets__big_query_target__cadence__schema_modified_cadence) ->
  ()

let yojson_of_targets__big_query_target__cadence__schema_modified_cadence
    =
  (function
   | { frequency = v_frequency; types = v_types } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_frequency with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "frequency", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : targets__big_query_target__cadence__schema_modified_cadence ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_targets__big_query_target__cadence__schema_modified_cadence

[@@@deriving.end]

type targets__big_query_target__cadence__table_modified_cadence = {
  frequency : string prop option; [@option]
  types : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : targets__big_query_target__cadence__table_modified_cadence) ->
  ()

let yojson_of_targets__big_query_target__cadence__table_modified_cadence
    =
  (function
   | { frequency = v_frequency; types = v_types } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_frequency with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "frequency", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : targets__big_query_target__cadence__table_modified_cadence ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_targets__big_query_target__cadence__table_modified_cadence

[@@@deriving.end]

type targets__big_query_target__cadence = {
  schema_modified_cadence :
    targets__big_query_target__cadence__schema_modified_cadence list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  table_modified_cadence :
    targets__big_query_target__cadence__table_modified_cadence list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : targets__big_query_target__cadence) -> ()

let yojson_of_targets__big_query_target__cadence =
  (function
   | {
       schema_modified_cadence = v_schema_modified_cadence;
       table_modified_cadence = v_table_modified_cadence;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_table_modified_cadence then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_targets__big_query_target__cadence__table_modified_cadence)
               v_table_modified_cadence
           in
           let bnd = "table_modified_cadence", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_schema_modified_cadence then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_targets__big_query_target__cadence__schema_modified_cadence)
               v_schema_modified_cadence
           in
           let bnd = "schema_modified_cadence", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : targets__big_query_target__cadence ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_targets__big_query_target__cadence

[@@@deriving.end]

type targets__big_query_target__conditions__or_conditions = {
  min_age : string prop option; [@option]
  min_row_count : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : targets__big_query_target__conditions__or_conditions) -> ()

let yojson_of_targets__big_query_target__conditions__or_conditions =
  (function
   | { min_age = v_min_age; min_row_count = v_min_row_count } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_min_row_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_row_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_age with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "min_age", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : targets__big_query_target__conditions__or_conditions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_targets__big_query_target__conditions__or_conditions

[@@@deriving.end]

type targets__big_query_target__conditions__types = {
  types : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : targets__big_query_target__conditions__types) -> ()

let yojson_of_targets__big_query_target__conditions__types =
  (function
   | { types = v_types } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "types", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : targets__big_query_target__conditions__types ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_targets__big_query_target__conditions__types

[@@@deriving.end]

type targets__big_query_target__conditions = {
  created_after : string prop option; [@option]
  type_collection : string prop option; [@option]
  or_conditions :
    targets__big_query_target__conditions__or_conditions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  types : targets__big_query_target__conditions__types list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : targets__big_query_target__conditions) -> ()

let yojson_of_targets__big_query_target__conditions =
  (function
   | {
       created_after = v_created_after;
       type_collection = v_type_collection;
       or_conditions = v_or_conditions;
       types = v_types;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_types then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_targets__big_query_target__conditions__types)
               v_types
           in
           let bnd = "types", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_or_conditions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_targets__big_query_target__conditions__or_conditions)
               v_or_conditions
           in
           let bnd = "or_conditions", arg in
           bnd :: bnds
       in
       let bnds =
         match v_type_collection with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type_collection", arg in
             bnd :: bnds
       in
       let bnds =
         match v_created_after with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "created_after", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : targets__big_query_target__conditions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_targets__big_query_target__conditions

[@@@deriving.end]

type targets__big_query_target__disabled = unit
[@@deriving_inline yojson_of]

let _ = fun (_ : targets__big_query_target__disabled) -> ()

let yojson_of_targets__big_query_target__disabled =
  (yojson_of_unit
    : targets__big_query_target__disabled ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_targets__big_query_target__disabled

[@@@deriving.end]

type targets__big_query_target__filter__other_tables = unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ : targets__big_query_target__filter__other_tables) -> ()

let yojson_of_targets__big_query_target__filter__other_tables =
  (yojson_of_unit
    : targets__big_query_target__filter__other_tables ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_targets__big_query_target__filter__other_tables

[@@@deriving.end]

type targets__big_query_target__filter__table_reference = {
  dataset_id : string prop;
  table_id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : targets__big_query_target__filter__table_reference) -> ()

let yojson_of_targets__big_query_target__filter__table_reference =
  (function
   | { dataset_id = v_dataset_id; table_id = v_table_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_table_id in
         ("table_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dataset_id in
         ("dataset_id", arg) :: bnds
       in
       `Assoc bnds
    : targets__big_query_target__filter__table_reference ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_targets__big_query_target__filter__table_reference

[@@@deriving.end]

type targets__big_query_target__filter__tables__include_regexes__patterns = {
  dataset_id_regex : string prop option; [@option]
  project_id_regex : string prop option; [@option]
  table_id_regex : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       targets__big_query_target__filter__tables__include_regexes__patterns) ->
  ()

let yojson_of_targets__big_query_target__filter__tables__include_regexes__patterns
    =
  (function
   | {
       dataset_id_regex = v_dataset_id_regex;
       project_id_regex = v_project_id_regex;
       table_id_regex = v_table_id_regex;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_table_id_regex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "table_id_regex", arg in
             bnd :: bnds
       in
       let bnds =
         match v_project_id_regex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project_id_regex", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dataset_id_regex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dataset_id_regex", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : targets__big_query_target__filter__tables__include_regexes__patterns ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_targets__big_query_target__filter__tables__include_regexes__patterns

[@@@deriving.end]

type targets__big_query_target__filter__tables__include_regexes = {
  patterns :
    targets__big_query_target__filter__tables__include_regexes__patterns
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : targets__big_query_target__filter__tables__include_regexes) ->
  ()

let yojson_of_targets__big_query_target__filter__tables__include_regexes
    =
  (function
   | { patterns = v_patterns } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_patterns then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_targets__big_query_target__filter__tables__include_regexes__patterns)
               v_patterns
           in
           let bnd = "patterns", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : targets__big_query_target__filter__tables__include_regexes ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_targets__big_query_target__filter__tables__include_regexes

[@@@deriving.end]

type targets__big_query_target__filter__tables = {
  include_regexes :
    targets__big_query_target__filter__tables__include_regexes list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : targets__big_query_target__filter__tables) -> ()

let yojson_of_targets__big_query_target__filter__tables =
  (function
   | { include_regexes = v_include_regexes } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_include_regexes then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_targets__big_query_target__filter__tables__include_regexes)
               v_include_regexes
           in
           let bnd = "include_regexes", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : targets__big_query_target__filter__tables ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_targets__big_query_target__filter__tables

[@@@deriving.end]

type targets__big_query_target__filter = {
  other_tables :
    targets__big_query_target__filter__other_tables list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  table_reference :
    targets__big_query_target__filter__table_reference list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tables : targets__big_query_target__filter__tables list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : targets__big_query_target__filter) -> ()

let yojson_of_targets__big_query_target__filter =
  (function
   | {
       other_tables = v_other_tables;
       table_reference = v_table_reference;
       tables = v_tables;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tables then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_targets__big_query_target__filter__tables)
               v_tables
           in
           let bnd = "tables", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_table_reference then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_targets__big_query_target__filter__table_reference)
               v_table_reference
           in
           let bnd = "table_reference", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_other_tables then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_targets__big_query_target__filter__other_tables)
               v_other_tables
           in
           let bnd = "other_tables", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : targets__big_query_target__filter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_targets__big_query_target__filter

[@@@deriving.end]

type targets__big_query_target = {
  cadence : targets__big_query_target__cadence list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  conditions : targets__big_query_target__conditions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  disabled : targets__big_query_target__disabled list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  filter : targets__big_query_target__filter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : targets__big_query_target) -> ()

let yojson_of_targets__big_query_target =
  (function
   | {
       cadence = v_cadence;
       conditions = v_conditions;
       disabled = v_disabled;
       filter = v_filter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_filter then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_targets__big_query_target__filter)
               v_filter
           in
           let bnd = "filter", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_disabled then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_targets__big_query_target__disabled)
               v_disabled
           in
           let bnd = "disabled", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_conditions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_targets__big_query_target__conditions)
               v_conditions
           in
           let bnd = "conditions", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cadence then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_targets__big_query_target__cadence)
               v_cadence
           in
           let bnd = "cadence", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : targets__big_query_target -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_targets__big_query_target

[@@@deriving.end]

type targets__cloud_sql_target__conditions = {
  database_engines : string prop list option; [@option]
  types : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : targets__cloud_sql_target__conditions) -> ()

let yojson_of_targets__cloud_sql_target__conditions =
  (function
   | { database_engines = v_database_engines; types = v_types } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_database_engines with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "database_engines", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : targets__cloud_sql_target__conditions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_targets__cloud_sql_target__conditions

[@@@deriving.end]

type targets__cloud_sql_target__disabled = unit
[@@deriving_inline yojson_of]

let _ = fun (_ : targets__cloud_sql_target__disabled) -> ()

let yojson_of_targets__cloud_sql_target__disabled =
  (yojson_of_unit
    : targets__cloud_sql_target__disabled ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_targets__cloud_sql_target__disabled

[@@@deriving.end]

type targets__cloud_sql_target__filter__collection__include_regexes__patterns = {
  database_regex : string prop option; [@option]
  database_resource_name_regex : string prop option; [@option]
  instance_regex : string prop option; [@option]
  project_id_regex : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       targets__cloud_sql_target__filter__collection__include_regexes__patterns) ->
  ()

let yojson_of_targets__cloud_sql_target__filter__collection__include_regexes__patterns
    =
  (function
   | {
       database_regex = v_database_regex;
       database_resource_name_regex = v_database_resource_name_regex;
       instance_regex = v_instance_regex;
       project_id_regex = v_project_id_regex;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_project_id_regex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project_id_regex", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance_regex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance_regex", arg in
             bnd :: bnds
       in
       let bnds =
         match v_database_resource_name_regex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "database_resource_name_regex", arg in
             bnd :: bnds
       in
       let bnds =
         match v_database_regex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "database_regex", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : targets__cloud_sql_target__filter__collection__include_regexes__patterns ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_targets__cloud_sql_target__filter__collection__include_regexes__patterns

[@@@deriving.end]

type targets__cloud_sql_target__filter__collection__include_regexes = {
  patterns :
    targets__cloud_sql_target__filter__collection__include_regexes__patterns
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       targets__cloud_sql_target__filter__collection__include_regexes) ->
  ()

let yojson_of_targets__cloud_sql_target__filter__collection__include_regexes
    =
  (function
   | { patterns = v_patterns } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_patterns then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_targets__cloud_sql_target__filter__collection__include_regexes__patterns)
               v_patterns
           in
           let bnd = "patterns", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : targets__cloud_sql_target__filter__collection__include_regexes ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_targets__cloud_sql_target__filter__collection__include_regexes

[@@@deriving.end]

type targets__cloud_sql_target__filter__collection = {
  include_regexes :
    targets__cloud_sql_target__filter__collection__include_regexes
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : targets__cloud_sql_target__filter__collection) -> ()

let yojson_of_targets__cloud_sql_target__filter__collection =
  (function
   | { include_regexes = v_include_regexes } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_include_regexes then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_targets__cloud_sql_target__filter__collection__include_regexes)
               v_include_regexes
           in
           let bnd = "include_regexes", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : targets__cloud_sql_target__filter__collection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_targets__cloud_sql_target__filter__collection

[@@@deriving.end]

type targets__cloud_sql_target__filter__database_resource_reference = {
  database : string prop;
  database_resource : string prop;
  instance : string prop;
  project_id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       targets__cloud_sql_target__filter__database_resource_reference) ->
  ()

let yojson_of_targets__cloud_sql_target__filter__database_resource_reference
    =
  (function
   | {
       database = v_database;
       database_resource = v_database_resource;
       instance = v_instance;
       project_id = v_project_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project_id in
         ("project_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance in
         ("instance", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_database_resource
         in
         ("database_resource", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_database in
         ("database", arg) :: bnds
       in
       `Assoc bnds
    : targets__cloud_sql_target__filter__database_resource_reference ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_targets__cloud_sql_target__filter__database_resource_reference

[@@@deriving.end]

type targets__cloud_sql_target__filter__others = unit
[@@deriving_inline yojson_of]

let _ = fun (_ : targets__cloud_sql_target__filter__others) -> ()

let yojson_of_targets__cloud_sql_target__filter__others =
  (yojson_of_unit
    : targets__cloud_sql_target__filter__others ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_targets__cloud_sql_target__filter__others

[@@@deriving.end]

type targets__cloud_sql_target__filter = {
  collection : targets__cloud_sql_target__filter__collection list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  database_resource_reference :
    targets__cloud_sql_target__filter__database_resource_reference
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  others : targets__cloud_sql_target__filter__others list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : targets__cloud_sql_target__filter) -> ()

let yojson_of_targets__cloud_sql_target__filter =
  (function
   | {
       collection = v_collection;
       database_resource_reference = v_database_resource_reference;
       others = v_others;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_others then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_targets__cloud_sql_target__filter__others)
               v_others
           in
           let bnd = "others", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_database_resource_reference then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_targets__cloud_sql_target__filter__database_resource_reference)
               v_database_resource_reference
           in
           let bnd = "database_resource_reference", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_collection then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_targets__cloud_sql_target__filter__collection)
               v_collection
           in
           let bnd = "collection", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : targets__cloud_sql_target__filter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_targets__cloud_sql_target__filter

[@@@deriving.end]

type targets__cloud_sql_target__generation_cadence__schema_modified_cadence = {
  frequency : string prop option; [@option]
  types : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       targets__cloud_sql_target__generation_cadence__schema_modified_cadence) ->
  ()

let yojson_of_targets__cloud_sql_target__generation_cadence__schema_modified_cadence
    =
  (function
   | { frequency = v_frequency; types = v_types } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_frequency with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "frequency", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : targets__cloud_sql_target__generation_cadence__schema_modified_cadence ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_targets__cloud_sql_target__generation_cadence__schema_modified_cadence

[@@@deriving.end]

type targets__cloud_sql_target__generation_cadence = {
  refresh_frequency : string prop option; [@option]
  schema_modified_cadence :
    targets__cloud_sql_target__generation_cadence__schema_modified_cadence
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : targets__cloud_sql_target__generation_cadence) -> ()

let yojson_of_targets__cloud_sql_target__generation_cadence =
  (function
   | {
       refresh_frequency = v_refresh_frequency;
       schema_modified_cadence = v_schema_modified_cadence;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_schema_modified_cadence then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_targets__cloud_sql_target__generation_cadence__schema_modified_cadence)
               v_schema_modified_cadence
           in
           let bnd = "schema_modified_cadence", arg in
           bnd :: bnds
       in
       let bnds =
         match v_refresh_frequency with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "refresh_frequency", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : targets__cloud_sql_target__generation_cadence ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_targets__cloud_sql_target__generation_cadence

[@@@deriving.end]

type targets__cloud_sql_target = {
  conditions : targets__cloud_sql_target__conditions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  disabled : targets__cloud_sql_target__disabled list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  filter : targets__cloud_sql_target__filter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  generation_cadence :
    targets__cloud_sql_target__generation_cadence list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : targets__cloud_sql_target) -> ()

let yojson_of_targets__cloud_sql_target =
  (function
   | {
       conditions = v_conditions;
       disabled = v_disabled;
       filter = v_filter;
       generation_cadence = v_generation_cadence;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_generation_cadence then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_targets__cloud_sql_target__generation_cadence)
               v_generation_cadence
           in
           let bnd = "generation_cadence", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_filter then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_targets__cloud_sql_target__filter)
               v_filter
           in
           let bnd = "filter", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_disabled then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_targets__cloud_sql_target__disabled)
               v_disabled
           in
           let bnd = "disabled", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_conditions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_targets__cloud_sql_target__conditions)
               v_conditions
           in
           let bnd = "conditions", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : targets__cloud_sql_target -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_targets__cloud_sql_target

[@@@deriving.end]

type targets__secrets_target = unit [@@deriving_inline yojson_of]

let _ = fun (_ : targets__secrets_target) -> ()

let yojson_of_targets__secrets_target =
  (yojson_of_unit
    : targets__secrets_target -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_targets__secrets_target

[@@@deriving.end]

type targets = {
  big_query_target : targets__big_query_target list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cloud_sql_target : targets__cloud_sql_target list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  secrets_target : targets__secrets_target list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : targets) -> ()

let yojson_of_targets =
  (function
   | {
       big_query_target = v_big_query_target;
       cloud_sql_target = v_cloud_sql_target;
       secrets_target = v_secrets_target;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_secrets_target then bnds
         else
           let arg =
             (yojson_of_list yojson_of_targets__secrets_target)
               v_secrets_target
           in
           let bnd = "secrets_target", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cloud_sql_target then bnds
         else
           let arg =
             (yojson_of_list yojson_of_targets__cloud_sql_target)
               v_cloud_sql_target
           in
           let bnd = "cloud_sql_target", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_big_query_target then bnds
         else
           let arg =
             (yojson_of_list yojson_of_targets__big_query_target)
               v_big_query_target
           in
           let bnd = "big_query_target", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : targets -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_targets

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

type errors__details = {
  code : float prop;
  details : (string * string prop) list list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  message : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : errors__details) -> ()

let yojson_of_errors__details =
  (function
   | { code = v_code; details = v_details; message = v_message } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_message in
         ("message", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_details then bnds
         else
           let arg =
             (yojson_of_list
                (yojson_of_list (function v0, v1 ->
                     let v0 = yojson_of_string v0
                     and v1 = yojson_of_prop yojson_of_string v1 in
                     `List [ v0; v1 ])))
               v_details
           in
           let bnd = "details", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_code in
         ("code", arg) :: bnds
       in
       `Assoc bnds
    : errors__details -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_errors__details

[@@@deriving.end]

type errors = {
  details : errors__details list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timestamp : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : errors) -> ()

let yojson_of_errors =
  (function
   | { details = v_details; timestamp = v_timestamp } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_timestamp in
         ("timestamp", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_details then bnds
         else
           let arg =
             (yojson_of_list yojson_of_errors__details) v_details
           in
           let bnd = "details", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : errors -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_errors

[@@@deriving.end]

type google_data_loss_prevention_discovery_config = {
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  inspect_templates : string prop list option; [@option]
  location : string prop;
  parent : string prop;
  status : string prop option; [@option]
  actions : actions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  org_config : org_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  targets : targets list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_data_loss_prevention_discovery_config) -> ()

let yojson_of_google_data_loss_prevention_discovery_config =
  (function
   | {
       display_name = v_display_name;
       id = v_id;
       inspect_templates = v_inspect_templates;
       location = v_location;
       parent = v_parent;
       status = v_status;
       actions = v_actions;
       org_config = v_org_config;
       targets = v_targets;
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
         if Stdlib.( = ) [] v_targets then bnds
         else
           let arg = (yojson_of_list yojson_of_targets) v_targets in
           let bnd = "targets", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_org_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_org_config) v_org_config
           in
           let bnd = "org_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_actions then bnds
         else
           let arg = (yojson_of_list yojson_of_actions) v_actions in
           let bnd = "actions", arg in
           bnd :: bnds
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_parent in
         ("parent", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_inspect_templates with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "inspect_templates", arg in
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
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_data_loss_prevention_discovery_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_data_loss_prevention_discovery_config

[@@@deriving.end]

let actions__export_data__profile_table ?dataset_id ?project_id
    ?table_id () : actions__export_data__profile_table =
  { dataset_id; project_id; table_id }

let actions__export_data ?(profile_table = []) () :
    actions__export_data =
  { profile_table }

let actions__pub_sub_notification__pubsub_condition__expressions__conditions
    ?minimum_risk_score ?minimum_sensitivity_score () :
    actions__pub_sub_notification__pubsub_condition__expressions__conditions
    =
  { minimum_risk_score; minimum_sensitivity_score }

let actions__pub_sub_notification__pubsub_condition__expressions
    ?logical_operator ?(conditions = []) () :
    actions__pub_sub_notification__pubsub_condition__expressions =
  { logical_operator; conditions }

let actions__pub_sub_notification__pubsub_condition
    ?(expressions = []) () :
    actions__pub_sub_notification__pubsub_condition =
  { expressions }

let actions__pub_sub_notification ?detail_of_message ?event ?topic
    ?(pubsub_condition = []) () : actions__pub_sub_notification =
  { detail_of_message; event; topic; pubsub_condition }

let actions ?(export_data = []) ?(pub_sub_notification = []) () :
    actions =
  { export_data; pub_sub_notification }

let org_config__location ?folder_id ?organization_id () :
    org_config__location =
  { folder_id; organization_id }

let org_config ?project_id ?(location = []) () : org_config =
  { project_id; location }

let targets__big_query_target__cadence__schema_modified_cadence
    ?frequency ?types () :
    targets__big_query_target__cadence__schema_modified_cadence =
  { frequency; types }

let targets__big_query_target__cadence__table_modified_cadence
    ?frequency ?types () :
    targets__big_query_target__cadence__table_modified_cadence =
  { frequency; types }

let targets__big_query_target__cadence
    ?(schema_modified_cadence = []) ?(table_modified_cadence = []) ()
    : targets__big_query_target__cadence =
  { schema_modified_cadence; table_modified_cadence }

let targets__big_query_target__conditions__or_conditions ?min_age
    ?min_row_count () :
    targets__big_query_target__conditions__or_conditions =
  { min_age; min_row_count }

let targets__big_query_target__conditions__types ?types () :
    targets__big_query_target__conditions__types =
  { types }

let targets__big_query_target__conditions ?created_after
    ?type_collection ?(or_conditions = []) ?(types = []) () :
    targets__big_query_target__conditions =
  { created_after; type_collection; or_conditions; types }

let targets__big_query_target__disabled () = ()
let targets__big_query_target__filter__other_tables () = ()

let targets__big_query_target__filter__table_reference ~dataset_id
    ~table_id () : targets__big_query_target__filter__table_reference
    =
  { dataset_id; table_id }

let targets__big_query_target__filter__tables__include_regexes__patterns
    ?dataset_id_regex ?project_id_regex ?table_id_regex () :
    targets__big_query_target__filter__tables__include_regexes__patterns
    =
  { dataset_id_regex; project_id_regex; table_id_regex }

let targets__big_query_target__filter__tables__include_regexes
    ?(patterns = []) () :
    targets__big_query_target__filter__tables__include_regexes =
  { patterns }

let targets__big_query_target__filter__tables ?(include_regexes = [])
    () : targets__big_query_target__filter__tables =
  { include_regexes }

let targets__big_query_target__filter ?(other_tables = [])
    ?(table_reference = []) ?(tables = []) () :
    targets__big_query_target__filter =
  { other_tables; table_reference; tables }

let targets__big_query_target ?(cadence = []) ?(conditions = [])
    ?(disabled = []) ?(filter = []) () : targets__big_query_target =
  { cadence; conditions; disabled; filter }

let targets__cloud_sql_target__conditions ?database_engines ?types ()
    : targets__cloud_sql_target__conditions =
  { database_engines; types }

let targets__cloud_sql_target__disabled () = ()

let targets__cloud_sql_target__filter__collection__include_regexes__patterns
    ?database_regex ?database_resource_name_regex ?instance_regex
    ?project_id_regex () :
    targets__cloud_sql_target__filter__collection__include_regexes__patterns
    =
  {
    database_regex;
    database_resource_name_regex;
    instance_regex;
    project_id_regex;
  }

let targets__cloud_sql_target__filter__collection__include_regexes
    ?(patterns = []) () :
    targets__cloud_sql_target__filter__collection__include_regexes =
  { patterns }

let targets__cloud_sql_target__filter__collection
    ?(include_regexes = []) () :
    targets__cloud_sql_target__filter__collection =
  { include_regexes }

let targets__cloud_sql_target__filter__database_resource_reference
    ~database ~database_resource ~instance ~project_id () :
    targets__cloud_sql_target__filter__database_resource_reference =
  { database; database_resource; instance; project_id }

let targets__cloud_sql_target__filter__others () = ()

let targets__cloud_sql_target__filter ?(collection = [])
    ?(database_resource_reference = []) ?(others = []) () :
    targets__cloud_sql_target__filter =
  { collection; database_resource_reference; others }

let targets__cloud_sql_target__generation_cadence__schema_modified_cadence
    ?frequency ?types () :
    targets__cloud_sql_target__generation_cadence__schema_modified_cadence
    =
  { frequency; types }

let targets__cloud_sql_target__generation_cadence ?refresh_frequency
    ?(schema_modified_cadence = []) () :
    targets__cloud_sql_target__generation_cadence =
  { refresh_frequency; schema_modified_cadence }

let targets__cloud_sql_target ?(conditions = []) ?(disabled = [])
    ?(generation_cadence = []) ~filter () : targets__cloud_sql_target
    =
  { conditions; disabled; filter; generation_cadence }

let targets__secrets_target () = ()

let targets ?(big_query_target = []) ?(cloud_sql_target = [])
    ?(secrets_target = []) () : targets =
  { big_query_target; cloud_sql_target; secrets_target }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_data_loss_prevention_discovery_config ?display_name ?id
    ?inspect_templates ?status ?(actions = []) ?(org_config = [])
    ?(targets = []) ?timeouts ~location ~parent () :
    google_data_loss_prevention_discovery_config =
  {
    display_name;
    id;
    inspect_templates;
    location;
    parent;
    status;
    actions;
    org_config;
    targets;
    timeouts;
  }

type t = {
  tf_name : string;
  create_time : string prop;
  display_name : string prop;
  errors : errors list prop;
  id : string prop;
  inspect_templates : string list prop;
  last_run_time : string prop;
  location : string prop;
  name : string prop;
  parent : string prop;
  status : string prop;
  update_time : string prop;
}

let make ?display_name ?id ?inspect_templates ?status ?(actions = [])
    ?(org_config = []) ?(targets = []) ?timeouts ~location ~parent
    __id =
  let __type = "google_data_loss_prevention_discovery_config" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       display_name = Prop.computed __type __id "display_name";
       errors = Prop.computed __type __id "errors";
       id = Prop.computed __type __id "id";
       inspect_templates =
         Prop.computed __type __id "inspect_templates";
       last_run_time = Prop.computed __type __id "last_run_time";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
       status = Prop.computed __type __id "status";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_data_loss_prevention_discovery_config
        (google_data_loss_prevention_discovery_config ?display_name
           ?id ?inspect_templates ?status ~actions ~org_config
           ~targets ?timeouts ~location ~parent ());
    attrs = __attrs;
  }

let register ?tf_module ?display_name ?id ?inspect_templates ?status
    ?(actions = []) ?(org_config = []) ?(targets = []) ?timeouts
    ~location ~parent __id =
  let (r : _ Tf_core.resource) =
    make ?display_name ?id ?inspect_templates ?status ~actions
      ~org_config ~targets ?timeouts ~location ~parent __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
