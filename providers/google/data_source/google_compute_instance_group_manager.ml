(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type all_instances_config = {
  labels : (string * string prop) list;
  metadata : (string * string prop) list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : all_instances_config) -> ()

let yojson_of_all_instances_config =
  (function
   | { labels = v_labels; metadata = v_metadata } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_metadata
         in
         ("metadata", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_labels
         in
         ("labels", arg) :: bnds
       in
       `Assoc bnds
    : all_instances_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_all_instances_config

[@@@deriving.end]

type auto_healing_policies = {
  health_check : string prop;
  initial_delay_sec : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auto_healing_policies) -> ()

let yojson_of_auto_healing_policies =
  (function
   | {
       health_check = v_health_check;
       initial_delay_sec = v_initial_delay_sec;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_initial_delay_sec
         in
         ("initial_delay_sec", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_health_check in
         ("health_check", arg) :: bnds
       in
       `Assoc bnds
    : auto_healing_policies -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auto_healing_policies

[@@@deriving.end]

type instance_lifecycle_policy = {
  default_action_on_failure : string prop;
  force_update_on_repair : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : instance_lifecycle_policy) -> ()

let yojson_of_instance_lifecycle_policy =
  (function
   | {
       default_action_on_failure = v_default_action_on_failure;
       force_update_on_repair = v_force_update_on_repair;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_force_update_on_repair
         in
         ("force_update_on_repair", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_default_action_on_failure
         in
         ("default_action_on_failure", arg) :: bnds
       in
       `Assoc bnds
    : instance_lifecycle_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_lifecycle_policy

[@@@deriving.end]

type named_port = { name : string prop; port : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : named_port) -> ()

let yojson_of_named_port =
  (function
   | { name = v_name; port = v_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : named_port -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_named_port

[@@@deriving.end]

type stateful_disk = {
  delete_rule : string prop;
  device_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : stateful_disk) -> ()

let yojson_of_stateful_disk =
  (function
   | { delete_rule = v_delete_rule; device_name = v_device_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_device_name in
         ("device_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_delete_rule in
         ("delete_rule", arg) :: bnds
       in
       `Assoc bnds
    : stateful_disk -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_stateful_disk

[@@@deriving.end]

type stateful_external_ip = {
  delete_rule : string prop;
  interface_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : stateful_external_ip) -> ()

let yojson_of_stateful_external_ip =
  (function
   | {
       delete_rule = v_delete_rule;
       interface_name = v_interface_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_interface_name
         in
         ("interface_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_delete_rule in
         ("delete_rule", arg) :: bnds
       in
       `Assoc bnds
    : stateful_external_ip -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_stateful_external_ip

[@@@deriving.end]

type stateful_internal_ip = {
  delete_rule : string prop;
  interface_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : stateful_internal_ip) -> ()

let yojson_of_stateful_internal_ip =
  (function
   | {
       delete_rule = v_delete_rule;
       interface_name = v_interface_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_interface_name
         in
         ("interface_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_delete_rule in
         ("delete_rule", arg) :: bnds
       in
       `Assoc bnds
    : stateful_internal_ip -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_stateful_internal_ip

[@@@deriving.end]

type status__version_target = { is_reached : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : status__version_target) -> ()

let yojson_of_status__version_target =
  (function
   | { is_reached = v_is_reached } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_is_reached in
         ("is_reached", arg) :: bnds
       in
       `Assoc bnds
    : status__version_target -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status__version_target

[@@@deriving.end]

type status__stateful__per_instance_configs = {
  all_effective : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : status__stateful__per_instance_configs) -> ()

let yojson_of_status__stateful__per_instance_configs =
  (function
   | { all_effective = v_all_effective } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_all_effective in
         ("all_effective", arg) :: bnds
       in
       `Assoc bnds
    : status__stateful__per_instance_configs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status__stateful__per_instance_configs

[@@@deriving.end]

type status__stateful = {
  has_stateful_config : bool prop;
  per_instance_configs : status__stateful__per_instance_configs list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : status__stateful) -> ()

let yojson_of_status__stateful =
  (function
   | {
       has_stateful_config = v_has_stateful_config;
       per_instance_configs = v_per_instance_configs;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_status__stateful__per_instance_configs
             v_per_instance_configs
         in
         ("per_instance_configs", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_has_stateful_config
         in
         ("has_stateful_config", arg) :: bnds
       in
       `Assoc bnds
    : status__stateful -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status__stateful

[@@@deriving.end]

type status__all_instances_config = { effective : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : status__all_instances_config) -> ()

let yojson_of_status__all_instances_config =
  (function
   | { effective = v_effective } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_effective in
         ("effective", arg) :: bnds
       in
       `Assoc bnds
    : status__all_instances_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status__all_instances_config

[@@@deriving.end]

type status = {
  all_instances_config : status__all_instances_config list;
  is_stable : bool prop;
  stateful : status__stateful list;
  version_target : status__version_target list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : status) -> ()

let yojson_of_status =
  (function
   | {
       all_instances_config = v_all_instances_config;
       is_stable = v_is_stable;
       stateful = v_stateful;
       version_target = v_version_target;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_status__version_target
             v_version_target
         in
         ("version_target", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_status__stateful v_stateful
         in
         ("stateful", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_is_stable in
         ("is_stable", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_status__all_instances_config
             v_all_instances_config
         in
         ("all_instances_config", arg) :: bnds
       in
       `Assoc bnds
    : status -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status

[@@@deriving.end]

type update_policy = {
  max_surge_fixed : float prop;
  max_surge_percent : float prop;
  max_unavailable_fixed : float prop;
  max_unavailable_percent : float prop;
  minimal_action : string prop;
  most_disruptive_allowed_action : string prop;
  replacement_method : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : update_policy) -> ()

let yojson_of_update_policy =
  (function
   | {
       max_surge_fixed = v_max_surge_fixed;
       max_surge_percent = v_max_surge_percent;
       max_unavailable_fixed = v_max_unavailable_fixed;
       max_unavailable_percent = v_max_unavailable_percent;
       minimal_action = v_minimal_action;
       most_disruptive_allowed_action =
         v_most_disruptive_allowed_action;
       replacement_method = v_replacement_method;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_replacement_method
         in
         ("replacement_method", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_most_disruptive_allowed_action
         in
         ("most_disruptive_allowed_action", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_minimal_action
         in
         ("minimal_action", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_unavailable_percent
         in
         ("max_unavailable_percent", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_unavailable_fixed
         in
         ("max_unavailable_fixed", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_surge_percent
         in
         ("max_surge_percent", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_surge_fixed
         in
         ("max_surge_fixed", arg) :: bnds
       in
       `Assoc bnds
    : update_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_update_policy

[@@@deriving.end]

type version__target_size = {
  fixed : float prop;
  percent : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : version__target_size) -> ()

let yojson_of_version__target_size =
  (function
   | { fixed = v_fixed; percent = v_percent } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_percent in
         ("percent", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_fixed in
         ("fixed", arg) :: bnds
       in
       `Assoc bnds
    : version__target_size -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_version__target_size

[@@@deriving.end]

type version = {
  instance_template : string prop;
  name : string prop;
  target_size : version__target_size list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : version) -> ()

let yojson_of_version =
  (function
   | {
       instance_template = v_instance_template;
       name = v_name;
       target_size = v_target_size;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_version__target_size
             v_target_size
         in
         ("target_size", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_instance_template
         in
         ("instance_template", arg) :: bnds
       in
       `Assoc bnds
    : version -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_version

[@@@deriving.end]

type google_compute_instance_group_manager = {
  id : string prop option; [@option]
  name : string prop option; [@option]
  project : string prop option; [@option]
  self_link : string prop option; [@option]
  zone : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_instance_group_manager) -> ()

let yojson_of_google_compute_instance_group_manager =
  (function
   | {
       id = v_id;
       name = v_name;
       project = v_project;
       self_link = v_self_link;
       zone = v_zone;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_self_link with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "self_link", arg in
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
       `Assoc bnds
    : google_compute_instance_group_manager ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_instance_group_manager

[@@@deriving.end]

let google_compute_instance_group_manager ?id ?name ?project
    ?self_link ?zone () : google_compute_instance_group_manager =
  { id; name; project; self_link; zone }

type t = {
  tf_name : string;
  all_instances_config : all_instances_config list prop;
  auto_healing_policies : auto_healing_policies list prop;
  base_instance_name : string prop;
  creation_timestamp : string prop;
  description : string prop;
  fingerprint : string prop;
  id : string prop;
  instance_group : string prop;
  instance_lifecycle_policy : instance_lifecycle_policy list prop;
  list_managed_instances_results : string prop;
  name : string prop;
  named_port : named_port list prop;
  operation : string prop;
  project : string prop;
  self_link : string prop;
  stateful_disk : stateful_disk list prop;
  stateful_external_ip : stateful_external_ip list prop;
  stateful_internal_ip : stateful_internal_ip list prop;
  status : status list prop;
  target_pools : string list prop;
  target_size : float prop;
  update_policy : update_policy list prop;
  version : version list prop;
  wait_for_instances : bool prop;
  wait_for_instances_status : string prop;
  zone : string prop;
}

let make ?id ?name ?project ?self_link ?zone __id =
  let __type = "google_compute_instance_group_manager" in
  let __attrs =
    ({
       tf_name = __id;
       all_instances_config =
         Prop.computed __type __id "all_instances_config";
       auto_healing_policies =
         Prop.computed __type __id "auto_healing_policies";
       base_instance_name =
         Prop.computed __type __id "base_instance_name";
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       fingerprint = Prop.computed __type __id "fingerprint";
       id = Prop.computed __type __id "id";
       instance_group = Prop.computed __type __id "instance_group";
       instance_lifecycle_policy =
         Prop.computed __type __id "instance_lifecycle_policy";
       list_managed_instances_results =
         Prop.computed __type __id "list_managed_instances_results";
       name = Prop.computed __type __id "name";
       named_port = Prop.computed __type __id "named_port";
       operation = Prop.computed __type __id "operation";
       project = Prop.computed __type __id "project";
       self_link = Prop.computed __type __id "self_link";
       stateful_disk = Prop.computed __type __id "stateful_disk";
       stateful_external_ip =
         Prop.computed __type __id "stateful_external_ip";
       stateful_internal_ip =
         Prop.computed __type __id "stateful_internal_ip";
       status = Prop.computed __type __id "status";
       target_pools = Prop.computed __type __id "target_pools";
       target_size = Prop.computed __type __id "target_size";
       update_policy = Prop.computed __type __id "update_policy";
       version = Prop.computed __type __id "version";
       wait_for_instances =
         Prop.computed __type __id "wait_for_instances";
       wait_for_instances_status =
         Prop.computed __type __id "wait_for_instances_status";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_instance_group_manager
        (google_compute_instance_group_manager ?id ?name ?project
           ?self_link ?zone ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?project ?self_link ?zone __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?project ?self_link ?zone __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
