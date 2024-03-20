(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type metadata = {
  annotations : (string * string prop) list option; [@option]
  labels : (string * string prop) list option; [@option]
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : metadata) -> ()

let yojson_of_metadata =
  (function
   | {
       annotations = v_annotations;
       labels = v_labels;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_annotations with
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
             let bnd = "annotations", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : metadata -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metadata

[@@@deriving.end]

type spec__allowed_flex_volumes = { driver : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__allowed_flex_volumes) -> ()

let yojson_of_spec__allowed_flex_volumes =
  (function
   | { driver = v_driver } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_driver in
         ("driver", arg) :: bnds
       in
       `Assoc bnds
    : spec__allowed_flex_volumes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__allowed_flex_volumes

[@@@deriving.end]

type spec__allowed_host_paths = {
  path_prefix : string prop;
  read_only : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__allowed_host_paths) -> ()

let yojson_of_spec__allowed_host_paths =
  (function
   | { path_prefix = v_path_prefix; read_only = v_read_only } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_only", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path_prefix in
         ("path_prefix", arg) :: bnds
       in
       `Assoc bnds
    : spec__allowed_host_paths -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__allowed_host_paths

[@@@deriving.end]

type spec__fs_group__range = { max : float prop; min : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__fs_group__range) -> ()

let yojson_of_spec__fs_group__range =
  (function
   | { max = v_max; min = v_min } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_min in
         ("min", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max in
         ("max", arg) :: bnds
       in
       `Assoc bnds
    : spec__fs_group__range -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__fs_group__range

[@@@deriving.end]

type spec__fs_group = {
  rule : string prop;
  range : spec__fs_group__range list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__fs_group) -> ()

let yojson_of_spec__fs_group =
  (function
   | { rule = v_rule; range = v_range } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__fs_group__range v_range
         in
         ("range", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rule in
         ("rule", arg) :: bnds
       in
       `Assoc bnds
    : spec__fs_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__fs_group

[@@@deriving.end]

type spec__host_ports = { max : float prop; min : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__host_ports) -> ()

let yojson_of_spec__host_ports =
  (function
   | { max = v_max; min = v_min } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_min in
         ("min", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max in
         ("max", arg) :: bnds
       in
       `Assoc bnds
    : spec__host_ports -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__host_ports

[@@@deriving.end]

type spec__run_as_group__range = {
  max : float prop;
  min : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__run_as_group__range) -> ()

let yojson_of_spec__run_as_group__range =
  (function
   | { max = v_max; min = v_min } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_min in
         ("min", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max in
         ("max", arg) :: bnds
       in
       `Assoc bnds
    : spec__run_as_group__range -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__run_as_group__range

[@@@deriving.end]

type spec__run_as_group = {
  rule : string prop;
  range : spec__run_as_group__range list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__run_as_group) -> ()

let yojson_of_spec__run_as_group =
  (function
   | { rule = v_rule; range = v_range } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__run_as_group__range v_range
         in
         ("range", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rule in
         ("rule", arg) :: bnds
       in
       `Assoc bnds
    : spec__run_as_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__run_as_group

[@@@deriving.end]

type spec__run_as_user__range = {
  max : float prop;
  min : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__run_as_user__range) -> ()

let yojson_of_spec__run_as_user__range =
  (function
   | { max = v_max; min = v_min } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_min in
         ("min", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max in
         ("max", arg) :: bnds
       in
       `Assoc bnds
    : spec__run_as_user__range -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__run_as_user__range

[@@@deriving.end]

type spec__run_as_user = {
  rule : string prop;
  range : spec__run_as_user__range list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__run_as_user) -> ()

let yojson_of_spec__run_as_user =
  (function
   | { rule = v_rule; range = v_range } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__run_as_user__range v_range
         in
         ("range", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rule in
         ("rule", arg) :: bnds
       in
       `Assoc bnds
    : spec__run_as_user -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__run_as_user

[@@@deriving.end]

type spec__se_linux__se_linux_options = {
  level : string prop;
  role : string prop;
  type_ : string prop; [@key "type"]
  user : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__se_linux__se_linux_options) -> ()

let yojson_of_spec__se_linux__se_linux_options =
  (function
   | {
       level = v_level;
       role = v_role;
       type_ = v_type_;
       user = v_user;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user in
         ("user", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role in
         ("role", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_level in
         ("level", arg) :: bnds
       in
       `Assoc bnds
    : spec__se_linux__se_linux_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__se_linux__se_linux_options

[@@@deriving.end]

type spec__se_linux = {
  rule : string prop;
  se_linux_options : spec__se_linux__se_linux_options list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__se_linux) -> ()

let yojson_of_spec__se_linux =
  (function
   | { rule = v_rule; se_linux_options = v_se_linux_options } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__se_linux__se_linux_options
             v_se_linux_options
         in
         ("se_linux_options", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rule in
         ("rule", arg) :: bnds
       in
       `Assoc bnds
    : spec__se_linux -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__se_linux

[@@@deriving.end]

type spec__supplemental_groups__range = {
  max : float prop;
  min : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__supplemental_groups__range) -> ()

let yojson_of_spec__supplemental_groups__range =
  (function
   | { max = v_max; min = v_min } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_min in
         ("min", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max in
         ("max", arg) :: bnds
       in
       `Assoc bnds
    : spec__supplemental_groups__range ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__supplemental_groups__range

[@@@deriving.end]

type spec__supplemental_groups = {
  rule : string prop;
  range : spec__supplemental_groups__range list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__supplemental_groups) -> ()

let yojson_of_spec__supplemental_groups =
  (function
   | { rule = v_rule; range = v_range } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__supplemental_groups__range
             v_range
         in
         ("range", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rule in
         ("rule", arg) :: bnds
       in
       `Assoc bnds
    : spec__supplemental_groups -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__supplemental_groups

[@@@deriving.end]

type spec = {
  allow_privilege_escalation : bool prop option; [@option]
  allowed_capabilities : string prop list option; [@option]
  allowed_proc_mount_types : string prop list option; [@option]
  allowed_unsafe_sysctls : string prop list option; [@option]
  default_add_capabilities : string prop list option; [@option]
  default_allow_privilege_escalation : bool prop option; [@option]
  forbidden_sysctls : string prop list option; [@option]
  host_ipc : bool prop option; [@option]
  host_network : bool prop option; [@option]
  host_pid : bool prop option; [@option]
  privileged : bool prop option; [@option]
  read_only_root_filesystem : bool prop option; [@option]
  required_drop_capabilities : string prop list option; [@option]
  volumes : string prop list option; [@option]
  allowed_flex_volumes : spec__allowed_flex_volumes list;
  allowed_host_paths : spec__allowed_host_paths list;
  fs_group : spec__fs_group list;
  host_ports : spec__host_ports list;
  run_as_group : spec__run_as_group list;
  run_as_user : spec__run_as_user list;
  se_linux : spec__se_linux list;
  supplemental_groups : spec__supplemental_groups list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec) -> ()

let yojson_of_spec =
  (function
   | {
       allow_privilege_escalation = v_allow_privilege_escalation;
       allowed_capabilities = v_allowed_capabilities;
       allowed_proc_mount_types = v_allowed_proc_mount_types;
       allowed_unsafe_sysctls = v_allowed_unsafe_sysctls;
       default_add_capabilities = v_default_add_capabilities;
       default_allow_privilege_escalation =
         v_default_allow_privilege_escalation;
       forbidden_sysctls = v_forbidden_sysctls;
       host_ipc = v_host_ipc;
       host_network = v_host_network;
       host_pid = v_host_pid;
       privileged = v_privileged;
       read_only_root_filesystem = v_read_only_root_filesystem;
       required_drop_capabilities = v_required_drop_capabilities;
       volumes = v_volumes;
       allowed_flex_volumes = v_allowed_flex_volumes;
       allowed_host_paths = v_allowed_host_paths;
       fs_group = v_fs_group;
       host_ports = v_host_ports;
       run_as_group = v_run_as_group;
       run_as_user = v_run_as_user;
       se_linux = v_se_linux;
       supplemental_groups = v_supplemental_groups;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__supplemental_groups
             v_supplemental_groups
         in
         ("supplemental_groups", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__se_linux v_se_linux
         in
         ("se_linux", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__run_as_user v_run_as_user
         in
         ("run_as_user", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__run_as_group v_run_as_group
         in
         ("run_as_group", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__host_ports v_host_ports
         in
         ("host_ports", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__fs_group v_fs_group
         in
         ("fs_group", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__allowed_host_paths
             v_allowed_host_paths
         in
         ("allowed_host_paths", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__allowed_flex_volumes
             v_allowed_flex_volumes
         in
         ("allowed_flex_volumes", arg) :: bnds
       in
       let bnds =
         match v_volumes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "volumes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_required_drop_capabilities with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "required_drop_capabilities", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read_only_root_filesystem with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_only_root_filesystem", arg in
             bnd :: bnds
       in
       let bnds =
         match v_privileged with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "privileged", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host_pid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "host_pid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host_network with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "host_network", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host_ipc with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "host_ipc", arg in
             bnd :: bnds
       in
       let bnds =
         match v_forbidden_sysctls with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "forbidden_sysctls", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_allow_privilege_escalation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "default_allow_privilege_escalation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_add_capabilities with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "default_add_capabilities", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_unsafe_sysctls with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_unsafe_sysctls", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_proc_mount_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_proc_mount_types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_capabilities with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_capabilities", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_privilege_escalation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_privilege_escalation", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec

[@@@deriving.end]

type kubernetes_pod_security_policy = {
  id : string prop option; [@option]
  metadata : metadata list;
  spec : spec list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kubernetes_pod_security_policy) -> ()

let yojson_of_kubernetes_pod_security_policy =
  (function
   | { id = v_id; metadata = v_metadata; spec = v_spec } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_spec v_spec in
         ("spec", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_metadata v_metadata in
         ("metadata", arg) :: bnds
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
    : kubernetes_pod_security_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kubernetes_pod_security_policy

[@@@deriving.end]

let metadata ?annotations ?labels ?name () : metadata =
  { annotations; labels; name }

let spec__allowed_flex_volumes ~driver () :
    spec__allowed_flex_volumes =
  { driver }

let spec__allowed_host_paths ?read_only ~path_prefix () :
    spec__allowed_host_paths =
  { path_prefix; read_only }

let spec__fs_group__range ~max ~min () : spec__fs_group__range =
  { max; min }

let spec__fs_group ~rule ~range () : spec__fs_group = { rule; range }
let spec__host_ports ~max ~min () : spec__host_ports = { max; min }

let spec__run_as_group__range ~max ~min () :
    spec__run_as_group__range =
  { max; min }

let spec__run_as_group ~rule ~range () : spec__run_as_group =
  { rule; range }

let spec__run_as_user__range ~max ~min () : spec__run_as_user__range
    =
  { max; min }

let spec__run_as_user ~rule ~range () : spec__run_as_user =
  { rule; range }

let spec__se_linux__se_linux_options ~level ~role ~type_ ~user () :
    spec__se_linux__se_linux_options =
  { level; role; type_; user }

let spec__se_linux ~rule ~se_linux_options () : spec__se_linux =
  { rule; se_linux_options }

let spec__supplemental_groups__range ~max ~min () :
    spec__supplemental_groups__range =
  { max; min }

let spec__supplemental_groups ~rule ~range () :
    spec__supplemental_groups =
  { rule; range }

let spec ?allow_privilege_escalation ?allowed_capabilities
    ?allowed_proc_mount_types ?allowed_unsafe_sysctls
    ?default_add_capabilities ?default_allow_privilege_escalation
    ?forbidden_sysctls ?host_ipc ?host_network ?host_pid ?privileged
    ?read_only_root_filesystem ?required_drop_capabilities ?volumes
    ~allowed_flex_volumes ~allowed_host_paths ~fs_group ~host_ports
    ~run_as_group ~run_as_user ~se_linux ~supplemental_groups () :
    spec =
  {
    allow_privilege_escalation;
    allowed_capabilities;
    allowed_proc_mount_types;
    allowed_unsafe_sysctls;
    default_add_capabilities;
    default_allow_privilege_escalation;
    forbidden_sysctls;
    host_ipc;
    host_network;
    host_pid;
    privileged;
    read_only_root_filesystem;
    required_drop_capabilities;
    volumes;
    allowed_flex_volumes;
    allowed_host_paths;
    fs_group;
    host_ports;
    run_as_group;
    run_as_user;
    se_linux;
    supplemental_groups;
  }

let kubernetes_pod_security_policy ?id ~metadata ~spec () :
    kubernetes_pod_security_policy =
  { id; metadata; spec }

type t = { id : string prop }

let make ?id ~metadata ~spec __id =
  let __type = "kubernetes_pod_security_policy" in
  let __attrs = ({ id = Prop.computed __type __id "id" } : t) in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_kubernetes_pod_security_policy
        (kubernetes_pod_security_policy ?id ~metadata ~spec ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~metadata ~spec __id =
  let (r : _ Tf_core.resource) = make ?id ~metadata ~spec __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
