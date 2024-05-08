(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type inspect_job__actions__deidentify__transformation_config = {
  deidentify_template : string prop option; [@option]
  image_redact_template : string prop option; [@option]
  structured_deidentify_template : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : inspect_job__actions__deidentify__transformation_config) ->
  ()

let yojson_of_inspect_job__actions__deidentify__transformation_config
    =
  (function
   | {
       deidentify_template = v_deidentify_template;
       image_redact_template = v_image_redact_template;
       structured_deidentify_template =
         v_structured_deidentify_template;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_structured_deidentify_template with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "structured_deidentify_template", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image_redact_template with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_redact_template", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deidentify_template with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "deidentify_template", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : inspect_job__actions__deidentify__transformation_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_job__actions__deidentify__transformation_config

[@@@deriving.end]

type inspect_job__actions__deidentify__transformation_details_storage_config__table = {
  dataset_id : string prop;
  project_id : string prop;
  table_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_job__actions__deidentify__transformation_details_storage_config__table) ->
  ()

let yojson_of_inspect_job__actions__deidentify__transformation_details_storage_config__table
    =
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
         let arg = yojson_of_prop yojson_of_string v_project_id in
         ("project_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dataset_id in
         ("dataset_id", arg) :: bnds
       in
       `Assoc bnds
    : inspect_job__actions__deidentify__transformation_details_storage_config__table ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_job__actions__deidentify__transformation_details_storage_config__table

[@@@deriving.end]

type inspect_job__actions__deidentify__transformation_details_storage_config = {
  table :
    inspect_job__actions__deidentify__transformation_details_storage_config__table
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_job__actions__deidentify__transformation_details_storage_config) ->
  ()

let yojson_of_inspect_job__actions__deidentify__transformation_details_storage_config
    =
  (function
   | { table = v_table } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_table then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__actions__deidentify__transformation_details_storage_config__table)
               v_table
           in
           let bnd = "table", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : inspect_job__actions__deidentify__transformation_details_storage_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_job__actions__deidentify__transformation_details_storage_config

[@@@deriving.end]

type inspect_job__actions__deidentify = {
  cloud_storage_output : string prop;
  file_types_to_transform : string prop list option; [@option]
  transformation_config :
    inspect_job__actions__deidentify__transformation_config list;
      [@default []] [@yojson_drop_default ( = )]
  transformation_details_storage_config :
    inspect_job__actions__deidentify__transformation_details_storage_config
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : inspect_job__actions__deidentify) -> ()

let yojson_of_inspect_job__actions__deidentify =
  (function
   | {
       cloud_storage_output = v_cloud_storage_output;
       file_types_to_transform = v_file_types_to_transform;
       transformation_config = v_transformation_config;
       transformation_details_storage_config =
         v_transformation_details_storage_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_transformation_details_storage_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__actions__deidentify__transformation_details_storage_config)
               v_transformation_details_storage_config
           in
           let bnd = "transformation_details_storage_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_transformation_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__actions__deidentify__transformation_config)
               v_transformation_config
           in
           let bnd = "transformation_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_file_types_to_transform with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "file_types_to_transform", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cloud_storage_output
         in
         ("cloud_storage_output", arg) :: bnds
       in
       `Assoc bnds
    : inspect_job__actions__deidentify ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inspect_job__actions__deidentify

[@@@deriving.end]

type inspect_job__actions__job_notification_emails = unit
[@@deriving_inline yojson_of]

let _ = fun (_ : inspect_job__actions__job_notification_emails) -> ()

let yojson_of_inspect_job__actions__job_notification_emails =
  (yojson_of_unit
    : inspect_job__actions__job_notification_emails ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inspect_job__actions__job_notification_emails

[@@@deriving.end]

type inspect_job__actions__pub_sub = { topic : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : inspect_job__actions__pub_sub) -> ()

let yojson_of_inspect_job__actions__pub_sub =
  (function
   | { topic = v_topic } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_topic in
         ("topic", arg) :: bnds
       in
       `Assoc bnds
    : inspect_job__actions__pub_sub ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inspect_job__actions__pub_sub

[@@@deriving.end]

type inspect_job__actions__publish_findings_to_cloud_data_catalog =
  unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_job__actions__publish_findings_to_cloud_data_catalog) ->
  ()

let yojson_of_inspect_job__actions__publish_findings_to_cloud_data_catalog
    =
  (yojson_of_unit
    : inspect_job__actions__publish_findings_to_cloud_data_catalog ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_job__actions__publish_findings_to_cloud_data_catalog

[@@@deriving.end]

type inspect_job__actions__publish_summary_to_cscc = unit
[@@deriving_inline yojson_of]

let _ = fun (_ : inspect_job__actions__publish_summary_to_cscc) -> ()

let yojson_of_inspect_job__actions__publish_summary_to_cscc =
  (yojson_of_unit
    : inspect_job__actions__publish_summary_to_cscc ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inspect_job__actions__publish_summary_to_cscc

[@@@deriving.end]

type inspect_job__actions__publish_to_stackdriver = unit
[@@deriving_inline yojson_of]

let _ = fun (_ : inspect_job__actions__publish_to_stackdriver) -> ()

let yojson_of_inspect_job__actions__publish_to_stackdriver =
  (yojson_of_unit
    : inspect_job__actions__publish_to_stackdriver ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inspect_job__actions__publish_to_stackdriver

[@@@deriving.end]

type inspect_job__actions__save_findings__output_config__table = {
  dataset_id : string prop;
  project_id : string prop;
  table_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : inspect_job__actions__save_findings__output_config__table) ->
  ()

let yojson_of_inspect_job__actions__save_findings__output_config__table
    =
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
         let arg = yojson_of_prop yojson_of_string v_project_id in
         ("project_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dataset_id in
         ("dataset_id", arg) :: bnds
       in
       `Assoc bnds
    : inspect_job__actions__save_findings__output_config__table ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_job__actions__save_findings__output_config__table

[@@@deriving.end]

type inspect_job__actions__save_findings__output_config = {
  output_schema : string prop option; [@option]
  table :
    inspect_job__actions__save_findings__output_config__table list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : inspect_job__actions__save_findings__output_config) -> ()

let yojson_of_inspect_job__actions__save_findings__output_config =
  (function
   | { output_schema = v_output_schema; table = v_table } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_table then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__actions__save_findings__output_config__table)
               v_table
           in
           let bnd = "table", arg in
           bnd :: bnds
       in
       let bnds =
         match v_output_schema with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "output_schema", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : inspect_job__actions__save_findings__output_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inspect_job__actions__save_findings__output_config

[@@@deriving.end]

type inspect_job__actions__save_findings = {
  output_config :
    inspect_job__actions__save_findings__output_config list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : inspect_job__actions__save_findings) -> ()

let yojson_of_inspect_job__actions__save_findings =
  (function
   | { output_config = v_output_config } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_output_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__actions__save_findings__output_config)
               v_output_config
           in
           let bnd = "output_config", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : inspect_job__actions__save_findings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inspect_job__actions__save_findings

[@@@deriving.end]

type inspect_job__actions = {
  deidentify : inspect_job__actions__deidentify list;
      [@default []] [@yojson_drop_default ( = )]
  job_notification_emails :
    inspect_job__actions__job_notification_emails list;
      [@default []] [@yojson_drop_default ( = )]
  pub_sub : inspect_job__actions__pub_sub list;
      [@default []] [@yojson_drop_default ( = )]
  publish_findings_to_cloud_data_catalog :
    inspect_job__actions__publish_findings_to_cloud_data_catalog list;
      [@default []] [@yojson_drop_default ( = )]
  publish_summary_to_cscc :
    inspect_job__actions__publish_summary_to_cscc list;
      [@default []] [@yojson_drop_default ( = )]
  publish_to_stackdriver :
    inspect_job__actions__publish_to_stackdriver list;
      [@default []] [@yojson_drop_default ( = )]
  save_findings : inspect_job__actions__save_findings list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : inspect_job__actions) -> ()

let yojson_of_inspect_job__actions =
  (function
   | {
       deidentify = v_deidentify;
       job_notification_emails = v_job_notification_emails;
       pub_sub = v_pub_sub;
       publish_findings_to_cloud_data_catalog =
         v_publish_findings_to_cloud_data_catalog;
       publish_summary_to_cscc = v_publish_summary_to_cscc;
       publish_to_stackdriver = v_publish_to_stackdriver;
       save_findings = v_save_findings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_save_findings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__actions__save_findings)
               v_save_findings
           in
           let bnd = "save_findings", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_publish_to_stackdriver then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__actions__publish_to_stackdriver)
               v_publish_to_stackdriver
           in
           let bnd = "publish_to_stackdriver", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_publish_summary_to_cscc then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__actions__publish_summary_to_cscc)
               v_publish_summary_to_cscc
           in
           let bnd = "publish_summary_to_cscc", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_publish_findings_to_cloud_data_catalog then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__actions__publish_findings_to_cloud_data_catalog)
               v_publish_findings_to_cloud_data_catalog
           in
           let bnd = "publish_findings_to_cloud_data_catalog", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_pub_sub then bnds
         else
           let arg =
             (yojson_of_list yojson_of_inspect_job__actions__pub_sub)
               v_pub_sub
           in
           let bnd = "pub_sub", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_job_notification_emails then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__actions__job_notification_emails)
               v_job_notification_emails
           in
           let bnd = "job_notification_emails", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_deidentify then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__actions__deidentify)
               v_deidentify
           in
           let bnd = "deidentify", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : inspect_job__actions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inspect_job__actions

[@@@deriving.end]

type inspect_job__inspect_config__custom_info_types__dictionary__cloud_storage_path = {
  path : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_job__inspect_config__custom_info_types__dictionary__cloud_storage_path) ->
  ()

let yojson_of_inspect_job__inspect_config__custom_info_types__dictionary__cloud_storage_path
    =
  (function
   | { path = v_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       `Assoc bnds
    : inspect_job__inspect_config__custom_info_types__dictionary__cloud_storage_path ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_job__inspect_config__custom_info_types__dictionary__cloud_storage_path

[@@@deriving.end]

type inspect_job__inspect_config__custom_info_types__dictionary__word_list = {
  words : string prop list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_job__inspect_config__custom_info_types__dictionary__word_list) ->
  ()

let yojson_of_inspect_job__inspect_config__custom_info_types__dictionary__word_list
    =
  (function
   | { words = v_words } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_words then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_words
           in
           let bnd = "words", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : inspect_job__inspect_config__custom_info_types__dictionary__word_list ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_job__inspect_config__custom_info_types__dictionary__word_list

[@@@deriving.end]

type inspect_job__inspect_config__custom_info_types__dictionary = {
  cloud_storage_path :
    inspect_job__inspect_config__custom_info_types__dictionary__cloud_storage_path
    list;
      [@default []] [@yojson_drop_default ( = )]
  word_list :
    inspect_job__inspect_config__custom_info_types__dictionary__word_list
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : inspect_job__inspect_config__custom_info_types__dictionary) ->
  ()

let yojson_of_inspect_job__inspect_config__custom_info_types__dictionary
    =
  (function
   | {
       cloud_storage_path = v_cloud_storage_path;
       word_list = v_word_list;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_word_list then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__inspect_config__custom_info_types__dictionary__word_list)
               v_word_list
           in
           let bnd = "word_list", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_cloud_storage_path then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__inspect_config__custom_info_types__dictionary__cloud_storage_path)
               v_cloud_storage_path
           in
           let bnd = "cloud_storage_path", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : inspect_job__inspect_config__custom_info_types__dictionary ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_job__inspect_config__custom_info_types__dictionary

[@@@deriving.end]

type inspect_job__inspect_config__custom_info_types__info_type__sensitivity_score = {
  score : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_job__inspect_config__custom_info_types__info_type__sensitivity_score) ->
  ()

let yojson_of_inspect_job__inspect_config__custom_info_types__info_type__sensitivity_score
    =
  (function
   | { score = v_score } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_score in
         ("score", arg) :: bnds
       in
       `Assoc bnds
    : inspect_job__inspect_config__custom_info_types__info_type__sensitivity_score ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_job__inspect_config__custom_info_types__info_type__sensitivity_score

[@@@deriving.end]

type inspect_job__inspect_config__custom_info_types__info_type = {
  name : string prop;
  version : string prop option; [@option]
  sensitivity_score :
    inspect_job__inspect_config__custom_info_types__info_type__sensitivity_score
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : inspect_job__inspect_config__custom_info_types__info_type) ->
  ()

let yojson_of_inspect_job__inspect_config__custom_info_types__info_type
    =
  (function
   | {
       name = v_name;
       version = v_version;
       sensitivity_score = v_sensitivity_score;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_sensitivity_score then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__inspect_config__custom_info_types__info_type__sensitivity_score)
               v_sensitivity_score
           in
           let bnd = "sensitivity_score", arg in
           bnd :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : inspect_job__inspect_config__custom_info_types__info_type ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_job__inspect_config__custom_info_types__info_type

[@@@deriving.end]

type inspect_job__inspect_config__custom_info_types__regex = {
  group_indexes : float prop list option; [@option]
  pattern : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : inspect_job__inspect_config__custom_info_types__regex) ->
  ()

let yojson_of_inspect_job__inspect_config__custom_info_types__regex =
  (function
   | { group_indexes = v_group_indexes; pattern = v_pattern } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pattern in
         ("pattern", arg) :: bnds
       in
       let bnds =
         match v_group_indexes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "group_indexes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : inspect_job__inspect_config__custom_info_types__regex ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_job__inspect_config__custom_info_types__regex

[@@@deriving.end]

type inspect_job__inspect_config__custom_info_types__sensitivity_score = {
  score : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_job__inspect_config__custom_info_types__sensitivity_score) ->
  ()

let yojson_of_inspect_job__inspect_config__custom_info_types__sensitivity_score
    =
  (function
   | { score = v_score } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_score in
         ("score", arg) :: bnds
       in
       `Assoc bnds
    : inspect_job__inspect_config__custom_info_types__sensitivity_score ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_job__inspect_config__custom_info_types__sensitivity_score

[@@@deriving.end]

type inspect_job__inspect_config__custom_info_types__stored_type = {
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_job__inspect_config__custom_info_types__stored_type) ->
  ()

let yojson_of_inspect_job__inspect_config__custom_info_types__stored_type
    =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : inspect_job__inspect_config__custom_info_types__stored_type ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_job__inspect_config__custom_info_types__stored_type

[@@@deriving.end]

type inspect_job__inspect_config__custom_info_types__surrogate_type =
  unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_job__inspect_config__custom_info_types__surrogate_type) ->
  ()

let yojson_of_inspect_job__inspect_config__custom_info_types__surrogate_type
    =
  (yojson_of_unit
    : inspect_job__inspect_config__custom_info_types__surrogate_type ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_job__inspect_config__custom_info_types__surrogate_type

[@@@deriving.end]

type inspect_job__inspect_config__custom_info_types = {
  exclusion_type : string prop option; [@option]
  likelihood : string prop option; [@option]
  dictionary :
    inspect_job__inspect_config__custom_info_types__dictionary list;
      [@default []] [@yojson_drop_default ( = )]
  info_type :
    inspect_job__inspect_config__custom_info_types__info_type list;
      [@default []] [@yojson_drop_default ( = )]
  regex : inspect_job__inspect_config__custom_info_types__regex list;
      [@default []] [@yojson_drop_default ( = )]
  sensitivity_score :
    inspect_job__inspect_config__custom_info_types__sensitivity_score
    list;
      [@default []] [@yojson_drop_default ( = )]
  stored_type :
    inspect_job__inspect_config__custom_info_types__stored_type list;
      [@default []] [@yojson_drop_default ( = )]
  surrogate_type :
    inspect_job__inspect_config__custom_info_types__surrogate_type
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : inspect_job__inspect_config__custom_info_types) -> ()

let yojson_of_inspect_job__inspect_config__custom_info_types =
  (function
   | {
       exclusion_type = v_exclusion_type;
       likelihood = v_likelihood;
       dictionary = v_dictionary;
       info_type = v_info_type;
       regex = v_regex;
       sensitivity_score = v_sensitivity_score;
       stored_type = v_stored_type;
       surrogate_type = v_surrogate_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_surrogate_type then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__inspect_config__custom_info_types__surrogate_type)
               v_surrogate_type
           in
           let bnd = "surrogate_type", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_stored_type then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__inspect_config__custom_info_types__stored_type)
               v_stored_type
           in
           let bnd = "stored_type", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_sensitivity_score then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__inspect_config__custom_info_types__sensitivity_score)
               v_sensitivity_score
           in
           let bnd = "sensitivity_score", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_regex then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__inspect_config__custom_info_types__regex)
               v_regex
           in
           let bnd = "regex", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_info_type then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__inspect_config__custom_info_types__info_type)
               v_info_type
           in
           let bnd = "info_type", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_dictionary then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__inspect_config__custom_info_types__dictionary)
               v_dictionary
           in
           let bnd = "dictionary", arg in
           bnd :: bnds
       in
       let bnds =
         match v_likelihood with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "likelihood", arg in
             bnd :: bnds
       in
       let bnds =
         match v_exclusion_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "exclusion_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : inspect_job__inspect_config__custom_info_types ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inspect_job__inspect_config__custom_info_types

[@@@deriving.end]

type inspect_job__inspect_config__info_types__sensitivity_score = {
  score : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : inspect_job__inspect_config__info_types__sensitivity_score) ->
  ()

let yojson_of_inspect_job__inspect_config__info_types__sensitivity_score
    =
  (function
   | { score = v_score } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_score in
         ("score", arg) :: bnds
       in
       `Assoc bnds
    : inspect_job__inspect_config__info_types__sensitivity_score ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_job__inspect_config__info_types__sensitivity_score

[@@@deriving.end]

type inspect_job__inspect_config__info_types = {
  name : string prop;
  version : string prop option; [@option]
  sensitivity_score :
    inspect_job__inspect_config__info_types__sensitivity_score list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : inspect_job__inspect_config__info_types) -> ()

let yojson_of_inspect_job__inspect_config__info_types =
  (function
   | {
       name = v_name;
       version = v_version;
       sensitivity_score = v_sensitivity_score;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_sensitivity_score then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__inspect_config__info_types__sensitivity_score)
               v_sensitivity_score
           in
           let bnd = "sensitivity_score", arg in
           bnd :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : inspect_job__inspect_config__info_types ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inspect_job__inspect_config__info_types

[@@@deriving.end]

type inspect_job__inspect_config__limits__max_findings_per_info_type__info_type__sensitivity_score = {
  score : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_job__inspect_config__limits__max_findings_per_info_type__info_type__sensitivity_score) ->
  ()

let yojson_of_inspect_job__inspect_config__limits__max_findings_per_info_type__info_type__sensitivity_score
    =
  (function
   | { score = v_score } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_score in
         ("score", arg) :: bnds
       in
       `Assoc bnds
    : inspect_job__inspect_config__limits__max_findings_per_info_type__info_type__sensitivity_score ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_job__inspect_config__limits__max_findings_per_info_type__info_type__sensitivity_score

[@@@deriving.end]

type inspect_job__inspect_config__limits__max_findings_per_info_type__info_type = {
  name : string prop;
  version : string prop option; [@option]
  sensitivity_score :
    inspect_job__inspect_config__limits__max_findings_per_info_type__info_type__sensitivity_score
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_job__inspect_config__limits__max_findings_per_info_type__info_type) ->
  ()

let yojson_of_inspect_job__inspect_config__limits__max_findings_per_info_type__info_type
    =
  (function
   | {
       name = v_name;
       version = v_version;
       sensitivity_score = v_sensitivity_score;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_sensitivity_score then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__inspect_config__limits__max_findings_per_info_type__info_type__sensitivity_score)
               v_sensitivity_score
           in
           let bnd = "sensitivity_score", arg in
           bnd :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : inspect_job__inspect_config__limits__max_findings_per_info_type__info_type ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_job__inspect_config__limits__max_findings_per_info_type__info_type

[@@@deriving.end]

type inspect_job__inspect_config__limits__max_findings_per_info_type = {
  max_findings : float prop option; [@option]
  info_type :
    inspect_job__inspect_config__limits__max_findings_per_info_type__info_type
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_job__inspect_config__limits__max_findings_per_info_type) ->
  ()

let yojson_of_inspect_job__inspect_config__limits__max_findings_per_info_type
    =
  (function
   | { max_findings = v_max_findings; info_type = v_info_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_info_type then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__inspect_config__limits__max_findings_per_info_type__info_type)
               v_info_type
           in
           let bnd = "info_type", arg in
           bnd :: bnds
       in
       let bnds =
         match v_max_findings with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_findings", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : inspect_job__inspect_config__limits__max_findings_per_info_type ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_job__inspect_config__limits__max_findings_per_info_type

[@@@deriving.end]

type inspect_job__inspect_config__limits = {
  max_findings_per_item : float prop option; [@option]
  max_findings_per_request : float prop option; [@option]
  max_findings_per_info_type :
    inspect_job__inspect_config__limits__max_findings_per_info_type
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : inspect_job__inspect_config__limits) -> ()

let yojson_of_inspect_job__inspect_config__limits =
  (function
   | {
       max_findings_per_item = v_max_findings_per_item;
       max_findings_per_request = v_max_findings_per_request;
       max_findings_per_info_type = v_max_findings_per_info_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_max_findings_per_info_type then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__inspect_config__limits__max_findings_per_info_type)
               v_max_findings_per_info_type
           in
           let bnd = "max_findings_per_info_type", arg in
           bnd :: bnds
       in
       let bnds =
         match v_max_findings_per_request with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_findings_per_request", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_findings_per_item with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_findings_per_item", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : inspect_job__inspect_config__limits ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inspect_job__inspect_config__limits

[@@@deriving.end]

type inspect_job__inspect_config__rule_set__info_types__sensitivity_score = {
  score : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_job__inspect_config__rule_set__info_types__sensitivity_score) ->
  ()

let yojson_of_inspect_job__inspect_config__rule_set__info_types__sensitivity_score
    =
  (function
   | { score = v_score } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_score in
         ("score", arg) :: bnds
       in
       `Assoc bnds
    : inspect_job__inspect_config__rule_set__info_types__sensitivity_score ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_job__inspect_config__rule_set__info_types__sensitivity_score

[@@@deriving.end]

type inspect_job__inspect_config__rule_set__info_types = {
  name : string prop;
  version : string prop option; [@option]
  sensitivity_score :
    inspect_job__inspect_config__rule_set__info_types__sensitivity_score
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : inspect_job__inspect_config__rule_set__info_types) -> ()

let yojson_of_inspect_job__inspect_config__rule_set__info_types =
  (function
   | {
       name = v_name;
       version = v_version;
       sensitivity_score = v_sensitivity_score;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_sensitivity_score then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__inspect_config__rule_set__info_types__sensitivity_score)
               v_sensitivity_score
           in
           let bnd = "sensitivity_score", arg in
           bnd :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : inspect_job__inspect_config__rule_set__info_types ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inspect_job__inspect_config__rule_set__info_types

[@@@deriving.end]

type inspect_job__inspect_config__rule_set__rules__exclusion_rule__dictionary__cloud_storage_path = {
  path : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_job__inspect_config__rule_set__rules__exclusion_rule__dictionary__cloud_storage_path) ->
  ()

let yojson_of_inspect_job__inspect_config__rule_set__rules__exclusion_rule__dictionary__cloud_storage_path
    =
  (function
   | { path = v_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       `Assoc bnds
    : inspect_job__inspect_config__rule_set__rules__exclusion_rule__dictionary__cloud_storage_path ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_job__inspect_config__rule_set__rules__exclusion_rule__dictionary__cloud_storage_path

[@@@deriving.end]

type inspect_job__inspect_config__rule_set__rules__exclusion_rule__dictionary__word_list = {
  words : string prop list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_job__inspect_config__rule_set__rules__exclusion_rule__dictionary__word_list) ->
  ()

let yojson_of_inspect_job__inspect_config__rule_set__rules__exclusion_rule__dictionary__word_list
    =
  (function
   | { words = v_words } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_words then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_words
           in
           let bnd = "words", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : inspect_job__inspect_config__rule_set__rules__exclusion_rule__dictionary__word_list ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_job__inspect_config__rule_set__rules__exclusion_rule__dictionary__word_list

[@@@deriving.end]

type inspect_job__inspect_config__rule_set__rules__exclusion_rule__dictionary = {
  cloud_storage_path :
    inspect_job__inspect_config__rule_set__rules__exclusion_rule__dictionary__cloud_storage_path
    list;
      [@default []] [@yojson_drop_default ( = )]
  word_list :
    inspect_job__inspect_config__rule_set__rules__exclusion_rule__dictionary__word_list
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_job__inspect_config__rule_set__rules__exclusion_rule__dictionary) ->
  ()

let yojson_of_inspect_job__inspect_config__rule_set__rules__exclusion_rule__dictionary
    =
  (function
   | {
       cloud_storage_path = v_cloud_storage_path;
       word_list = v_word_list;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_word_list then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__inspect_config__rule_set__rules__exclusion_rule__dictionary__word_list)
               v_word_list
           in
           let bnd = "word_list", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_cloud_storage_path then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__inspect_config__rule_set__rules__exclusion_rule__dictionary__cloud_storage_path)
               v_cloud_storage_path
           in
           let bnd = "cloud_storage_path", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : inspect_job__inspect_config__rule_set__rules__exclusion_rule__dictionary ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_job__inspect_config__rule_set__rules__exclusion_rule__dictionary

[@@@deriving.end]

type inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__hotword_regex = {
  group_indexes : float prop list option; [@option]
  pattern : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__hotword_regex) ->
  ()

let yojson_of_inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__hotword_regex
    =
  (function
   | { group_indexes = v_group_indexes; pattern = v_pattern } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_pattern with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pattern", arg in
             bnd :: bnds
       in
       let bnds =
         match v_group_indexes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "group_indexes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__hotword_regex ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__hotword_regex

[@@@deriving.end]

type inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__proximity = {
  window_after : float prop option; [@option]
  window_before : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__proximity) ->
  ()

let yojson_of_inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__proximity
    =
  (function
   | {
       window_after = v_window_after;
       window_before = v_window_before;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_window_before with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "window_before", arg in
             bnd :: bnds
       in
       let bnds =
         match v_window_after with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "window_after", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__proximity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__proximity

[@@@deriving.end]

type inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword = {
  hotword_regex :
    inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__hotword_regex
    list;
      [@default []] [@yojson_drop_default ( = )]
  proximity :
    inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__proximity
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword) ->
  ()

let yojson_of_inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword
    =
  (function
   | { hotword_regex = v_hotword_regex; proximity = v_proximity } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_proximity then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__proximity)
               v_proximity
           in
           let bnd = "proximity", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_hotword_regex then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__hotword_regex)
               v_hotword_regex
           in
           let bnd = "hotword_regex", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword

[@@@deriving.end]

type inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types__sensitivity_score = {
  score : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types__sensitivity_score) ->
  ()

let yojson_of_inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types__sensitivity_score
    =
  (function
   | { score = v_score } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_score in
         ("score", arg) :: bnds
       in
       `Assoc bnds
    : inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types__sensitivity_score ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types__sensitivity_score

[@@@deriving.end]

type inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types = {
  name : string prop;
  version : string prop option; [@option]
  sensitivity_score :
    inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types__sensitivity_score
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types) ->
  ()

let yojson_of_inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types
    =
  (function
   | {
       name = v_name;
       version = v_version;
       sensitivity_score = v_sensitivity_score;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_sensitivity_score then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types__sensitivity_score)
               v_sensitivity_score
           in
           let bnd = "sensitivity_score", arg in
           bnd :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types

[@@@deriving.end]

type inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types = {
  info_types :
    inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types) ->
  ()

let yojson_of_inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types
    =
  (function
   | { info_types = v_info_types } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_info_types then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types)
               v_info_types
           in
           let bnd = "info_types", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types

[@@@deriving.end]

type inspect_job__inspect_config__rule_set__rules__exclusion_rule__regex = {
  group_indexes : float prop list option; [@option]
  pattern : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_job__inspect_config__rule_set__rules__exclusion_rule__regex) ->
  ()

let yojson_of_inspect_job__inspect_config__rule_set__rules__exclusion_rule__regex
    =
  (function
   | { group_indexes = v_group_indexes; pattern = v_pattern } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pattern in
         ("pattern", arg) :: bnds
       in
       let bnds =
         match v_group_indexes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "group_indexes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : inspect_job__inspect_config__rule_set__rules__exclusion_rule__regex ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_job__inspect_config__rule_set__rules__exclusion_rule__regex

[@@@deriving.end]

type inspect_job__inspect_config__rule_set__rules__exclusion_rule = {
  matching_type : string prop;
  dictionary :
    inspect_job__inspect_config__rule_set__rules__exclusion_rule__dictionary
    list;
      [@default []] [@yojson_drop_default ( = )]
  exclude_by_hotword :
    inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword
    list;
      [@default []] [@yojson_drop_default ( = )]
  exclude_info_types :
    inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types
    list;
      [@default []] [@yojson_drop_default ( = )]
  regex :
    inspect_job__inspect_config__rule_set__rules__exclusion_rule__regex
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_job__inspect_config__rule_set__rules__exclusion_rule) ->
  ()

let yojson_of_inspect_job__inspect_config__rule_set__rules__exclusion_rule
    =
  (function
   | {
       matching_type = v_matching_type;
       dictionary = v_dictionary;
       exclude_by_hotword = v_exclude_by_hotword;
       exclude_info_types = v_exclude_info_types;
       regex = v_regex;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_regex then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__inspect_config__rule_set__rules__exclusion_rule__regex)
               v_regex
           in
           let bnd = "regex", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_exclude_info_types then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types)
               v_exclude_info_types
           in
           let bnd = "exclude_info_types", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_exclude_by_hotword then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword)
               v_exclude_by_hotword
           in
           let bnd = "exclude_by_hotword", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_dictionary then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__inspect_config__rule_set__rules__exclusion_rule__dictionary)
               v_dictionary
           in
           let bnd = "dictionary", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_matching_type in
         ("matching_type", arg) :: bnds
       in
       `Assoc bnds
    : inspect_job__inspect_config__rule_set__rules__exclusion_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_job__inspect_config__rule_set__rules__exclusion_rule

[@@@deriving.end]

type inspect_job__inspect_config__rule_set__rules__hotword_rule__hotword_regex = {
  group_indexes : float prop list option; [@option]
  pattern : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_job__inspect_config__rule_set__rules__hotword_rule__hotword_regex) ->
  ()

let yojson_of_inspect_job__inspect_config__rule_set__rules__hotword_rule__hotword_regex
    =
  (function
   | { group_indexes = v_group_indexes; pattern = v_pattern } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_pattern with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pattern", arg in
             bnd :: bnds
       in
       let bnds =
         match v_group_indexes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "group_indexes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : inspect_job__inspect_config__rule_set__rules__hotword_rule__hotword_regex ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_job__inspect_config__rule_set__rules__hotword_rule__hotword_regex

[@@@deriving.end]

type inspect_job__inspect_config__rule_set__rules__hotword_rule__likelihood_adjustment = {
  fixed_likelihood : string prop option; [@option]
  relative_likelihood : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_job__inspect_config__rule_set__rules__hotword_rule__likelihood_adjustment) ->
  ()

let yojson_of_inspect_job__inspect_config__rule_set__rules__hotword_rule__likelihood_adjustment
    =
  (function
   | {
       fixed_likelihood = v_fixed_likelihood;
       relative_likelihood = v_relative_likelihood;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_relative_likelihood with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "relative_likelihood", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fixed_likelihood with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fixed_likelihood", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : inspect_job__inspect_config__rule_set__rules__hotword_rule__likelihood_adjustment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_job__inspect_config__rule_set__rules__hotword_rule__likelihood_adjustment

[@@@deriving.end]

type inspect_job__inspect_config__rule_set__rules__hotword_rule__proximity = {
  window_after : float prop option; [@option]
  window_before : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_job__inspect_config__rule_set__rules__hotword_rule__proximity) ->
  ()

let yojson_of_inspect_job__inspect_config__rule_set__rules__hotword_rule__proximity
    =
  (function
   | {
       window_after = v_window_after;
       window_before = v_window_before;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_window_before with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "window_before", arg in
             bnd :: bnds
       in
       let bnds =
         match v_window_after with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "window_after", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : inspect_job__inspect_config__rule_set__rules__hotword_rule__proximity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_job__inspect_config__rule_set__rules__hotword_rule__proximity

[@@@deriving.end]

type inspect_job__inspect_config__rule_set__rules__hotword_rule = {
  hotword_regex :
    inspect_job__inspect_config__rule_set__rules__hotword_rule__hotword_regex
    list;
      [@default []] [@yojson_drop_default ( = )]
  likelihood_adjustment :
    inspect_job__inspect_config__rule_set__rules__hotword_rule__likelihood_adjustment
    list;
      [@default []] [@yojson_drop_default ( = )]
  proximity :
    inspect_job__inspect_config__rule_set__rules__hotword_rule__proximity
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : inspect_job__inspect_config__rule_set__rules__hotword_rule) ->
  ()

let yojson_of_inspect_job__inspect_config__rule_set__rules__hotword_rule
    =
  (function
   | {
       hotword_regex = v_hotword_regex;
       likelihood_adjustment = v_likelihood_adjustment;
       proximity = v_proximity;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_proximity then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__inspect_config__rule_set__rules__hotword_rule__proximity)
               v_proximity
           in
           let bnd = "proximity", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_likelihood_adjustment then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__inspect_config__rule_set__rules__hotword_rule__likelihood_adjustment)
               v_likelihood_adjustment
           in
           let bnd = "likelihood_adjustment", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_hotword_regex then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__inspect_config__rule_set__rules__hotword_rule__hotword_regex)
               v_hotword_regex
           in
           let bnd = "hotword_regex", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : inspect_job__inspect_config__rule_set__rules__hotword_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_job__inspect_config__rule_set__rules__hotword_rule

[@@@deriving.end]

type inspect_job__inspect_config__rule_set__rules = {
  exclusion_rule :
    inspect_job__inspect_config__rule_set__rules__exclusion_rule list;
      [@default []] [@yojson_drop_default ( = )]
  hotword_rule :
    inspect_job__inspect_config__rule_set__rules__hotword_rule list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : inspect_job__inspect_config__rule_set__rules) -> ()

let yojson_of_inspect_job__inspect_config__rule_set__rules =
  (function
   | {
       exclusion_rule = v_exclusion_rule;
       hotword_rule = v_hotword_rule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_hotword_rule then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__inspect_config__rule_set__rules__hotword_rule)
               v_hotword_rule
           in
           let bnd = "hotword_rule", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_exclusion_rule then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__inspect_config__rule_set__rules__exclusion_rule)
               v_exclusion_rule
           in
           let bnd = "exclusion_rule", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : inspect_job__inspect_config__rule_set__rules ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inspect_job__inspect_config__rule_set__rules

[@@@deriving.end]

type inspect_job__inspect_config__rule_set = {
  info_types :
    inspect_job__inspect_config__rule_set__info_types list;
      [@default []] [@yojson_drop_default ( = )]
  rules : inspect_job__inspect_config__rule_set__rules list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : inspect_job__inspect_config__rule_set) -> ()

let yojson_of_inspect_job__inspect_config__rule_set =
  (function
   | { info_types = v_info_types; rules = v_rules } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_rules then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__inspect_config__rule_set__rules)
               v_rules
           in
           let bnd = "rules", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_info_types then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__inspect_config__rule_set__info_types)
               v_info_types
           in
           let bnd = "info_types", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : inspect_job__inspect_config__rule_set ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inspect_job__inspect_config__rule_set

[@@@deriving.end]

type inspect_job__inspect_config = {
  exclude_info_types : bool prop option; [@option]
  include_quote : bool prop option; [@option]
  min_likelihood : string prop option; [@option]
  custom_info_types :
    inspect_job__inspect_config__custom_info_types list;
      [@default []] [@yojson_drop_default ( = )]
  info_types : inspect_job__inspect_config__info_types list;
      [@default []] [@yojson_drop_default ( = )]
  limits : inspect_job__inspect_config__limits list;
      [@default []] [@yojson_drop_default ( = )]
  rule_set : inspect_job__inspect_config__rule_set list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : inspect_job__inspect_config) -> ()

let yojson_of_inspect_job__inspect_config =
  (function
   | {
       exclude_info_types = v_exclude_info_types;
       include_quote = v_include_quote;
       min_likelihood = v_min_likelihood;
       custom_info_types = v_custom_info_types;
       info_types = v_info_types;
       limits = v_limits;
       rule_set = v_rule_set;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_rule_set then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__inspect_config__rule_set)
               v_rule_set
           in
           let bnd = "rule_set", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_limits then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__inspect_config__limits)
               v_limits
           in
           let bnd = "limits", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_info_types then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__inspect_config__info_types)
               v_info_types
           in
           let bnd = "info_types", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_custom_info_types then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__inspect_config__custom_info_types)
               v_custom_info_types
           in
           let bnd = "custom_info_types", arg in
           bnd :: bnds
       in
       let bnds =
         match v_min_likelihood with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "min_likelihood", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_quote with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_quote", arg in
             bnd :: bnds
       in
       let bnds =
         match v_exclude_info_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "exclude_info_types", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : inspect_job__inspect_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inspect_job__inspect_config

[@@@deriving.end]

type inspect_job__storage_config__big_query_options__excluded_fields = {
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_job__storage_config__big_query_options__excluded_fields) ->
  ()

let yojson_of_inspect_job__storage_config__big_query_options__excluded_fields
    =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : inspect_job__storage_config__big_query_options__excluded_fields ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_job__storage_config__big_query_options__excluded_fields

[@@@deriving.end]

type inspect_job__storage_config__big_query_options__identifying_fields = {
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_job__storage_config__big_query_options__identifying_fields) ->
  ()

let yojson_of_inspect_job__storage_config__big_query_options__identifying_fields
    =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : inspect_job__storage_config__big_query_options__identifying_fields ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_job__storage_config__big_query_options__identifying_fields

[@@@deriving.end]

type inspect_job__storage_config__big_query_options__included_fields = {
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_job__storage_config__big_query_options__included_fields) ->
  ()

let yojson_of_inspect_job__storage_config__big_query_options__included_fields
    =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : inspect_job__storage_config__big_query_options__included_fields ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_job__storage_config__big_query_options__included_fields

[@@@deriving.end]

type inspect_job__storage_config__big_query_options__table_reference = {
  dataset_id : string prop;
  project_id : string prop;
  table_id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_job__storage_config__big_query_options__table_reference) ->
  ()

let yojson_of_inspect_job__storage_config__big_query_options__table_reference
    =
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
         let arg = yojson_of_prop yojson_of_string v_table_id in
         ("table_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project_id in
         ("project_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dataset_id in
         ("dataset_id", arg) :: bnds
       in
       `Assoc bnds
    : inspect_job__storage_config__big_query_options__table_reference ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_job__storage_config__big_query_options__table_reference

[@@@deriving.end]

type inspect_job__storage_config__big_query_options = {
  rows_limit : float prop option; [@option]
  rows_limit_percent : float prop option; [@option]
  sample_method : string prop option; [@option]
  excluded_fields :
    inspect_job__storage_config__big_query_options__excluded_fields
    list;
      [@default []] [@yojson_drop_default ( = )]
  identifying_fields :
    inspect_job__storage_config__big_query_options__identifying_fields
    list;
      [@default []] [@yojson_drop_default ( = )]
  included_fields :
    inspect_job__storage_config__big_query_options__included_fields
    list;
      [@default []] [@yojson_drop_default ( = )]
  table_reference :
    inspect_job__storage_config__big_query_options__table_reference
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : inspect_job__storage_config__big_query_options) -> ()

let yojson_of_inspect_job__storage_config__big_query_options =
  (function
   | {
       rows_limit = v_rows_limit;
       rows_limit_percent = v_rows_limit_percent;
       sample_method = v_sample_method;
       excluded_fields = v_excluded_fields;
       identifying_fields = v_identifying_fields;
       included_fields = v_included_fields;
       table_reference = v_table_reference;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_table_reference then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__storage_config__big_query_options__table_reference)
               v_table_reference
           in
           let bnd = "table_reference", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_included_fields then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__storage_config__big_query_options__included_fields)
               v_included_fields
           in
           let bnd = "included_fields", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_identifying_fields then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__storage_config__big_query_options__identifying_fields)
               v_identifying_fields
           in
           let bnd = "identifying_fields", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_excluded_fields then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__storage_config__big_query_options__excluded_fields)
               v_excluded_fields
           in
           let bnd = "excluded_fields", arg in
           bnd :: bnds
       in
       let bnds =
         match v_sample_method with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sample_method", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rows_limit_percent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "rows_limit_percent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rows_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "rows_limit", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : inspect_job__storage_config__big_query_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inspect_job__storage_config__big_query_options

[@@@deriving.end]

type inspect_job__storage_config__cloud_storage_options__file_set__regex_file_set = {
  bucket_name : string prop;
  exclude_regex : string prop list option; [@option]
  include_regex : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_job__storage_config__cloud_storage_options__file_set__regex_file_set) ->
  ()

let yojson_of_inspect_job__storage_config__cloud_storage_options__file_set__regex_file_set
    =
  (function
   | {
       bucket_name = v_bucket_name;
       exclude_regex = v_exclude_regex;
       include_regex = v_include_regex;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_include_regex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "include_regex", arg in
             bnd :: bnds
       in
       let bnds =
         match v_exclude_regex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "exclude_regex", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_name in
         ("bucket_name", arg) :: bnds
       in
       `Assoc bnds
    : inspect_job__storage_config__cloud_storage_options__file_set__regex_file_set ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_job__storage_config__cloud_storage_options__file_set__regex_file_set

[@@@deriving.end]

type inspect_job__storage_config__cloud_storage_options__file_set = {
  url : string prop option; [@option]
  regex_file_set :
    inspect_job__storage_config__cloud_storage_options__file_set__regex_file_set
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_job__storage_config__cloud_storage_options__file_set) ->
  ()

let yojson_of_inspect_job__storage_config__cloud_storage_options__file_set
    =
  (function
   | { url = v_url; regex_file_set = v_regex_file_set } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_regex_file_set then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__storage_config__cloud_storage_options__file_set__regex_file_set)
               v_regex_file_set
           in
           let bnd = "regex_file_set", arg in
           bnd :: bnds
       in
       let bnds =
         match v_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "url", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : inspect_job__storage_config__cloud_storage_options__file_set ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_job__storage_config__cloud_storage_options__file_set

[@@@deriving.end]

type inspect_job__storage_config__cloud_storage_options = {
  bytes_limit_per_file : float prop option; [@option]
  bytes_limit_per_file_percent : float prop option; [@option]
  file_types : string prop list option; [@option]
  files_limit_percent : float prop option; [@option]
  sample_method : string prop option; [@option]
  file_set :
    inspect_job__storage_config__cloud_storage_options__file_set list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : inspect_job__storage_config__cloud_storage_options) -> ()

let yojson_of_inspect_job__storage_config__cloud_storage_options =
  (function
   | {
       bytes_limit_per_file = v_bytes_limit_per_file;
       bytes_limit_per_file_percent = v_bytes_limit_per_file_percent;
       file_types = v_file_types;
       files_limit_percent = v_files_limit_percent;
       sample_method = v_sample_method;
       file_set = v_file_set;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_file_set then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__storage_config__cloud_storage_options__file_set)
               v_file_set
           in
           let bnd = "file_set", arg in
           bnd :: bnds
       in
       let bnds =
         match v_sample_method with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sample_method", arg in
             bnd :: bnds
       in
       let bnds =
         match v_files_limit_percent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "files_limit_percent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_file_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "file_types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bytes_limit_per_file_percent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "bytes_limit_per_file_percent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bytes_limit_per_file with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "bytes_limit_per_file", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : inspect_job__storage_config__cloud_storage_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inspect_job__storage_config__cloud_storage_options

[@@@deriving.end]

type inspect_job__storage_config__datastore_options__kind = {
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : inspect_job__storage_config__datastore_options__kind) -> ()

let yojson_of_inspect_job__storage_config__datastore_options__kind =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : inspect_job__storage_config__datastore_options__kind ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_job__storage_config__datastore_options__kind

[@@@deriving.end]

type inspect_job__storage_config__datastore_options__partition_id = {
  namespace_id : string prop option; [@option]
  project_id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_job__storage_config__datastore_options__partition_id) ->
  ()

let yojson_of_inspect_job__storage_config__datastore_options__partition_id
    =
  (function
   | { namespace_id = v_namespace_id; project_id = v_project_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project_id in
         ("project_id", arg) :: bnds
       in
       let bnds =
         match v_namespace_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "namespace_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : inspect_job__storage_config__datastore_options__partition_id ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_job__storage_config__datastore_options__partition_id

[@@@deriving.end]

type inspect_job__storage_config__datastore_options = {
  kind : inspect_job__storage_config__datastore_options__kind list;
      [@default []] [@yojson_drop_default ( = )]
  partition_id :
    inspect_job__storage_config__datastore_options__partition_id list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : inspect_job__storage_config__datastore_options) -> ()

let yojson_of_inspect_job__storage_config__datastore_options =
  (function
   | { kind = v_kind; partition_id = v_partition_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_partition_id then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__storage_config__datastore_options__partition_id)
               v_partition_id
           in
           let bnd = "partition_id", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_kind then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__storage_config__datastore_options__kind)
               v_kind
           in
           let bnd = "kind", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : inspect_job__storage_config__datastore_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inspect_job__storage_config__datastore_options

[@@@deriving.end]

type inspect_job__storage_config__hybrid_options__table_options__identifying_fields = {
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_job__storage_config__hybrid_options__table_options__identifying_fields) ->
  ()

let yojson_of_inspect_job__storage_config__hybrid_options__table_options__identifying_fields
    =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : inspect_job__storage_config__hybrid_options__table_options__identifying_fields ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_job__storage_config__hybrid_options__table_options__identifying_fields

[@@@deriving.end]

type inspect_job__storage_config__hybrid_options__table_options = {
  identifying_fields :
    inspect_job__storage_config__hybrid_options__table_options__identifying_fields
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : inspect_job__storage_config__hybrid_options__table_options) ->
  ()

let yojson_of_inspect_job__storage_config__hybrid_options__table_options
    =
  (function
   | { identifying_fields = v_identifying_fields } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_identifying_fields then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__storage_config__hybrid_options__table_options__identifying_fields)
               v_identifying_fields
           in
           let bnd = "identifying_fields", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : inspect_job__storage_config__hybrid_options__table_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_job__storage_config__hybrid_options__table_options

[@@@deriving.end]

type inspect_job__storage_config__hybrid_options = {
  description : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  required_finding_label_keys : string prop list option; [@option]
  table_options :
    inspect_job__storage_config__hybrid_options__table_options list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : inspect_job__storage_config__hybrid_options) -> ()

let yojson_of_inspect_job__storage_config__hybrid_options =
  (function
   | {
       description = v_description;
       labels = v_labels;
       required_finding_label_keys = v_required_finding_label_keys;
       table_options = v_table_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_table_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__storage_config__hybrid_options__table_options)
               v_table_options
           in
           let bnd = "table_options", arg in
           bnd :: bnds
       in
       let bnds =
         match v_required_finding_label_keys with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "required_finding_label_keys", arg in
             bnd :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : inspect_job__storage_config__hybrid_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inspect_job__storage_config__hybrid_options

[@@@deriving.end]

type inspect_job__storage_config__timespan_config__timestamp_field = {
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       inspect_job__storage_config__timespan_config__timestamp_field) ->
  ()

let yojson_of_inspect_job__storage_config__timespan_config__timestamp_field
    =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : inspect_job__storage_config__timespan_config__timestamp_field ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_inspect_job__storage_config__timespan_config__timestamp_field

[@@@deriving.end]

type inspect_job__storage_config__timespan_config = {
  enable_auto_population_of_timespan_config : bool prop option;
      [@option]
  end_time : string prop option; [@option]
  start_time : string prop option; [@option]
  timestamp_field :
    inspect_job__storage_config__timespan_config__timestamp_field
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : inspect_job__storage_config__timespan_config) -> ()

let yojson_of_inspect_job__storage_config__timespan_config =
  (function
   | {
       enable_auto_population_of_timespan_config =
         v_enable_auto_population_of_timespan_config;
       end_time = v_end_time;
       start_time = v_start_time;
       timestamp_field = v_timestamp_field;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_timestamp_field then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__storage_config__timespan_config__timestamp_field)
               v_timestamp_field
           in
           let bnd = "timestamp_field", arg in
           bnd :: bnds
       in
       let bnds =
         match v_start_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_end_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "end_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_auto_population_of_timespan_config with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "enable_auto_population_of_timespan_config", arg
             in
             bnd :: bnds
       in
       `Assoc bnds
    : inspect_job__storage_config__timespan_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inspect_job__storage_config__timespan_config

[@@@deriving.end]

type inspect_job__storage_config = {
  big_query_options :
    inspect_job__storage_config__big_query_options list;
      [@default []] [@yojson_drop_default ( = )]
  cloud_storage_options :
    inspect_job__storage_config__cloud_storage_options list;
      [@default []] [@yojson_drop_default ( = )]
  datastore_options :
    inspect_job__storage_config__datastore_options list;
      [@default []] [@yojson_drop_default ( = )]
  hybrid_options : inspect_job__storage_config__hybrid_options list;
      [@default []] [@yojson_drop_default ( = )]
  timespan_config : inspect_job__storage_config__timespan_config list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : inspect_job__storage_config) -> ()

let yojson_of_inspect_job__storage_config =
  (function
   | {
       big_query_options = v_big_query_options;
       cloud_storage_options = v_cloud_storage_options;
       datastore_options = v_datastore_options;
       hybrid_options = v_hybrid_options;
       timespan_config = v_timespan_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_timespan_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__storage_config__timespan_config)
               v_timespan_config
           in
           let bnd = "timespan_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_hybrid_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__storage_config__hybrid_options)
               v_hybrid_options
           in
           let bnd = "hybrid_options", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_datastore_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__storage_config__datastore_options)
               v_datastore_options
           in
           let bnd = "datastore_options", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_cloud_storage_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__storage_config__cloud_storage_options)
               v_cloud_storage_options
           in
           let bnd = "cloud_storage_options", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_big_query_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_inspect_job__storage_config__big_query_options)
               v_big_query_options
           in
           let bnd = "big_query_options", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : inspect_job__storage_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inspect_job__storage_config

[@@@deriving.end]

type inspect_job = {
  inspect_template_name : string prop option; [@option]
  actions : inspect_job__actions list;
      [@default []] [@yojson_drop_default ( = )]
  inspect_config : inspect_job__inspect_config list;
      [@default []] [@yojson_drop_default ( = )]
  storage_config : inspect_job__storage_config list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : inspect_job) -> ()

let yojson_of_inspect_job =
  (function
   | {
       inspect_template_name = v_inspect_template_name;
       actions = v_actions;
       inspect_config = v_inspect_config;
       storage_config = v_storage_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_storage_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_inspect_job__storage_config)
               v_storage_config
           in
           let bnd = "storage_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_inspect_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_inspect_job__inspect_config)
               v_inspect_config
           in
           let bnd = "inspect_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_actions then bnds
         else
           let arg =
             (yojson_of_list yojson_of_inspect_job__actions)
               v_actions
           in
           let bnd = "actions", arg in
           bnd :: bnds
       in
       let bnds =
         match v_inspect_template_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "inspect_template_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : inspect_job -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inspect_job

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

type triggers__manual = unit [@@deriving_inline yojson_of]

let _ = fun (_ : triggers__manual) -> ()

let yojson_of_triggers__manual =
  (yojson_of_unit
    : triggers__manual -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_triggers__manual

[@@@deriving.end]

type triggers__schedule = {
  recurrence_period_duration : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : triggers__schedule) -> ()

let yojson_of_triggers__schedule =
  (function
   | { recurrence_period_duration = v_recurrence_period_duration } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_recurrence_period_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "recurrence_period_duration", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : triggers__schedule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_triggers__schedule

[@@@deriving.end]

type triggers = {
  manual : triggers__manual list;
      [@default []] [@yojson_drop_default ( = )]
  schedule : triggers__schedule list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : triggers) -> ()

let yojson_of_triggers =
  (function
   | { manual = v_manual; schedule = v_schedule } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_schedule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_triggers__schedule) v_schedule
           in
           let bnd = "schedule", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_manual then bnds
         else
           let arg =
             (yojson_of_list yojson_of_triggers__manual) v_manual
           in
           let bnd = "manual", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : triggers -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_triggers

[@@@deriving.end]

type google_data_loss_prevention_job_trigger = {
  description : string prop option; [@option]
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  parent : string prop;
  status : string prop option; [@option]
  trigger_id : string prop option; [@option]
  inspect_job : inspect_job list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
  triggers : triggers list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_data_loss_prevention_job_trigger) -> ()

let yojson_of_google_data_loss_prevention_job_trigger =
  (function
   | {
       description = v_description;
       display_name = v_display_name;
       id = v_id;
       parent = v_parent;
       status = v_status;
       trigger_id = v_trigger_id;
       inspect_job = v_inspect_job;
       timeouts = v_timeouts;
       triggers = v_triggers;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_triggers then bnds
         else
           let arg =
             (yojson_of_list yojson_of_triggers) v_triggers
           in
           let bnd = "triggers", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if [] = v_inspect_job then bnds
         else
           let arg =
             (yojson_of_list yojson_of_inspect_job) v_inspect_job
           in
           let bnd = "inspect_job", arg in
           bnd :: bnds
       in
       let bnds =
         match v_trigger_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "trigger_id", arg in
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
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_data_loss_prevention_job_trigger ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_data_loss_prevention_job_trigger

[@@@deriving.end]

let inspect_job__actions__deidentify__transformation_config
    ?deidentify_template ?image_redact_template
    ?structured_deidentify_template () :
    inspect_job__actions__deidentify__transformation_config =
  {
    deidentify_template;
    image_redact_template;
    structured_deidentify_template;
  }

let inspect_job__actions__deidentify__transformation_details_storage_config__table
    ?table_id ~dataset_id ~project_id () :
    inspect_job__actions__deidentify__transformation_details_storage_config__table
    =
  { dataset_id; project_id; table_id }

let inspect_job__actions__deidentify__transformation_details_storage_config
    ~table () :
    inspect_job__actions__deidentify__transformation_details_storage_config
    =
  { table }

let inspect_job__actions__deidentify ?file_types_to_transform
    ?(transformation_config = [])
    ?(transformation_details_storage_config = [])
    ~cloud_storage_output () : inspect_job__actions__deidentify =
  {
    cloud_storage_output;
    file_types_to_transform;
    transformation_config;
    transformation_details_storage_config;
  }

let inspect_job__actions__job_notification_emails () = ()

let inspect_job__actions__pub_sub ~topic () :
    inspect_job__actions__pub_sub =
  { topic }

let inspect_job__actions__publish_findings_to_cloud_data_catalog () =
  ()

let inspect_job__actions__publish_summary_to_cscc () = ()
let inspect_job__actions__publish_to_stackdriver () = ()

let inspect_job__actions__save_findings__output_config__table
    ?table_id ~dataset_id ~project_id () :
    inspect_job__actions__save_findings__output_config__table =
  { dataset_id; project_id; table_id }

let inspect_job__actions__save_findings__output_config ?output_schema
    ~table () : inspect_job__actions__save_findings__output_config =
  { output_schema; table }

let inspect_job__actions__save_findings ~output_config () :
    inspect_job__actions__save_findings =
  { output_config }

let inspect_job__actions ?(deidentify = [])
    ?(job_notification_emails = []) ?(pub_sub = [])
    ?(publish_findings_to_cloud_data_catalog = [])
    ?(publish_summary_to_cscc = []) ?(publish_to_stackdriver = [])
    ?(save_findings = []) () : inspect_job__actions =
  {
    deidentify;
    job_notification_emails;
    pub_sub;
    publish_findings_to_cloud_data_catalog;
    publish_summary_to_cscc;
    publish_to_stackdriver;
    save_findings;
  }

let inspect_job__inspect_config__custom_info_types__dictionary__cloud_storage_path
    ~path () :
    inspect_job__inspect_config__custom_info_types__dictionary__cloud_storage_path
    =
  { path }

let inspect_job__inspect_config__custom_info_types__dictionary__word_list
    ~words () :
    inspect_job__inspect_config__custom_info_types__dictionary__word_list
    =
  { words }

let inspect_job__inspect_config__custom_info_types__dictionary
    ?(cloud_storage_path = []) ?(word_list = []) () :
    inspect_job__inspect_config__custom_info_types__dictionary =
  { cloud_storage_path; word_list }

let inspect_job__inspect_config__custom_info_types__info_type__sensitivity_score
    ~score () :
    inspect_job__inspect_config__custom_info_types__info_type__sensitivity_score
    =
  { score }

let inspect_job__inspect_config__custom_info_types__info_type
    ?version ?(sensitivity_score = []) ~name () :
    inspect_job__inspect_config__custom_info_types__info_type =
  { name; version; sensitivity_score }

let inspect_job__inspect_config__custom_info_types__regex
    ?group_indexes ~pattern () :
    inspect_job__inspect_config__custom_info_types__regex =
  { group_indexes; pattern }

let inspect_job__inspect_config__custom_info_types__sensitivity_score
    ~score () :
    inspect_job__inspect_config__custom_info_types__sensitivity_score
    =
  { score }

let inspect_job__inspect_config__custom_info_types__stored_type ~name
    () : inspect_job__inspect_config__custom_info_types__stored_type
    =
  { name }

let inspect_job__inspect_config__custom_info_types__surrogate_type ()
    =
  ()

let inspect_job__inspect_config__custom_info_types ?exclusion_type
    ?likelihood ?(dictionary = []) ?(regex = [])
    ?(sensitivity_score = []) ?(stored_type = [])
    ?(surrogate_type = []) ~info_type () :
    inspect_job__inspect_config__custom_info_types =
  {
    exclusion_type;
    likelihood;
    dictionary;
    info_type;
    regex;
    sensitivity_score;
    stored_type;
    surrogate_type;
  }

let inspect_job__inspect_config__info_types__sensitivity_score ~score
    () : inspect_job__inspect_config__info_types__sensitivity_score =
  { score }

let inspect_job__inspect_config__info_types ?version
    ?(sensitivity_score = []) ~name () :
    inspect_job__inspect_config__info_types =
  { name; version; sensitivity_score }

let inspect_job__inspect_config__limits__max_findings_per_info_type__info_type__sensitivity_score
    ~score () :
    inspect_job__inspect_config__limits__max_findings_per_info_type__info_type__sensitivity_score
    =
  { score }

let inspect_job__inspect_config__limits__max_findings_per_info_type__info_type
    ?version ?(sensitivity_score = []) ~name () :
    inspect_job__inspect_config__limits__max_findings_per_info_type__info_type
    =
  { name; version; sensitivity_score }

let inspect_job__inspect_config__limits__max_findings_per_info_type
    ?max_findings ?(info_type = []) () :
    inspect_job__inspect_config__limits__max_findings_per_info_type =
  { max_findings; info_type }

let inspect_job__inspect_config__limits ?max_findings_per_item
    ?max_findings_per_request ?(max_findings_per_info_type = []) () :
    inspect_job__inspect_config__limits =
  {
    max_findings_per_item;
    max_findings_per_request;
    max_findings_per_info_type;
  }

let inspect_job__inspect_config__rule_set__info_types__sensitivity_score
    ~score () :
    inspect_job__inspect_config__rule_set__info_types__sensitivity_score
    =
  { score }

let inspect_job__inspect_config__rule_set__info_types ?version
    ?(sensitivity_score = []) ~name () :
    inspect_job__inspect_config__rule_set__info_types =
  { name; version; sensitivity_score }

let inspect_job__inspect_config__rule_set__rules__exclusion_rule__dictionary__cloud_storage_path
    ~path () :
    inspect_job__inspect_config__rule_set__rules__exclusion_rule__dictionary__cloud_storage_path
    =
  { path }

let inspect_job__inspect_config__rule_set__rules__exclusion_rule__dictionary__word_list
    ~words () :
    inspect_job__inspect_config__rule_set__rules__exclusion_rule__dictionary__word_list
    =
  { words }

let inspect_job__inspect_config__rule_set__rules__exclusion_rule__dictionary
    ?(cloud_storage_path = []) ?(word_list = []) () :
    inspect_job__inspect_config__rule_set__rules__exclusion_rule__dictionary
    =
  { cloud_storage_path; word_list }

let inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__hotword_regex
    ?group_indexes ?pattern () :
    inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__hotword_regex
    =
  { group_indexes; pattern }

let inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__proximity
    ?window_after ?window_before () :
    inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword__proximity
    =
  { window_after; window_before }

let inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword
    ?(hotword_regex = []) ?(proximity = []) () :
    inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_by_hotword
    =
  { hotword_regex; proximity }

let inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types__sensitivity_score
    ~score () :
    inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types__sensitivity_score
    =
  { score }

let inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types
    ?version ?(sensitivity_score = []) ~name () :
    inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types__info_types
    =
  { name; version; sensitivity_score }

let inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types
    ~info_types () :
    inspect_job__inspect_config__rule_set__rules__exclusion_rule__exclude_info_types
    =
  { info_types }

let inspect_job__inspect_config__rule_set__rules__exclusion_rule__regex
    ?group_indexes ~pattern () :
    inspect_job__inspect_config__rule_set__rules__exclusion_rule__regex
    =
  { group_indexes; pattern }

let inspect_job__inspect_config__rule_set__rules__exclusion_rule
    ?(dictionary = []) ?(exclude_by_hotword = [])
    ?(exclude_info_types = []) ?(regex = []) ~matching_type () :
    inspect_job__inspect_config__rule_set__rules__exclusion_rule =
  {
    matching_type;
    dictionary;
    exclude_by_hotword;
    exclude_info_types;
    regex;
  }

let inspect_job__inspect_config__rule_set__rules__hotword_rule__hotword_regex
    ?group_indexes ?pattern () :
    inspect_job__inspect_config__rule_set__rules__hotword_rule__hotword_regex
    =
  { group_indexes; pattern }

let inspect_job__inspect_config__rule_set__rules__hotword_rule__likelihood_adjustment
    ?fixed_likelihood ?relative_likelihood () :
    inspect_job__inspect_config__rule_set__rules__hotword_rule__likelihood_adjustment
    =
  { fixed_likelihood; relative_likelihood }

let inspect_job__inspect_config__rule_set__rules__hotword_rule__proximity
    ?window_after ?window_before () :
    inspect_job__inspect_config__rule_set__rules__hotword_rule__proximity
    =
  { window_after; window_before }

let inspect_job__inspect_config__rule_set__rules__hotword_rule
    ?(hotword_regex = []) ?(likelihood_adjustment = [])
    ?(proximity = []) () :
    inspect_job__inspect_config__rule_set__rules__hotword_rule =
  { hotword_regex; likelihood_adjustment; proximity }

let inspect_job__inspect_config__rule_set__rules
    ?(exclusion_rule = []) ?(hotword_rule = []) () :
    inspect_job__inspect_config__rule_set__rules =
  { exclusion_rule; hotword_rule }

let inspect_job__inspect_config__rule_set ?(info_types = []) ~rules
    () : inspect_job__inspect_config__rule_set =
  { info_types; rules }

let inspect_job__inspect_config ?exclude_info_types ?include_quote
    ?min_likelihood ?(custom_info_types = []) ?(info_types = [])
    ?(limits = []) ?(rule_set = []) () : inspect_job__inspect_config
    =
  {
    exclude_info_types;
    include_quote;
    min_likelihood;
    custom_info_types;
    info_types;
    limits;
    rule_set;
  }

let inspect_job__storage_config__big_query_options__excluded_fields
    ~name () :
    inspect_job__storage_config__big_query_options__excluded_fields =
  { name }

let inspect_job__storage_config__big_query_options__identifying_fields
    ~name () :
    inspect_job__storage_config__big_query_options__identifying_fields
    =
  { name }

let inspect_job__storage_config__big_query_options__included_fields
    ~name () :
    inspect_job__storage_config__big_query_options__included_fields =
  { name }

let inspect_job__storage_config__big_query_options__table_reference
    ~dataset_id ~project_id ~table_id () :
    inspect_job__storage_config__big_query_options__table_reference =
  { dataset_id; project_id; table_id }

let inspect_job__storage_config__big_query_options ?rows_limit
    ?rows_limit_percent ?sample_method ?(excluded_fields = [])
    ?(identifying_fields = []) ?(included_fields = [])
    ~table_reference () :
    inspect_job__storage_config__big_query_options =
  {
    rows_limit;
    rows_limit_percent;
    sample_method;
    excluded_fields;
    identifying_fields;
    included_fields;
    table_reference;
  }

let inspect_job__storage_config__cloud_storage_options__file_set__regex_file_set
    ?exclude_regex ?include_regex ~bucket_name () :
    inspect_job__storage_config__cloud_storage_options__file_set__regex_file_set
    =
  { bucket_name; exclude_regex; include_regex }

let inspect_job__storage_config__cloud_storage_options__file_set ?url
    ?(regex_file_set = []) () :
    inspect_job__storage_config__cloud_storage_options__file_set =
  { url; regex_file_set }

let inspect_job__storage_config__cloud_storage_options
    ?bytes_limit_per_file ?bytes_limit_per_file_percent ?file_types
    ?files_limit_percent ?sample_method ~file_set () :
    inspect_job__storage_config__cloud_storage_options =
  {
    bytes_limit_per_file;
    bytes_limit_per_file_percent;
    file_types;
    files_limit_percent;
    sample_method;
    file_set;
  }

let inspect_job__storage_config__datastore_options__kind ~name () :
    inspect_job__storage_config__datastore_options__kind =
  { name }

let inspect_job__storage_config__datastore_options__partition_id
    ?namespace_id ~project_id () :
    inspect_job__storage_config__datastore_options__partition_id =
  { namespace_id; project_id }

let inspect_job__storage_config__datastore_options ~kind
    ~partition_id () : inspect_job__storage_config__datastore_options
    =
  { kind; partition_id }

let inspect_job__storage_config__hybrid_options__table_options__identifying_fields
    ~name () :
    inspect_job__storage_config__hybrid_options__table_options__identifying_fields
    =
  { name }

let inspect_job__storage_config__hybrid_options__table_options
    ?(identifying_fields = []) () :
    inspect_job__storage_config__hybrid_options__table_options =
  { identifying_fields }

let inspect_job__storage_config__hybrid_options ?description ?labels
    ?required_finding_label_keys ?(table_options = []) () :
    inspect_job__storage_config__hybrid_options =
  { description; labels; required_finding_label_keys; table_options }

let inspect_job__storage_config__timespan_config__timestamp_field
    ~name () :
    inspect_job__storage_config__timespan_config__timestamp_field =
  { name }

let inspect_job__storage_config__timespan_config
    ?enable_auto_population_of_timespan_config ?end_time ?start_time
    ?(timestamp_field = []) () :
    inspect_job__storage_config__timespan_config =
  {
    enable_auto_population_of_timespan_config;
    end_time;
    start_time;
    timestamp_field;
  }

let inspect_job__storage_config ?(big_query_options = [])
    ?(cloud_storage_options = []) ?(datastore_options = [])
    ?(hybrid_options = []) ?(timespan_config = []) () :
    inspect_job__storage_config =
  {
    big_query_options;
    cloud_storage_options;
    datastore_options;
    hybrid_options;
    timespan_config;
  }

let inspect_job ?inspect_template_name ?(actions = [])
    ?(inspect_config = []) ~storage_config () : inspect_job =
  { inspect_template_name; actions; inspect_config; storage_config }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let triggers__manual () = ()

let triggers__schedule ?recurrence_period_duration () :
    triggers__schedule =
  { recurrence_period_duration }

let triggers ?(manual = []) ?(schedule = []) () : triggers =
  { manual; schedule }

let google_data_loss_prevention_job_trigger ?description
    ?display_name ?id ?status ?trigger_id ?(inspect_job = [])
    ?timeouts ~parent ~triggers () :
    google_data_loss_prevention_job_trigger =
  {
    description;
    display_name;
    id;
    parent;
    status;
    trigger_id;
    inspect_job;
    timeouts;
    triggers;
  }

type t = {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  last_run_time : string prop;
  name : string prop;
  parent : string prop;
  status : string prop;
  trigger_id : string prop;
  update_time : string prop;
}

let make ?description ?display_name ?id ?status ?trigger_id
    ?(inspect_job = []) ?timeouts ~parent ~triggers __id =
  let __type = "google_data_loss_prevention_job_trigger" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       last_run_time = Prop.computed __type __id "last_run_time";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
       status = Prop.computed __type __id "status";
       trigger_id = Prop.computed __type __id "trigger_id";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_data_loss_prevention_job_trigger
        (google_data_loss_prevention_job_trigger ?description
           ?display_name ?id ?status ?trigger_id ~inspect_job
           ?timeouts ~parent ~triggers ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?display_name ?id ?status
    ?trigger_id ?(inspect_job = []) ?timeouts ~parent ~triggers __id
    =
  let (r : _ Tf_core.resource) =
    make ?description ?display_name ?id ?status ?trigger_id
      ~inspect_job ?timeouts ~parent ~triggers __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
