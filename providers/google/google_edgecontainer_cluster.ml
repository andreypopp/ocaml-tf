(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type authorization__admin_users = { username : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : authorization__admin_users) -> ()

let yojson_of_authorization__admin_users =
  (function
   | { username = v_username } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       `Assoc bnds
    : authorization__admin_users -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_authorization__admin_users

[@@@deriving.end]

type authorization = {
  admin_users : authorization__admin_users list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : authorization) -> ()

let yojson_of_authorization =
  (function
   | { admin_users = v_admin_users } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_admin_users then bnds
         else
           let arg =
             (yojson_of_list yojson_of_authorization__admin_users)
               v_admin_users
           in
           let bnd = "admin_users", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : authorization -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_authorization

[@@@deriving.end]

type control_plane__local = {
  machine_filter : string prop option; [@option]
  node_count : float prop option; [@option]
  node_location : string prop option; [@option]
  shared_deployment_policy : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : control_plane__local) -> ()

let yojson_of_control_plane__local =
  (function
   | {
       machine_filter = v_machine_filter;
       node_count = v_node_count;
       node_location = v_node_location;
       shared_deployment_policy = v_shared_deployment_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_shared_deployment_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "shared_deployment_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_node_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "node_location", arg in
             bnd :: bnds
       in
       let bnds =
         match v_node_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "node_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_machine_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "machine_filter", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : control_plane__local -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_control_plane__local

[@@@deriving.end]

type control_plane__remote = {
  node_location : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : control_plane__remote) -> ()

let yojson_of_control_plane__remote =
  (function
   | { node_location = v_node_location } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_node_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "node_location", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : control_plane__remote -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_control_plane__remote

[@@@deriving.end]

type control_plane = {
  local : control_plane__local list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  remote : control_plane__remote list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : control_plane) -> ()

let yojson_of_control_plane =
  (function
   | { local = v_local; remote = v_remote } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_remote then bnds
         else
           let arg =
             (yojson_of_list yojson_of_control_plane__remote)
               v_remote
           in
           let bnd = "remote", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_local then bnds
         else
           let arg =
             (yojson_of_list yojson_of_control_plane__local) v_local
           in
           let bnd = "local", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : control_plane -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_control_plane

[@@@deriving.end]

type control_plane_encryption__kms_status = {
  code : float prop;
  message : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : control_plane_encryption__kms_status) -> ()

let yojson_of_control_plane_encryption__kms_status =
  (function
   | { code = v_code; message = v_message } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_message in
         ("message", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_code in
         ("code", arg) :: bnds
       in
       `Assoc bnds
    : control_plane_encryption__kms_status ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_control_plane_encryption__kms_status

[@@@deriving.end]

type control_plane_encryption = {
  kms_key : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : control_plane_encryption) -> ()

let yojson_of_control_plane_encryption =
  (function
   | { kms_key = v_kms_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_kms_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : control_plane_encryption -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_control_plane_encryption

[@@@deriving.end]

type fleet = { project : string prop } [@@deriving_inline yojson_of]

let _ = fun (_ : fleet) -> ()

let yojson_of_fleet =
  (function
   | { project = v_project } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project in
         ("project", arg) :: bnds
       in
       `Assoc bnds
    : fleet -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_fleet

[@@@deriving.end]

type maintenance_policy__maintenance_exclusions__window = {
  end_time : string prop option; [@option]
  start_time : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : maintenance_policy__maintenance_exclusions__window) -> ()

let yojson_of_maintenance_policy__maintenance_exclusions__window =
  (function
   | { end_time = v_end_time; start_time = v_start_time } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       `Assoc bnds
    : maintenance_policy__maintenance_exclusions__window ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_maintenance_policy__maintenance_exclusions__window

[@@@deriving.end]

type maintenance_policy__maintenance_exclusions = {
  id : string prop option; [@option]
  window : maintenance_policy__maintenance_exclusions__window list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : maintenance_policy__maintenance_exclusions) -> ()

let yojson_of_maintenance_policy__maintenance_exclusions =
  (function
   | { id = v_id; window = v_window } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_window then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_maintenance_policy__maintenance_exclusions__window)
               v_window
           in
           let bnd = "window", arg in
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
    : maintenance_policy__maintenance_exclusions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_maintenance_policy__maintenance_exclusions

[@@@deriving.end]

type maintenance_policy__window__recurring_window__window = {
  end_time : string prop option; [@option]
  start_time : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : maintenance_policy__window__recurring_window__window) -> ()

let yojson_of_maintenance_policy__window__recurring_window__window =
  (function
   | { end_time = v_end_time; start_time = v_start_time } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       `Assoc bnds
    : maintenance_policy__window__recurring_window__window ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_maintenance_policy__window__recurring_window__window

[@@@deriving.end]

type maintenance_policy__window__recurring_window = {
  recurrence : string prop option; [@option]
  window : maintenance_policy__window__recurring_window__window list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : maintenance_policy__window__recurring_window) -> ()

let yojson_of_maintenance_policy__window__recurring_window =
  (function
   | { recurrence = v_recurrence; window = v_window } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_window then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_maintenance_policy__window__recurring_window__window)
               v_window
           in
           let bnd = "window", arg in
           bnd :: bnds
       in
       let bnds =
         match v_recurrence with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "recurrence", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : maintenance_policy__window__recurring_window ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_maintenance_policy__window__recurring_window

[@@@deriving.end]

type maintenance_policy__window = {
  recurring_window :
    maintenance_policy__window__recurring_window list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : maintenance_policy__window) -> ()

let yojson_of_maintenance_policy__window =
  (function
   | { recurring_window = v_recurring_window } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_recurring_window then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_maintenance_policy__window__recurring_window)
               v_recurring_window
           in
           let bnd = "recurring_window", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : maintenance_policy__window -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_maintenance_policy__window

[@@@deriving.end]

type maintenance_policy = {
  maintenance_exclusions :
    maintenance_policy__maintenance_exclusions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  window : maintenance_policy__window list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : maintenance_policy) -> ()

let yojson_of_maintenance_policy =
  (function
   | {
       maintenance_exclusions = v_maintenance_exclusions;
       window = v_window;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_window then bnds
         else
           let arg =
             (yojson_of_list yojson_of_maintenance_policy__window)
               v_window
           in
           let bnd = "window", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_maintenance_exclusions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_maintenance_policy__maintenance_exclusions)
               v_maintenance_exclusions
           in
           let bnd = "maintenance_exclusions", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : maintenance_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_maintenance_policy

[@@@deriving.end]

type networking = {
  cluster_ipv4_cidr_blocks : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cluster_ipv6_cidr_blocks : string prop list option; [@option]
  services_ipv4_cidr_blocks : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  services_ipv6_cidr_blocks : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : networking) -> ()

let yojson_of_networking =
  (function
   | {
       cluster_ipv4_cidr_blocks = v_cluster_ipv4_cidr_blocks;
       cluster_ipv6_cidr_blocks = v_cluster_ipv6_cidr_blocks;
       services_ipv4_cidr_blocks = v_services_ipv4_cidr_blocks;
       services_ipv6_cidr_blocks = v_services_ipv6_cidr_blocks;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_services_ipv6_cidr_blocks with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "services_ipv6_cidr_blocks", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_services_ipv4_cidr_blocks then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_services_ipv4_cidr_blocks
           in
           let bnd = "services_ipv4_cidr_blocks", arg in
           bnd :: bnds
       in
       let bnds =
         match v_cluster_ipv6_cidr_blocks with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "cluster_ipv6_cidr_blocks", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cluster_ipv4_cidr_blocks then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_cluster_ipv4_cidr_blocks
           in
           let bnd = "cluster_ipv4_cidr_blocks", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : networking -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_networking

[@@@deriving.end]

type system_addons_config__ingress = {
  disabled : bool prop option; [@option]
  ipv4_vip : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : system_addons_config__ingress) -> ()

let yojson_of_system_addons_config__ingress =
  (function
   | { disabled = v_disabled; ipv4_vip = v_ipv4_vip } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_ipv4_vip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ipv4_vip", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : system_addons_config__ingress ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_system_addons_config__ingress

[@@@deriving.end]

type system_addons_config = {
  ingress : system_addons_config__ingress list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : system_addons_config) -> ()

let yojson_of_system_addons_config =
  (function
   | { ingress = v_ingress } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ingress then bnds
         else
           let arg =
             (yojson_of_list yojson_of_system_addons_config__ingress)
               v_ingress
           in
           let bnd = "ingress", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : system_addons_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_system_addons_config

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

type maintenance_events = {
  create_time : string prop;
  end_time : string prop;
  operation : string prop;
  schedule : string prop;
  start_time : string prop;
  state : string prop;
  target_version : string prop;
  type_ : string prop; [@key "type"]
  update_time : string prop;
  uuid : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : maintenance_events) -> ()

let yojson_of_maintenance_events =
  (function
   | {
       create_time = v_create_time;
       end_time = v_end_time;
       operation = v_operation;
       schedule = v_schedule;
       start_time = v_start_time;
       state = v_state;
       target_version = v_target_version;
       type_ = v_type_;
       update_time = v_update_time;
       uuid = v_uuid;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uuid in
         ("uuid", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_update_time in
         ("update_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_target_version
         in
         ("target_version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_start_time in
         ("start_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_schedule in
         ("schedule", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operation in
         ("operation", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_end_time in
         ("end_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_create_time in
         ("create_time", arg) :: bnds
       in
       `Assoc bnds
    : maintenance_events -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_maintenance_events

[@@@deriving.end]

type google_edgecontainer_cluster = {
  default_max_pods_per_node : float prop option; [@option]
  external_load_balancer_ipv4_address_pools :
    string prop list option;
      [@option]
  id : string prop option; [@option]
  labels : string prop Tf_core.assoc option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
  release_channel : string prop option; [@option]
  target_version : string prop option; [@option]
  authorization : authorization list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  control_plane : control_plane list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  control_plane_encryption : control_plane_encryption list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  fleet : fleet list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  maintenance_policy : maintenance_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  networking : networking list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  system_addons_config : system_addons_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_edgecontainer_cluster) -> ()

let yojson_of_google_edgecontainer_cluster =
  (function
   | {
       default_max_pods_per_node = v_default_max_pods_per_node;
       external_load_balancer_ipv4_address_pools =
         v_external_load_balancer_ipv4_address_pools;
       id = v_id;
       labels = v_labels;
       location = v_location;
       name = v_name;
       project = v_project;
       release_channel = v_release_channel;
       target_version = v_target_version;
       authorization = v_authorization;
       control_plane = v_control_plane;
       control_plane_encryption = v_control_plane_encryption;
       fleet = v_fleet;
       maintenance_policy = v_maintenance_policy;
       networking = v_networking;
       system_addons_config = v_system_addons_config;
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
         if Stdlib.( = ) [] v_system_addons_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_system_addons_config)
               v_system_addons_config
           in
           let bnd = "system_addons_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_networking then bnds
         else
           let arg =
             (yojson_of_list yojson_of_networking) v_networking
           in
           let bnd = "networking", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_maintenance_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_maintenance_policy)
               v_maintenance_policy
           in
           let bnd = "maintenance_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_fleet then bnds
         else
           let arg = (yojson_of_list yojson_of_fleet) v_fleet in
           let bnd = "fleet", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_control_plane_encryption then bnds
         else
           let arg =
             (yojson_of_list yojson_of_control_plane_encryption)
               v_control_plane_encryption
           in
           let bnd = "control_plane_encryption", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_control_plane then bnds
         else
           let arg =
             (yojson_of_list yojson_of_control_plane) v_control_plane
           in
           let bnd = "control_plane", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_authorization then bnds
         else
           let arg =
             (yojson_of_list yojson_of_authorization) v_authorization
           in
           let bnd = "authorization", arg in
           bnd :: bnds
       in
       let bnds =
         match v_target_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_release_channel with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "release_channel", arg in
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
         match v_external_load_balancer_ipv4_address_pools with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd =
               "external_load_balancer_ipv4_address_pools", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_default_max_pods_per_node with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "default_max_pods_per_node", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_edgecontainer_cluster ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_edgecontainer_cluster

[@@@deriving.end]

let authorization__admin_users ~username () :
    authorization__admin_users =
  { username }

let authorization ~admin_users () : authorization = { admin_users }

let control_plane__local ?machine_filter ?node_count ?node_location
    ?shared_deployment_policy () : control_plane__local =
  {
    machine_filter;
    node_count;
    node_location;
    shared_deployment_policy;
  }

let control_plane__remote ?node_location () : control_plane__remote =
  { node_location }

let control_plane ?(local = []) ?(remote = []) () : control_plane =
  { local; remote }

let control_plane_encryption ?kms_key () : control_plane_encryption =
  { kms_key }

let fleet ~project () : fleet = { project }

let maintenance_policy__maintenance_exclusions__window ?end_time
    ?start_time () :
    maintenance_policy__maintenance_exclusions__window =
  { end_time; start_time }

let maintenance_policy__maintenance_exclusions ?id ?(window = []) ()
    : maintenance_policy__maintenance_exclusions =
  { id; window }

let maintenance_policy__window__recurring_window__window ?end_time
    ?start_time () :
    maintenance_policy__window__recurring_window__window =
  { end_time; start_time }

let maintenance_policy__window__recurring_window ?recurrence
    ?(window = []) () : maintenance_policy__window__recurring_window
    =
  { recurrence; window }

let maintenance_policy__window ~recurring_window () :
    maintenance_policy__window =
  { recurring_window }

let maintenance_policy ?(maintenance_exclusions = []) ~window () :
    maintenance_policy =
  { maintenance_exclusions; window }

let networking ?cluster_ipv6_cidr_blocks ?services_ipv6_cidr_blocks
    ~cluster_ipv4_cidr_blocks ~services_ipv4_cidr_blocks () :
    networking =
  {
    cluster_ipv4_cidr_blocks;
    cluster_ipv6_cidr_blocks;
    services_ipv4_cidr_blocks;
    services_ipv6_cidr_blocks;
  }

let system_addons_config__ingress ?disabled ?ipv4_vip () :
    system_addons_config__ingress =
  { disabled; ipv4_vip }

let system_addons_config ?(ingress = []) () : system_addons_config =
  { ingress }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_edgecontainer_cluster ?default_max_pods_per_node
    ?external_load_balancer_ipv4_address_pools ?id ?labels ?project
    ?release_channel ?target_version ?(control_plane = [])
    ?(control_plane_encryption = []) ?(maintenance_policy = [])
    ?(system_addons_config = []) ?timeouts ~location ~name
    ~authorization ~fleet ~networking () :
    google_edgecontainer_cluster =
  {
    default_max_pods_per_node;
    external_load_balancer_ipv4_address_pools;
    id;
    labels;
    location;
    name;
    project;
    release_channel;
    target_version;
    authorization;
    control_plane;
    control_plane_encryption;
    fleet;
    maintenance_policy;
    networking;
    system_addons_config;
    timeouts;
  }

type t = {
  tf_name : string;
  cluster_ca_certificate : string prop;
  control_plane_version : string prop;
  create_time : string prop;
  default_max_pods_per_node : float prop;
  effective_labels : string Tf_core.assoc prop;
  endpoint : string prop;
  external_load_balancer_ipv4_address_pools : string list prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  maintenance_events : maintenance_events list prop;
  name : string prop;
  node_version : string prop;
  port : float prop;
  project : string prop;
  release_channel : string prop;
  status : string prop;
  target_version : string prop;
  terraform_labels : string Tf_core.assoc prop;
  update_time : string prop;
}

let make ?default_max_pods_per_node
    ?external_load_balancer_ipv4_address_pools ?id ?labels ?project
    ?release_channel ?target_version ?(control_plane = [])
    ?(control_plane_encryption = []) ?(maintenance_policy = [])
    ?(system_addons_config = []) ?timeouts ~location ~name
    ~authorization ~fleet ~networking __id =
  let __type = "google_edgecontainer_cluster" in
  let __attrs =
    ({
       tf_name = __id;
       cluster_ca_certificate =
         Prop.computed __type __id "cluster_ca_certificate";
       control_plane_version =
         Prop.computed __type __id "control_plane_version";
       create_time = Prop.computed __type __id "create_time";
       default_max_pods_per_node =
         Prop.computed __type __id "default_max_pods_per_node";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       endpoint = Prop.computed __type __id "endpoint";
       external_load_balancer_ipv4_address_pools =
         Prop.computed __type __id
           "external_load_balancer_ipv4_address_pools";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       maintenance_events =
         Prop.computed __type __id "maintenance_events";
       name = Prop.computed __type __id "name";
       node_version = Prop.computed __type __id "node_version";
       port = Prop.computed __type __id "port";
       project = Prop.computed __type __id "project";
       release_channel = Prop.computed __type __id "release_channel";
       status = Prop.computed __type __id "status";
       target_version = Prop.computed __type __id "target_version";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_edgecontainer_cluster
        (google_edgecontainer_cluster ?default_max_pods_per_node
           ?external_load_balancer_ipv4_address_pools ?id ?labels
           ?project ?release_channel ?target_version ~control_plane
           ~control_plane_encryption ~maintenance_policy
           ~system_addons_config ?timeouts ~location ~name
           ~authorization ~fleet ~networking ());
    attrs = __attrs;
  }

let register ?tf_module ?default_max_pods_per_node
    ?external_load_balancer_ipv4_address_pools ?id ?labels ?project
    ?release_channel ?target_version ?(control_plane = [])
    ?(control_plane_encryption = []) ?(maintenance_policy = [])
    ?(system_addons_config = []) ?timeouts ~location ~name
    ~authorization ~fleet ~networking __id =
  let (r : _ Tf_core.resource) =
    make ?default_max_pods_per_node
      ?external_load_balancer_ipv4_address_pools ?id ?labels ?project
      ?release_channel ?target_version ~control_plane
      ~control_plane_encryption ~maintenance_policy
      ~system_addons_config ?timeouts ~location ~name ~authorization
      ~fleet ~networking __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
