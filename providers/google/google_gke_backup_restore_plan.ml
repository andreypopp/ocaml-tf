(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type restore_config__cluster_resource_restore_scope__excluded_group_kinds = {
  resource_group : string prop option; [@option]
  resource_kind : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       restore_config__cluster_resource_restore_scope__excluded_group_kinds) ->
  ()

let yojson_of_restore_config__cluster_resource_restore_scope__excluded_group_kinds
    =
  (function
   | {
       resource_group = v_resource_group;
       resource_kind = v_resource_kind;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_resource_kind with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_kind", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_group", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : restore_config__cluster_resource_restore_scope__excluded_group_kinds ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_restore_config__cluster_resource_restore_scope__excluded_group_kinds

[@@@deriving.end]

type restore_config__cluster_resource_restore_scope__selected_group_kinds = {
  resource_group : string prop option; [@option]
  resource_kind : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       restore_config__cluster_resource_restore_scope__selected_group_kinds) ->
  ()

let yojson_of_restore_config__cluster_resource_restore_scope__selected_group_kinds
    =
  (function
   | {
       resource_group = v_resource_group;
       resource_kind = v_resource_kind;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_resource_kind with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_kind", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_group", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : restore_config__cluster_resource_restore_scope__selected_group_kinds ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_restore_config__cluster_resource_restore_scope__selected_group_kinds

[@@@deriving.end]

type restore_config__cluster_resource_restore_scope = {
  all_group_kinds : bool prop option; [@option]
  no_group_kinds : bool prop option; [@option]
  excluded_group_kinds :
    restore_config__cluster_resource_restore_scope__excluded_group_kinds
    list;
      [@default []] [@yojson_drop_default ( = )]
  selected_group_kinds :
    restore_config__cluster_resource_restore_scope__selected_group_kinds
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : restore_config__cluster_resource_restore_scope) -> ()

let yojson_of_restore_config__cluster_resource_restore_scope =
  (function
   | {
       all_group_kinds = v_all_group_kinds;
       no_group_kinds = v_no_group_kinds;
       excluded_group_kinds = v_excluded_group_kinds;
       selected_group_kinds = v_selected_group_kinds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_selected_group_kinds then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_restore_config__cluster_resource_restore_scope__selected_group_kinds)
               v_selected_group_kinds
           in
           let bnd = "selected_group_kinds", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_excluded_group_kinds then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_restore_config__cluster_resource_restore_scope__excluded_group_kinds)
               v_excluded_group_kinds
           in
           let bnd = "excluded_group_kinds", arg in
           bnd :: bnds
       in
       let bnds =
         match v_no_group_kinds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "no_group_kinds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_all_group_kinds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "all_group_kinds", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : restore_config__cluster_resource_restore_scope ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_restore_config__cluster_resource_restore_scope

[@@@deriving.end]

type restore_config__excluded_namespaces = {
  namespaces : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : restore_config__excluded_namespaces) -> ()

let yojson_of_restore_config__excluded_namespaces =
  (function
   | { namespaces = v_namespaces } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_namespaces then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_namespaces
           in
           let bnd = "namespaces", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : restore_config__excluded_namespaces ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_restore_config__excluded_namespaces

[@@@deriving.end]

type restore_config__selected_applications__namespaced_names = {
  name : string prop;
  namespace : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : restore_config__selected_applications__namespaced_names) ->
  ()

let yojson_of_restore_config__selected_applications__namespaced_names
    =
  (function
   | { name = v_name; namespace = v_namespace } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_namespace in
         ("namespace", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : restore_config__selected_applications__namespaced_names ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_restore_config__selected_applications__namespaced_names

[@@@deriving.end]

type restore_config__selected_applications = {
  namespaced_names :
    restore_config__selected_applications__namespaced_names list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : restore_config__selected_applications) -> ()

let yojson_of_restore_config__selected_applications =
  (function
   | { namespaced_names = v_namespaced_names } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_namespaced_names then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_restore_config__selected_applications__namespaced_names)
               v_namespaced_names
           in
           let bnd = "namespaced_names", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : restore_config__selected_applications ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_restore_config__selected_applications

[@@@deriving.end]

type restore_config__selected_namespaces = {
  namespaces : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : restore_config__selected_namespaces) -> ()

let yojson_of_restore_config__selected_namespaces =
  (function
   | { namespaces = v_namespaces } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_namespaces then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_namespaces
           in
           let bnd = "namespaces", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : restore_config__selected_namespaces ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_restore_config__selected_namespaces

[@@@deriving.end]

type restore_config__transformation_rules__field_actions = {
  from_path : string prop option; [@option]
  op : string prop;
  path : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : restore_config__transformation_rules__field_actions) -> ()

let yojson_of_restore_config__transformation_rules__field_actions =
  (function
   | {
       from_path = v_from_path;
       op = v_op;
       path = v_path;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
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
         let arg = yojson_of_prop yojson_of_string v_op in
         ("op", arg) :: bnds
       in
       let bnds =
         match v_from_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "from_path", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : restore_config__transformation_rules__field_actions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_restore_config__transformation_rules__field_actions

[@@@deriving.end]

type restore_config__transformation_rules__resource_filter__group_kinds = {
  resource_group : string prop option; [@option]
  resource_kind : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       restore_config__transformation_rules__resource_filter__group_kinds) ->
  ()

let yojson_of_restore_config__transformation_rules__resource_filter__group_kinds
    =
  (function
   | {
       resource_group = v_resource_group;
       resource_kind = v_resource_kind;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_resource_kind with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_kind", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_group", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : restore_config__transformation_rules__resource_filter__group_kinds ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_restore_config__transformation_rules__resource_filter__group_kinds

[@@@deriving.end]

type restore_config__transformation_rules__resource_filter = {
  json_path : string prop option; [@option]
  namespaces : string prop list option; [@option]
  group_kinds :
    restore_config__transformation_rules__resource_filter__group_kinds
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : restore_config__transformation_rules__resource_filter) ->
  ()

let yojson_of_restore_config__transformation_rules__resource_filter =
  (function
   | {
       json_path = v_json_path;
       namespaces = v_namespaces;
       group_kinds = v_group_kinds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_group_kinds then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_restore_config__transformation_rules__resource_filter__group_kinds)
               v_group_kinds
           in
           let bnd = "group_kinds", arg in
           bnd :: bnds
       in
       let bnds =
         match v_namespaces with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "namespaces", arg in
             bnd :: bnds
       in
       let bnds =
         match v_json_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "json_path", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : restore_config__transformation_rules__resource_filter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_restore_config__transformation_rules__resource_filter

[@@@deriving.end]

type restore_config__transformation_rules = {
  description : string prop option; [@option]
  field_actions :
    restore_config__transformation_rules__field_actions list;
      [@default []] [@yojson_drop_default ( = )]
  resource_filter :
    restore_config__transformation_rules__resource_filter list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : restore_config__transformation_rules) -> ()

let yojson_of_restore_config__transformation_rules =
  (function
   | {
       description = v_description;
       field_actions = v_field_actions;
       resource_filter = v_resource_filter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_resource_filter then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_restore_config__transformation_rules__resource_filter)
               v_resource_filter
           in
           let bnd = "resource_filter", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_field_actions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_restore_config__transformation_rules__field_actions)
               v_field_actions
           in
           let bnd = "field_actions", arg in
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
    : restore_config__transformation_rules ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_restore_config__transformation_rules

[@@@deriving.end]

type restore_config = {
  all_namespaces : bool prop option; [@option]
  cluster_resource_conflict_policy : string prop option; [@option]
  namespaced_resource_restore_mode : string prop option; [@option]
  no_namespaces : bool prop option; [@option]
  volume_data_restore_policy : string prop option; [@option]
  cluster_resource_restore_scope :
    restore_config__cluster_resource_restore_scope list;
      [@default []] [@yojson_drop_default ( = )]
  excluded_namespaces : restore_config__excluded_namespaces list;
      [@default []] [@yojson_drop_default ( = )]
  selected_applications : restore_config__selected_applications list;
      [@default []] [@yojson_drop_default ( = )]
  selected_namespaces : restore_config__selected_namespaces list;
      [@default []] [@yojson_drop_default ( = )]
  transformation_rules : restore_config__transformation_rules list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : restore_config) -> ()

let yojson_of_restore_config =
  (function
   | {
       all_namespaces = v_all_namespaces;
       cluster_resource_conflict_policy =
         v_cluster_resource_conflict_policy;
       namespaced_resource_restore_mode =
         v_namespaced_resource_restore_mode;
       no_namespaces = v_no_namespaces;
       volume_data_restore_policy = v_volume_data_restore_policy;
       cluster_resource_restore_scope =
         v_cluster_resource_restore_scope;
       excluded_namespaces = v_excluded_namespaces;
       selected_applications = v_selected_applications;
       selected_namespaces = v_selected_namespaces;
       transformation_rules = v_transformation_rules;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_transformation_rules then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_restore_config__transformation_rules)
               v_transformation_rules
           in
           let bnd = "transformation_rules", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_selected_namespaces then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_restore_config__selected_namespaces)
               v_selected_namespaces
           in
           let bnd = "selected_namespaces", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_selected_applications then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_restore_config__selected_applications)
               v_selected_applications
           in
           let bnd = "selected_applications", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_excluded_namespaces then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_restore_config__excluded_namespaces)
               v_excluded_namespaces
           in
           let bnd = "excluded_namespaces", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_cluster_resource_restore_scope then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_restore_config__cluster_resource_restore_scope)
               v_cluster_resource_restore_scope
           in
           let bnd = "cluster_resource_restore_scope", arg in
           bnd :: bnds
       in
       let bnds =
         match v_volume_data_restore_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "volume_data_restore_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_no_namespaces with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "no_namespaces", arg in
             bnd :: bnds
       in
       let bnds =
         match v_namespaced_resource_restore_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "namespaced_resource_restore_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cluster_resource_conflict_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cluster_resource_conflict_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_all_namespaces with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "all_namespaces", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : restore_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_restore_config

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

type google_gke_backup_restore_plan = {
  backup_plan : string prop;
  cluster : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
  restore_config : restore_config list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_gke_backup_restore_plan) -> ()

let yojson_of_google_gke_backup_restore_plan =
  (function
   | {
       backup_plan = v_backup_plan;
       cluster = v_cluster;
       description = v_description;
       id = v_id;
       labels = v_labels;
       location = v_location;
       name = v_name;
       project = v_project;
       restore_config = v_restore_config;
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
         if [] = v_restore_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_restore_config)
               v_restore_config
           in
           let bnd = "restore_config", arg in
           bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster in
         ("cluster", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_backup_plan in
         ("backup_plan", arg) :: bnds
       in
       `Assoc bnds
    : google_gke_backup_restore_plan ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_gke_backup_restore_plan

[@@@deriving.end]

let restore_config__cluster_resource_restore_scope__excluded_group_kinds
    ?resource_group ?resource_kind () :
    restore_config__cluster_resource_restore_scope__excluded_group_kinds
    =
  { resource_group; resource_kind }

let restore_config__cluster_resource_restore_scope__selected_group_kinds
    ?resource_group ?resource_kind () :
    restore_config__cluster_resource_restore_scope__selected_group_kinds
    =
  { resource_group; resource_kind }

let restore_config__cluster_resource_restore_scope ?all_group_kinds
    ?no_group_kinds ?(excluded_group_kinds = [])
    ?(selected_group_kinds = []) () :
    restore_config__cluster_resource_restore_scope =
  {
    all_group_kinds;
    no_group_kinds;
    excluded_group_kinds;
    selected_group_kinds;
  }

let restore_config__excluded_namespaces ~namespaces () :
    restore_config__excluded_namespaces =
  { namespaces }

let restore_config__selected_applications__namespaced_names ~name
    ~namespace () :
    restore_config__selected_applications__namespaced_names =
  { name; namespace }

let restore_config__selected_applications ~namespaced_names () :
    restore_config__selected_applications =
  { namespaced_names }

let restore_config__selected_namespaces ~namespaces () :
    restore_config__selected_namespaces =
  { namespaces }

let restore_config__transformation_rules__field_actions ?from_path
    ?path ?value ~op () :
    restore_config__transformation_rules__field_actions =
  { from_path; op; path; value }

let restore_config__transformation_rules__resource_filter__group_kinds
    ?resource_group ?resource_kind () :
    restore_config__transformation_rules__resource_filter__group_kinds
    =
  { resource_group; resource_kind }

let restore_config__transformation_rules__resource_filter ?json_path
    ?namespaces ?(group_kinds = []) () :
    restore_config__transformation_rules__resource_filter =
  { json_path; namespaces; group_kinds }

let restore_config__transformation_rules ?description
    ?(resource_filter = []) ~field_actions () :
    restore_config__transformation_rules =
  { description; field_actions; resource_filter }

let restore_config ?all_namespaces ?cluster_resource_conflict_policy
    ?namespaced_resource_restore_mode ?no_namespaces
    ?volume_data_restore_policy
    ?(cluster_resource_restore_scope = [])
    ?(excluded_namespaces = []) ?(selected_applications = [])
    ?(selected_namespaces = []) ?(transformation_rules = []) () :
    restore_config =
  {
    all_namespaces;
    cluster_resource_conflict_policy;
    namespaced_resource_restore_mode;
    no_namespaces;
    volume_data_restore_policy;
    cluster_resource_restore_scope;
    excluded_namespaces;
    selected_applications;
    selected_namespaces;
    transformation_rules;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_gke_backup_restore_plan ?description ?id ?labels ?project
    ?timeouts ~backup_plan ~cluster ~location ~name ~restore_config
    () : google_gke_backup_restore_plan =
  {
    backup_plan;
    cluster;
    description;
    id;
    labels;
    location;
    name;
    project;
    restore_config;
    timeouts;
  }

type t = {
  tf_name : string;
  backup_plan : string prop;
  cluster : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  state_reason : string prop;
  terraform_labels : (string * string) list prop;
  uid : string prop;
}

let make ?description ?id ?labels ?project ?timeouts ~backup_plan
    ~cluster ~location ~name ~restore_config __id =
  let __type = "google_gke_backup_restore_plan" in
  let __attrs =
    ({
       tf_name = __id;
       backup_plan = Prop.computed __type __id "backup_plan";
       cluster = Prop.computed __type __id "cluster";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       state = Prop.computed __type __id "state";
       state_reason = Prop.computed __type __id "state_reason";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       uid = Prop.computed __type __id "uid";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_gke_backup_restore_plan
        (google_gke_backup_restore_plan ?description ?id ?labels
           ?project ?timeouts ~backup_plan ~cluster ~location ~name
           ~restore_config ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?labels ?project ?timeouts
    ~backup_plan ~cluster ~location ~name ~restore_config __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?labels ?project ?timeouts ~backup_plan
      ~cluster ~location ~name ~restore_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
