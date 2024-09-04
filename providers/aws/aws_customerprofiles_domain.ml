(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type matching__auto_merging__conflict_resolution = {
  conflict_resolving_model : string prop;
  source_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : matching__auto_merging__conflict_resolution) -> ()

let yojson_of_matching__auto_merging__conflict_resolution =
  (function
   | {
       conflict_resolving_model = v_conflict_resolving_model;
       source_name = v_source_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_source_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_conflict_resolving_model
         in
         ("conflict_resolving_model", arg) :: bnds
       in
       `Assoc bnds
    : matching__auto_merging__conflict_resolution ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_matching__auto_merging__conflict_resolution

[@@@deriving.end]

type matching__auto_merging__consolidation = {
  matching_attributes_list : string prop list list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : matching__auto_merging__consolidation) -> ()

let yojson_of_matching__auto_merging__consolidation =
  (function
   | { matching_attributes_list = v_matching_attributes_list } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_matching_attributes_list then bnds
         else
           let arg =
             (yojson_of_list
                (yojson_of_list (yojson_of_prop yojson_of_string)))
               v_matching_attributes_list
           in
           let bnd = "matching_attributes_list", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : matching__auto_merging__consolidation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_matching__auto_merging__consolidation

[@@@deriving.end]

type matching__auto_merging = {
  enabled : bool prop;
  min_allowed_confidence_score_for_merging : float prop option;
      [@option]
  conflict_resolution :
    matching__auto_merging__conflict_resolution list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  consolidation : matching__auto_merging__consolidation list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : matching__auto_merging) -> ()

let yojson_of_matching__auto_merging =
  (function
   | {
       enabled = v_enabled;
       min_allowed_confidence_score_for_merging =
         v_min_allowed_confidence_score_for_merging;
       conflict_resolution = v_conflict_resolution;
       consolidation = v_consolidation;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_consolidation then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_matching__auto_merging__consolidation)
               v_consolidation
           in
           let bnd = "consolidation", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_conflict_resolution then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_matching__auto_merging__conflict_resolution)
               v_conflict_resolution
           in
           let bnd = "conflict_resolution", arg in
           bnd :: bnds
       in
       let bnds =
         match v_min_allowed_confidence_score_for_merging with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "min_allowed_confidence_score_for_merging", arg
             in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : matching__auto_merging -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_matching__auto_merging

[@@@deriving.end]

type matching__exporting_config__s3_exporting = {
  s3_bucket_name : string prop;
  s3_key_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : matching__exporting_config__s3_exporting) -> ()

let yojson_of_matching__exporting_config__s3_exporting =
  (function
   | {
       s3_bucket_name = v_s3_bucket_name;
       s3_key_name = v_s3_key_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_s3_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_key_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_s3_bucket_name
         in
         ("s3_bucket_name", arg) :: bnds
       in
       `Assoc bnds
    : matching__exporting_config__s3_exporting ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_matching__exporting_config__s3_exporting

[@@@deriving.end]

type matching__exporting_config = {
  s3_exporting : matching__exporting_config__s3_exporting list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : matching__exporting_config) -> ()

let yojson_of_matching__exporting_config =
  (function
   | { s3_exporting = v_s3_exporting } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_s3_exporting then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_matching__exporting_config__s3_exporting)
               v_s3_exporting
           in
           let bnd = "s3_exporting", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : matching__exporting_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_matching__exporting_config

[@@@deriving.end]

type matching__job_schedule = {
  day_of_the_week : string prop;
  time : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : matching__job_schedule) -> ()

let yojson_of_matching__job_schedule =
  (function
   | { day_of_the_week = v_day_of_the_week; time = v_time } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_time in
         ("time", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_day_of_the_week
         in
         ("day_of_the_week", arg) :: bnds
       in
       `Assoc bnds
    : matching__job_schedule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_matching__job_schedule

[@@@deriving.end]

type matching = {
  enabled : bool prop;
  auto_merging : matching__auto_merging list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  exporting_config : matching__exporting_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  job_schedule : matching__job_schedule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : matching) -> ()

let yojson_of_matching =
  (function
   | {
       enabled = v_enabled;
       auto_merging = v_auto_merging;
       exporting_config = v_exporting_config;
       job_schedule = v_job_schedule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_job_schedule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_matching__job_schedule)
               v_job_schedule
           in
           let bnd = "job_schedule", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_exporting_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_matching__exporting_config)
               v_exporting_config
           in
           let bnd = "exporting_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_auto_merging then bnds
         else
           let arg =
             (yojson_of_list yojson_of_matching__auto_merging)
               v_auto_merging
           in
           let bnd = "auto_merging", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : matching -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_matching

[@@@deriving.end]

type rule_based_matching__attribute_types_selector = {
  address : string prop list option; [@option]
  attribute_matching_model : string prop;
  email_address : string prop list option; [@option]
  phone_number : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule_based_matching__attribute_types_selector) -> ()

let yojson_of_rule_based_matching__attribute_types_selector =
  (function
   | {
       address = v_address;
       attribute_matching_model = v_attribute_matching_model;
       email_address = v_email_address;
       phone_number = v_phone_number;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_phone_number with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "phone_number", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "email_address", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_attribute_matching_model
         in
         ("attribute_matching_model", arg) :: bnds
       in
       let bnds =
         match v_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "address", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule_based_matching__attribute_types_selector ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule_based_matching__attribute_types_selector

[@@@deriving.end]

type rule_based_matching__conflict_resolution = {
  conflict_resolving_model : string prop;
  source_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule_based_matching__conflict_resolution) -> ()

let yojson_of_rule_based_matching__conflict_resolution =
  (function
   | {
       conflict_resolving_model = v_conflict_resolving_model;
       source_name = v_source_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_source_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_conflict_resolving_model
         in
         ("conflict_resolving_model", arg) :: bnds
       in
       `Assoc bnds
    : rule_based_matching__conflict_resolution ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule_based_matching__conflict_resolution

[@@@deriving.end]

type rule_based_matching__exporting_config__s3_exporting = {
  s3_bucket_name : string prop;
  s3_key_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : rule_based_matching__exporting_config__s3_exporting) -> ()

let yojson_of_rule_based_matching__exporting_config__s3_exporting =
  (function
   | {
       s3_bucket_name = v_s3_bucket_name;
       s3_key_name = v_s3_key_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_s3_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_key_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_s3_bucket_name
         in
         ("s3_bucket_name", arg) :: bnds
       in
       `Assoc bnds
    : rule_based_matching__exporting_config__s3_exporting ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule_based_matching__exporting_config__s3_exporting

[@@@deriving.end]

type rule_based_matching__exporting_config = {
  s3_exporting :
    rule_based_matching__exporting_config__s3_exporting list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule_based_matching__exporting_config) -> ()

let yojson_of_rule_based_matching__exporting_config =
  (function
   | { s3_exporting = v_s3_exporting } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_s3_exporting then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule_based_matching__exporting_config__s3_exporting)
               v_s3_exporting
           in
           let bnd = "s3_exporting", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : rule_based_matching__exporting_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule_based_matching__exporting_config

[@@@deriving.end]

type rule_based_matching__matching_rules = {
  rule : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule_based_matching__matching_rules) -> ()

let yojson_of_rule_based_matching__matching_rules =
  (function
   | { rule = v_rule } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_rule then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_rule
           in
           let bnd = "rule", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : rule_based_matching__matching_rules ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule_based_matching__matching_rules

[@@@deriving.end]

type rule_based_matching = {
  enabled : bool prop;
  max_allowed_rule_level_for_matching : float prop option; [@option]
  max_allowed_rule_level_for_merging : float prop option; [@option]
  status : string prop option; [@option]
  attribute_types_selector :
    rule_based_matching__attribute_types_selector list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  conflict_resolution :
    rule_based_matching__conflict_resolution list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  exporting_config : rule_based_matching__exporting_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  matching_rules : rule_based_matching__matching_rules list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule_based_matching) -> ()

let yojson_of_rule_based_matching =
  (function
   | {
       enabled = v_enabled;
       max_allowed_rule_level_for_matching =
         v_max_allowed_rule_level_for_matching;
       max_allowed_rule_level_for_merging =
         v_max_allowed_rule_level_for_merging;
       status = v_status;
       attribute_types_selector = v_attribute_types_selector;
       conflict_resolution = v_conflict_resolution;
       exporting_config = v_exporting_config;
       matching_rules = v_matching_rules;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_matching_rules then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule_based_matching__matching_rules)
               v_matching_rules
           in
           let bnd = "matching_rules", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_exporting_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule_based_matching__exporting_config)
               v_exporting_config
           in
           let bnd = "exporting_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_conflict_resolution then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule_based_matching__conflict_resolution)
               v_conflict_resolution
           in
           let bnd = "conflict_resolution", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_attribute_types_selector then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule_based_matching__attribute_types_selector)
               v_attribute_types_selector
           in
           let bnd = "attribute_types_selector", arg in
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
         match v_max_allowed_rule_level_for_merging with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_allowed_rule_level_for_merging", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_allowed_rule_level_for_matching with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_allowed_rule_level_for_matching", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : rule_based_matching -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule_based_matching

[@@@deriving.end]

type aws_customerprofiles_domain = {
  dead_letter_queue_url : string prop option; [@option]
  default_encryption_key : string prop option; [@option]
  default_expiration_days : float prop;
  domain_name : string prop;
  id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  matching : matching list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  rule_based_matching : rule_based_matching list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_customerprofiles_domain) -> ()

let yojson_of_aws_customerprofiles_domain =
  (function
   | {
       dead_letter_queue_url = v_dead_letter_queue_url;
       default_encryption_key = v_default_encryption_key;
       default_expiration_days = v_default_expiration_days;
       domain_name = v_domain_name;
       id = v_id;
       tags = v_tags;
       tags_all = v_tags_all;
       matching = v_matching;
       rule_based_matching = v_rule_based_matching;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_rule_based_matching then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule_based_matching)
               v_rule_based_matching
           in
           let bnd = "rule_based_matching", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_matching then bnds
         else
           let arg =
             (yojson_of_list yojson_of_matching) v_matching
           in
           let bnd = "matching", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain_name in
         ("domain_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_default_expiration_days
         in
         ("default_expiration_days", arg) :: bnds
       in
       let bnds =
         match v_default_encryption_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_encryption_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dead_letter_queue_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dead_letter_queue_url", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_customerprofiles_domain ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_customerprofiles_domain

[@@@deriving.end]

let matching__auto_merging__conflict_resolution ?source_name
    ~conflict_resolving_model () :
    matching__auto_merging__conflict_resolution =
  { conflict_resolving_model; source_name }

let matching__auto_merging__consolidation ~matching_attributes_list
    () : matching__auto_merging__consolidation =
  { matching_attributes_list }

let matching__auto_merging ?min_allowed_confidence_score_for_merging
    ?(conflict_resolution = []) ?(consolidation = []) ~enabled () :
    matching__auto_merging =
  {
    enabled;
    min_allowed_confidence_score_for_merging;
    conflict_resolution;
    consolidation;
  }

let matching__exporting_config__s3_exporting ?s3_key_name
    ~s3_bucket_name () : matching__exporting_config__s3_exporting =
  { s3_bucket_name; s3_key_name }

let matching__exporting_config ?(s3_exporting = []) () :
    matching__exporting_config =
  { s3_exporting }

let matching__job_schedule ~day_of_the_week ~time () :
    matching__job_schedule =
  { day_of_the_week; time }

let matching ?(auto_merging = []) ?(exporting_config = [])
    ?(job_schedule = []) ~enabled () : matching =
  { enabled; auto_merging; exporting_config; job_schedule }

let rule_based_matching__attribute_types_selector ?address
    ?email_address ?phone_number ~attribute_matching_model () :
    rule_based_matching__attribute_types_selector =
  { address; attribute_matching_model; email_address; phone_number }

let rule_based_matching__conflict_resolution ?source_name
    ~conflict_resolving_model () :
    rule_based_matching__conflict_resolution =
  { conflict_resolving_model; source_name }

let rule_based_matching__exporting_config__s3_exporting ?s3_key_name
    ~s3_bucket_name () :
    rule_based_matching__exporting_config__s3_exporting =
  { s3_bucket_name; s3_key_name }

let rule_based_matching__exporting_config ?(s3_exporting = []) () :
    rule_based_matching__exporting_config =
  { s3_exporting }

let rule_based_matching__matching_rules ~rule () :
    rule_based_matching__matching_rules =
  { rule }

let rule_based_matching ?max_allowed_rule_level_for_matching
    ?max_allowed_rule_level_for_merging ?status
    ?(attribute_types_selector = []) ?(conflict_resolution = [])
    ?(exporting_config = []) ~enabled ~matching_rules () :
    rule_based_matching =
  {
    enabled;
    max_allowed_rule_level_for_matching;
    max_allowed_rule_level_for_merging;
    status;
    attribute_types_selector;
    conflict_resolution;
    exporting_config;
    matching_rules;
  }

let aws_customerprofiles_domain ?dead_letter_queue_url
    ?default_encryption_key ?id ?tags ?tags_all ?(matching = [])
    ?(rule_based_matching = []) ~default_expiration_days ~domain_name
    () : aws_customerprofiles_domain =
  {
    dead_letter_queue_url;
    default_encryption_key;
    default_expiration_days;
    domain_name;
    id;
    tags;
    tags_all;
    matching;
    rule_based_matching;
  }

type t = {
  tf_name : string;
  arn : string prop;
  dead_letter_queue_url : string prop;
  default_encryption_key : string prop;
  default_expiration_days : float prop;
  domain_name : string prop;
  id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?dead_letter_queue_url ?default_encryption_key ?id ?tags
    ?tags_all ?(matching = []) ?(rule_based_matching = [])
    ~default_expiration_days ~domain_name __id =
  let __type = "aws_customerprofiles_domain" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       dead_letter_queue_url =
         Prop.computed __type __id "dead_letter_queue_url";
       default_encryption_key =
         Prop.computed __type __id "default_encryption_key";
       default_expiration_days =
         Prop.computed __type __id "default_expiration_days";
       domain_name = Prop.computed __type __id "domain_name";
       id = Prop.computed __type __id "id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_customerprofiles_domain
        (aws_customerprofiles_domain ?dead_letter_queue_url
           ?default_encryption_key ?id ?tags ?tags_all ~matching
           ~rule_based_matching ~default_expiration_days ~domain_name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?dead_letter_queue_url
    ?default_encryption_key ?id ?tags ?tags_all ?(matching = [])
    ?(rule_based_matching = []) ~default_expiration_days ~domain_name
    __id =
  let (r : _ Tf_core.resource) =
    make ?dead_letter_queue_url ?default_encryption_key ?id ?tags
      ?tags_all ~matching ~rule_based_matching
      ~default_expiration_days ~domain_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
