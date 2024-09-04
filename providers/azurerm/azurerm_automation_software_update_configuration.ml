(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type linux = {
  classification_included : string prop option; [@option]
  classifications_included : string prop list option; [@option]
  excluded_packages : string prop list option; [@option]
  included_packages : string prop list option; [@option]
  reboot : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : linux) -> ()

let yojson_of_linux =
  (function
   | {
       classification_included = v_classification_included;
       classifications_included = v_classifications_included;
       excluded_packages = v_excluded_packages;
       included_packages = v_included_packages;
       reboot = v_reboot;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_reboot with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "reboot", arg in
             bnd :: bnds
       in
       let bnds =
         match v_included_packages with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "included_packages", arg in
             bnd :: bnds
       in
       let bnds =
         match v_excluded_packages with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "excluded_packages", arg in
             bnd :: bnds
       in
       let bnds =
         match v_classifications_included with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "classifications_included", arg in
             bnd :: bnds
       in
       let bnds =
         match v_classification_included with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "classification_included", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : linux -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_linux

[@@@deriving.end]

type post_task = {
  parameters : string prop Tf_core.assoc option; [@option]
  source : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : post_task) -> ()

let yojson_of_post_task =
  (function
   | { parameters = v_parameters; source = v_source } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_source with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : post_task -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_post_task

[@@@deriving.end]

type pre_task = {
  parameters : string prop Tf_core.assoc option; [@option]
  source : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : pre_task) -> ()

let yojson_of_pre_task =
  (function
   | { parameters = v_parameters; source = v_source } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_source with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : pre_task -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_pre_task

[@@@deriving.end]

type schedule__monthly_occurrence = {
  day : string prop;
  occurrence : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : schedule__monthly_occurrence) -> ()

let yojson_of_schedule__monthly_occurrence =
  (function
   | { day = v_day; occurrence = v_occurrence } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_occurrence in
         ("occurrence", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_day in
         ("day", arg) :: bnds
       in
       `Assoc bnds
    : schedule__monthly_occurrence ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schedule__monthly_occurrence

[@@@deriving.end]

type schedule = {
  advanced_month_days : float prop list option; [@option]
  advanced_week_days : string prop list option; [@option]
  description : string prop option; [@option]
  expiry_time : string prop option; [@option]
  expiry_time_offset_minutes : float prop option; [@option]
  frequency : string prop;
  interval : float prop option; [@option]
  is_enabled : bool prop option; [@option]
  next_run : string prop option; [@option]
  next_run_offset_minutes : float prop option; [@option]
  start_time : string prop option; [@option]
  start_time_offset_minutes : float prop option; [@option]
  time_zone : string prop option; [@option]
  monthly_occurrence : schedule__monthly_occurrence list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : schedule) -> ()

let yojson_of_schedule =
  (function
   | {
       advanced_month_days = v_advanced_month_days;
       advanced_week_days = v_advanced_week_days;
       description = v_description;
       expiry_time = v_expiry_time;
       expiry_time_offset_minutes = v_expiry_time_offset_minutes;
       frequency = v_frequency;
       interval = v_interval;
       is_enabled = v_is_enabled;
       next_run = v_next_run;
       next_run_offset_minutes = v_next_run_offset_minutes;
       start_time = v_start_time;
       start_time_offset_minutes = v_start_time_offset_minutes;
       time_zone = v_time_zone;
       monthly_occurrence = v_monthly_occurrence;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_monthly_occurrence then bnds
         else
           let arg =
             (yojson_of_list yojson_of_schedule__monthly_occurrence)
               v_monthly_occurrence
           in
           let bnd = "monthly_occurrence", arg in
           bnd :: bnds
       in
       let bnds =
         match v_time_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "time_zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_start_time_offset_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "start_time_offset_minutes", arg in
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
         match v_next_run_offset_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "next_run_offset_minutes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_next_run with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "next_run", arg in
             bnd :: bnds
       in
       let bnds =
         match v_is_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "interval", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_frequency in
         ("frequency", arg) :: bnds
       in
       let bnds =
         match v_expiry_time_offset_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "expiry_time_offset_minutes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_expiry_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expiry_time", arg in
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
         match v_advanced_week_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "advanced_week_days", arg in
             bnd :: bnds
       in
       let bnds =
         match v_advanced_month_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "advanced_month_days", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : schedule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schedule

[@@@deriving.end]

type target__azure_query__tags = {
  tag : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target__azure_query__tags) -> ()

let yojson_of_target__azure_query__tags =
  (function
   | { tag = v_tag; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tag in
         ("tag", arg) :: bnds
       in
       `Assoc bnds
    : target__azure_query__tags -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target__azure_query__tags

[@@@deriving.end]

type target__azure_query = {
  locations : string prop list option; [@option]
  scope : string prop list option; [@option]
  tag_filter : string prop option; [@option]
  tags : target__azure_query__tags list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target__azure_query) -> ()

let yojson_of_target__azure_query =
  (function
   | {
       locations = v_locations;
       scope = v_scope;
       tag_filter = v_tag_filter;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tags then bnds
         else
           let arg =
             (yojson_of_list yojson_of_target__azure_query__tags)
               v_tags
           in
           let bnd = "tags", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tag_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tag_filter", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "scope", arg in
             bnd :: bnds
       in
       let bnds =
         match v_locations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "locations", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : target__azure_query -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target__azure_query

[@@@deriving.end]

type target__non_azure_query = {
  function_alias : string prop option; [@option]
  workspace_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target__non_azure_query) -> ()

let yojson_of_target__non_azure_query =
  (function
   | {
       function_alias = v_function_alias;
       workspace_id = v_workspace_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_workspace_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "workspace_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_function_alias with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "function_alias", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : target__non_azure_query -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target__non_azure_query

[@@@deriving.end]

type target = {
  azure_query : target__azure_query list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  non_azure_query : target__non_azure_query list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target) -> ()

let yojson_of_target =
  (function
   | {
       azure_query = v_azure_query;
       non_azure_query = v_non_azure_query;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_non_azure_query then bnds
         else
           let arg =
             (yojson_of_list yojson_of_target__non_azure_query)
               v_non_azure_query
           in
           let bnd = "non_azure_query", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_azure_query then bnds
         else
           let arg =
             (yojson_of_list yojson_of_target__azure_query)
               v_azure_query
           in
           let bnd = "azure_query", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : target -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
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
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
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

type windows = {
  classification_included : string prop option; [@option]
  classifications_included : string prop list option; [@option]
  excluded_knowledge_base_numbers : string prop list option;
      [@option]
  included_knowledge_base_numbers : string prop list option;
      [@option]
  reboot : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : windows) -> ()

let yojson_of_windows =
  (function
   | {
       classification_included = v_classification_included;
       classifications_included = v_classifications_included;
       excluded_knowledge_base_numbers =
         v_excluded_knowledge_base_numbers;
       included_knowledge_base_numbers =
         v_included_knowledge_base_numbers;
       reboot = v_reboot;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_reboot with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "reboot", arg in
             bnd :: bnds
       in
       let bnds =
         match v_included_knowledge_base_numbers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "included_knowledge_base_numbers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_excluded_knowledge_base_numbers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "excluded_knowledge_base_numbers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_classifications_included with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "classifications_included", arg in
             bnd :: bnds
       in
       let bnds =
         match v_classification_included with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "classification_included", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : windows -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_windows

[@@@deriving.end]

type azurerm_automation_software_update_configuration = {
  automation_account_id : string prop;
  duration : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  non_azure_computer_names : string prop list option; [@option]
  operating_system : string prop option; [@option]
  virtual_machine_ids : string prop list option; [@option]
  linux : linux list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  post_task : post_task list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  pre_task : pre_task list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  schedule : schedule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  target : target list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
  windows : windows list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_automation_software_update_configuration) -> ()

let yojson_of_azurerm_automation_software_update_configuration =
  (function
   | {
       automation_account_id = v_automation_account_id;
       duration = v_duration;
       id = v_id;
       name = v_name;
       non_azure_computer_names = v_non_azure_computer_names;
       operating_system = v_operating_system;
       virtual_machine_ids = v_virtual_machine_ids;
       linux = v_linux;
       post_task = v_post_task;
       pre_task = v_pre_task;
       schedule = v_schedule;
       target = v_target;
       timeouts = v_timeouts;
       windows = v_windows;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_windows then bnds
         else
           let arg = (yojson_of_list yojson_of_windows) v_windows in
           let bnd = "windows", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_target then bnds
         else
           let arg = (yojson_of_list yojson_of_target) v_target in
           let bnd = "target", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_schedule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_schedule) v_schedule
           in
           let bnd = "schedule", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_pre_task then bnds
         else
           let arg =
             (yojson_of_list yojson_of_pre_task) v_pre_task
           in
           let bnd = "pre_task", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_post_task then bnds
         else
           let arg =
             (yojson_of_list yojson_of_post_task) v_post_task
           in
           let bnd = "post_task", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_linux then bnds
         else
           let arg = (yojson_of_list yojson_of_linux) v_linux in
           let bnd = "linux", arg in
           bnd :: bnds
       in
       let bnds =
         match v_virtual_machine_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "virtual_machine_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_operating_system with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "operating_system", arg in
             bnd :: bnds
       in
       let bnds =
         match v_non_azure_computer_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "non_azure_computer_names", arg in
             bnd :: bnds
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
         match v_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "duration", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_automation_account_id
         in
         ("automation_account_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_automation_software_update_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_automation_software_update_configuration

[@@@deriving.end]

let linux ?classification_included ?classifications_included
    ?excluded_packages ?included_packages ?reboot () : linux =
  {
    classification_included;
    classifications_included;
    excluded_packages;
    included_packages;
    reboot;
  }

let post_task ?parameters ?source () : post_task =
  { parameters; source }

let pre_task ?parameters ?source () : pre_task =
  { parameters; source }

let schedule__monthly_occurrence ~day ~occurrence () :
    schedule__monthly_occurrence =
  { day; occurrence }

let schedule ?advanced_month_days ?advanced_week_days ?description
    ?expiry_time ?expiry_time_offset_minutes ?interval ?is_enabled
    ?next_run ?next_run_offset_minutes ?start_time
    ?start_time_offset_minutes ?time_zone ?(monthly_occurrence = [])
    ~frequency () : schedule =
  {
    advanced_month_days;
    advanced_week_days;
    description;
    expiry_time;
    expiry_time_offset_minutes;
    frequency;
    interval;
    is_enabled;
    next_run;
    next_run_offset_minutes;
    start_time;
    start_time_offset_minutes;
    time_zone;
    monthly_occurrence;
  }

let target__azure_query__tags ~tag ~values () :
    target__azure_query__tags =
  { tag; values }

let target__azure_query ?locations ?scope ?tag_filter ?(tags = []) ()
    : target__azure_query =
  { locations; scope; tag_filter; tags }

let target__non_azure_query ?function_alias ?workspace_id () :
    target__non_azure_query =
  { function_alias; workspace_id }

let target ?(azure_query = []) ?(non_azure_query = []) () : target =
  { azure_query; non_azure_query }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let windows ?classification_included ?classifications_included
    ?excluded_knowledge_base_numbers ?included_knowledge_base_numbers
    ?reboot () : windows =
  {
    classification_included;
    classifications_included;
    excluded_knowledge_base_numbers;
    included_knowledge_base_numbers;
    reboot;
  }

let azurerm_automation_software_update_configuration ?duration ?id
    ?non_azure_computer_names ?operating_system ?virtual_machine_ids
    ?(linux = []) ?(post_task = []) ?(pre_task = []) ?(target = [])
    ?timeouts ?(windows = []) ~automation_account_id ~name ~schedule
    () : azurerm_automation_software_update_configuration =
  {
    automation_account_id;
    duration;
    id;
    name;
    non_azure_computer_names;
    operating_system;
    virtual_machine_ids;
    linux;
    post_task;
    pre_task;
    schedule;
    target;
    timeouts;
    windows;
  }

type t = {
  tf_name : string;
  automation_account_id : string prop;
  duration : string prop;
  error_code : string prop;
  error_meesage : string prop;
  error_message : string prop;
  id : string prop;
  name : string prop;
  non_azure_computer_names : string list prop;
  operating_system : string prop;
  virtual_machine_ids : string list prop;
}

let make ?duration ?id ?non_azure_computer_names ?operating_system
    ?virtual_machine_ids ?(linux = []) ?(post_task = [])
    ?(pre_task = []) ?(target = []) ?timeouts ?(windows = [])
    ~automation_account_id ~name ~schedule __id =
  let __type = "azurerm_automation_software_update_configuration" in
  let __attrs =
    ({
       tf_name = __id;
       automation_account_id =
         Prop.computed __type __id "automation_account_id";
       duration = Prop.computed __type __id "duration";
       error_code = Prop.computed __type __id "error_code";
       error_meesage = Prop.computed __type __id "error_meesage";
       error_message = Prop.computed __type __id "error_message";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       non_azure_computer_names =
         Prop.computed __type __id "non_azure_computer_names";
       operating_system =
         Prop.computed __type __id "operating_system";
       virtual_machine_ids =
         Prop.computed __type __id "virtual_machine_ids";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_automation_software_update_configuration
        (azurerm_automation_software_update_configuration ?duration
           ?id ?non_azure_computer_names ?operating_system
           ?virtual_machine_ids ~linux ~post_task ~pre_task ~target
           ?timeouts ~windows ~automation_account_id ~name ~schedule
           ());
    attrs = __attrs;
  }

let register ?tf_module ?duration ?id ?non_azure_computer_names
    ?operating_system ?virtual_machine_ids ?(linux = [])
    ?(post_task = []) ?(pre_task = []) ?(target = []) ?timeouts
    ?(windows = []) ~automation_account_id ~name ~schedule __id =
  let (r : _ Tf_core.resource) =
    make ?duration ?id ?non_azure_computer_names ?operating_system
      ?virtual_machine_ids ~linux ~post_task ~pre_task ~target
      ?timeouts ~windows ~automation_account_id ~name ~schedule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
