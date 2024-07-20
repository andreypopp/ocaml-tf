(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type component_version = { hbase : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : component_version) -> ()

let yojson_of_component_version =
  (function
   | { hbase = v_hbase } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_hbase in
         ("hbase", arg) :: bnds
       in
       `Assoc bnds
    : component_version -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_component_version

[@@@deriving.end]

type compute_isolation = {
  compute_isolation_enabled : bool prop option; [@option]
  host_sku : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : compute_isolation) -> ()

let yojson_of_compute_isolation =
  (function
   | {
       compute_isolation_enabled = v_compute_isolation_enabled;
       host_sku = v_host_sku;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_host_sku with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host_sku", arg in
             bnd :: bnds
       in
       let bnds =
         match v_compute_isolation_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "compute_isolation_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : compute_isolation -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_compute_isolation

[@@@deriving.end]

type disk_encryption = {
  encryption_algorithm : string prop option; [@option]
  encryption_at_host_enabled : bool prop option; [@option]
  key_vault_key_id : string prop option; [@option]
  key_vault_managed_identity_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : disk_encryption) -> ()

let yojson_of_disk_encryption =
  (function
   | {
       encryption_algorithm = v_encryption_algorithm;
       encryption_at_host_enabled = v_encryption_at_host_enabled;
       key_vault_key_id = v_key_vault_key_id;
       key_vault_managed_identity_id =
         v_key_vault_managed_identity_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_key_vault_managed_identity_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_vault_managed_identity_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key_vault_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_vault_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_encryption_at_host_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "encryption_at_host_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_encryption_algorithm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "encryption_algorithm", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : disk_encryption -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_disk_encryption

[@@@deriving.end]

type extension = {
  log_analytics_workspace_id : string prop;
  primary_key : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : extension) -> ()

let yojson_of_extension =
  (function
   | {
       log_analytics_workspace_id = v_log_analytics_workspace_id;
       primary_key = v_primary_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_primary_key in
         ("primary_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_log_analytics_workspace_id
         in
         ("log_analytics_workspace_id", arg) :: bnds
       in
       `Assoc bnds
    : extension -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_extension

[@@@deriving.end]

type gateway = { password : string prop; username : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : gateway) -> ()

let yojson_of_gateway =
  (function
   | { password = v_password; username = v_username } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       `Assoc bnds
    : gateway -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_gateway

[@@@deriving.end]

type metastores__ambari = {
  database_name : string prop;
  password : string prop;
  server : string prop;
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : metastores__ambari) -> ()

let yojson_of_metastores__ambari =
  (function
   | {
       database_name = v_database_name;
       password = v_password;
       server = v_server;
       username = v_username;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_server in
         ("server", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_database_name in
         ("database_name", arg) :: bnds
       in
       `Assoc bnds
    : metastores__ambari -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metastores__ambari

[@@@deriving.end]

type metastores__hive = {
  database_name : string prop;
  password : string prop;
  server : string prop;
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : metastores__hive) -> ()

let yojson_of_metastores__hive =
  (function
   | {
       database_name = v_database_name;
       password = v_password;
       server = v_server;
       username = v_username;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_server in
         ("server", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_database_name in
         ("database_name", arg) :: bnds
       in
       `Assoc bnds
    : metastores__hive -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metastores__hive

[@@@deriving.end]

type metastores__oozie = {
  database_name : string prop;
  password : string prop;
  server : string prop;
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : metastores__oozie) -> ()

let yojson_of_metastores__oozie =
  (function
   | {
       database_name = v_database_name;
       password = v_password;
       server = v_server;
       username = v_username;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_server in
         ("server", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_database_name in
         ("database_name", arg) :: bnds
       in
       `Assoc bnds
    : metastores__oozie -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metastores__oozie

[@@@deriving.end]

type metastores = {
  ambari : metastores__ambari list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  hive : metastores__hive list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  oozie : metastores__oozie list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : metastores) -> ()

let yojson_of_metastores =
  (function
   | { ambari = v_ambari; hive = v_hive; oozie = v_oozie } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_oozie then bnds
         else
           let arg =
             (yojson_of_list yojson_of_metastores__oozie) v_oozie
           in
           let bnd = "oozie", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_hive then bnds
         else
           let arg =
             (yojson_of_list yojson_of_metastores__hive) v_hive
           in
           let bnd = "hive", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ambari then bnds
         else
           let arg =
             (yojson_of_list yojson_of_metastores__ambari) v_ambari
           in
           let bnd = "ambari", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : metastores -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metastores

[@@@deriving.end]

type monitor = {
  log_analytics_workspace_id : string prop;
  primary_key : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : monitor) -> ()

let yojson_of_monitor =
  (function
   | {
       log_analytics_workspace_id = v_log_analytics_workspace_id;
       primary_key = v_primary_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_primary_key in
         ("primary_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_log_analytics_workspace_id
         in
         ("log_analytics_workspace_id", arg) :: bnds
       in
       `Assoc bnds
    : monitor -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_monitor

[@@@deriving.end]

type network = {
  connection_direction : string prop option; [@option]
  private_link_enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network) -> ()

let yojson_of_network =
  (function
   | {
       connection_direction = v_connection_direction;
       private_link_enabled = v_private_link_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_private_link_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "private_link_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connection_direction with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "connection_direction", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network

[@@@deriving.end]

type private_link_configuration__ip_configuration = {
  name : string prop;
  primary : bool prop option; [@option]
  private_ip_address : string prop option; [@option]
  private_ip_allocation_method : string prop option; [@option]
  subnet_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : private_link_configuration__ip_configuration) -> ()

let yojson_of_private_link_configuration__ip_configuration =
  (function
   | {
       name = v_name;
       primary = v_primary;
       private_ip_address = v_private_ip_address;
       private_ip_allocation_method = v_private_ip_allocation_method;
       subnet_id = v_subnet_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_subnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnet_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_ip_allocation_method with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_ip_allocation_method", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_ip_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_ip_address", arg in
             bnd :: bnds
       in
       let bnds =
         match v_primary with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "primary", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : private_link_configuration__ip_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_private_link_configuration__ip_configuration

[@@@deriving.end]

type private_link_configuration = {
  group_id : string prop;
  name : string prop;
  ip_configuration :
    private_link_configuration__ip_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : private_link_configuration) -> ()

let yojson_of_private_link_configuration =
  (function
   | {
       group_id = v_group_id;
       name = v_name;
       ip_configuration = v_ip_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ip_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_private_link_configuration__ip_configuration)
               v_ip_configuration
           in
           let bnd = "ip_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_group_id in
         ("group_id", arg) :: bnds
       in
       `Assoc bnds
    : private_link_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_private_link_configuration

[@@@deriving.end]

type roles__head_node__script_actions = {
  name : string prop;
  parameters : string prop option; [@option]
  uri : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : roles__head_node__script_actions) -> ()

let yojson_of_roles__head_node__script_actions =
  (function
   | { name = v_name; parameters = v_parameters; uri = v_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       let bnds =
         match v_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : roles__head_node__script_actions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_roles__head_node__script_actions

[@@@deriving.end]

type roles__head_node = {
  password : string prop option; [@option]
  ssh_keys : string prop list option; [@option]
  subnet_id : string prop option; [@option]
  username : string prop;
  virtual_network_id : string prop option; [@option]
  vm_size : string prop;
  script_actions : roles__head_node__script_actions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : roles__head_node) -> ()

let yojson_of_roles__head_node =
  (function
   | {
       password = v_password;
       ssh_keys = v_ssh_keys;
       subnet_id = v_subnet_id;
       username = v_username;
       virtual_network_id = v_virtual_network_id;
       vm_size = v_vm_size;
       script_actions = v_script_actions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_script_actions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_roles__head_node__script_actions)
               v_script_actions
           in
           let bnd = "script_actions", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vm_size in
         ("vm_size", arg) :: bnds
       in
       let bnds =
         match v_virtual_network_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "virtual_network_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         match v_subnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnet_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ssh_keys with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ssh_keys", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : roles__head_node -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_roles__head_node

[@@@deriving.end]

type roles__worker_node__autoscale__recurrence__schedule = {
  days : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  target_instance_count : float prop;
  time : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : roles__worker_node__autoscale__recurrence__schedule) -> ()

let yojson_of_roles__worker_node__autoscale__recurrence__schedule =
  (function
   | {
       days = v_days;
       target_instance_count = v_target_instance_count;
       time = v_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_time in
         ("time", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_target_instance_count
         in
         ("target_instance_count", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_days then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_days
           in
           let bnd = "days", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : roles__worker_node__autoscale__recurrence__schedule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_roles__worker_node__autoscale__recurrence__schedule

[@@@deriving.end]

type roles__worker_node__autoscale__recurrence = {
  timezone : string prop;
  schedule : roles__worker_node__autoscale__recurrence__schedule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : roles__worker_node__autoscale__recurrence) -> ()

let yojson_of_roles__worker_node__autoscale__recurrence =
  (function
   | { timezone = v_timezone; schedule = v_schedule } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_schedule then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_roles__worker_node__autoscale__recurrence__schedule)
               v_schedule
           in
           let bnd = "schedule", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_timezone in
         ("timezone", arg) :: bnds
       in
       `Assoc bnds
    : roles__worker_node__autoscale__recurrence ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_roles__worker_node__autoscale__recurrence

[@@@deriving.end]

type roles__worker_node__autoscale = {
  recurrence : roles__worker_node__autoscale__recurrence list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : roles__worker_node__autoscale) -> ()

let yojson_of_roles__worker_node__autoscale =
  (function
   | { recurrence = v_recurrence } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_recurrence then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_roles__worker_node__autoscale__recurrence)
               v_recurrence
           in
           let bnd = "recurrence", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : roles__worker_node__autoscale ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_roles__worker_node__autoscale

[@@@deriving.end]

type roles__worker_node__script_actions = {
  name : string prop;
  parameters : string prop option; [@option]
  uri : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : roles__worker_node__script_actions) -> ()

let yojson_of_roles__worker_node__script_actions =
  (function
   | { name = v_name; parameters = v_parameters; uri = v_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       let bnds =
         match v_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : roles__worker_node__script_actions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_roles__worker_node__script_actions

[@@@deriving.end]

type roles__worker_node = {
  password : string prop option; [@option]
  ssh_keys : string prop list option; [@option]
  subnet_id : string prop option; [@option]
  target_instance_count : float prop;
  username : string prop;
  virtual_network_id : string prop option; [@option]
  vm_size : string prop;
  autoscale : roles__worker_node__autoscale list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  script_actions : roles__worker_node__script_actions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : roles__worker_node) -> ()

let yojson_of_roles__worker_node =
  (function
   | {
       password = v_password;
       ssh_keys = v_ssh_keys;
       subnet_id = v_subnet_id;
       target_instance_count = v_target_instance_count;
       username = v_username;
       virtual_network_id = v_virtual_network_id;
       vm_size = v_vm_size;
       autoscale = v_autoscale;
       script_actions = v_script_actions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_script_actions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_roles__worker_node__script_actions)
               v_script_actions
           in
           let bnd = "script_actions", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_autoscale then bnds
         else
           let arg =
             (yojson_of_list yojson_of_roles__worker_node__autoscale)
               v_autoscale
           in
           let bnd = "autoscale", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vm_size in
         ("vm_size", arg) :: bnds
       in
       let bnds =
         match v_virtual_network_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "virtual_network_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_target_instance_count
         in
         ("target_instance_count", arg) :: bnds
       in
       let bnds =
         match v_subnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnet_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ssh_keys with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ssh_keys", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : roles__worker_node -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_roles__worker_node

[@@@deriving.end]

type roles__zookeeper_node__script_actions = {
  name : string prop;
  parameters : string prop option; [@option]
  uri : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : roles__zookeeper_node__script_actions) -> ()

let yojson_of_roles__zookeeper_node__script_actions =
  (function
   | { name = v_name; parameters = v_parameters; uri = v_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       let bnds =
         match v_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : roles__zookeeper_node__script_actions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_roles__zookeeper_node__script_actions

[@@@deriving.end]

type roles__zookeeper_node = {
  password : string prop option; [@option]
  ssh_keys : string prop list option; [@option]
  subnet_id : string prop option; [@option]
  username : string prop;
  virtual_network_id : string prop option; [@option]
  vm_size : string prop;
  script_actions : roles__zookeeper_node__script_actions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : roles__zookeeper_node) -> ()

let yojson_of_roles__zookeeper_node =
  (function
   | {
       password = v_password;
       ssh_keys = v_ssh_keys;
       subnet_id = v_subnet_id;
       username = v_username;
       virtual_network_id = v_virtual_network_id;
       vm_size = v_vm_size;
       script_actions = v_script_actions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_script_actions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_roles__zookeeper_node__script_actions)
               v_script_actions
           in
           let bnd = "script_actions", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vm_size in
         ("vm_size", arg) :: bnds
       in
       let bnds =
         match v_virtual_network_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "virtual_network_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         match v_subnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnet_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ssh_keys with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ssh_keys", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : roles__zookeeper_node -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_roles__zookeeper_node

[@@@deriving.end]

type roles = {
  head_node : roles__head_node list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  worker_node : roles__worker_node list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  zookeeper_node : roles__zookeeper_node list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : roles) -> ()

let yojson_of_roles =
  (function
   | {
       head_node = v_head_node;
       worker_node = v_worker_node;
       zookeeper_node = v_zookeeper_node;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_zookeeper_node then bnds
         else
           let arg =
             (yojson_of_list yojson_of_roles__zookeeper_node)
               v_zookeeper_node
           in
           let bnd = "zookeeper_node", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_worker_node then bnds
         else
           let arg =
             (yojson_of_list yojson_of_roles__worker_node)
               v_worker_node
           in
           let bnd = "worker_node", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_head_node then bnds
         else
           let arg =
             (yojson_of_list yojson_of_roles__head_node) v_head_node
           in
           let bnd = "head_node", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : roles -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_roles

[@@@deriving.end]

type security_profile = {
  aadds_resource_id : string prop;
  cluster_users_group_dns : string prop list option; [@option]
  domain_name : string prop;
  domain_user_password : string prop;
  domain_username : string prop;
  ldaps_urls : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  msi_resource_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : security_profile) -> ()

let yojson_of_security_profile =
  (function
   | {
       aadds_resource_id = v_aadds_resource_id;
       cluster_users_group_dns = v_cluster_users_group_dns;
       domain_name = v_domain_name;
       domain_user_password = v_domain_user_password;
       domain_username = v_domain_username;
       ldaps_urls = v_ldaps_urls;
       msi_resource_id = v_msi_resource_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_msi_resource_id
         in
         ("msi_resource_id", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ldaps_urls then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_ldaps_urls
           in
           let bnd = "ldaps_urls", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_domain_username
         in
         ("domain_username", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_domain_user_password
         in
         ("domain_user_password", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain_name in
         ("domain_name", arg) :: bnds
       in
       let bnds =
         match v_cluster_users_group_dns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "cluster_users_group_dns", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_aadds_resource_id
         in
         ("aadds_resource_id", arg) :: bnds
       in
       `Assoc bnds
    : security_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_security_profile

[@@@deriving.end]

type storage_account = {
  is_default : bool prop;
  storage_account_key : string prop;
  storage_container_id : string prop;
  storage_resource_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_account) -> ()

let yojson_of_storage_account =
  (function
   | {
       is_default = v_is_default;
       storage_account_key = v_storage_account_key;
       storage_container_id = v_storage_container_id;
       storage_resource_id = v_storage_resource_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_storage_resource_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_resource_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_container_id
         in
         ("storage_container_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_account_key
         in
         ("storage_account_key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_is_default in
         ("is_default", arg) :: bnds
       in
       `Assoc bnds
    : storage_account -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_account

[@@@deriving.end]

type storage_account_gen2 = {
  filesystem_id : string prop;
  is_default : bool prop;
  managed_identity_resource_id : string prop;
  storage_resource_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_account_gen2) -> ()

let yojson_of_storage_account_gen2 =
  (function
   | {
       filesystem_id = v_filesystem_id;
       is_default = v_is_default;
       managed_identity_resource_id = v_managed_identity_resource_id;
       storage_resource_id = v_storage_resource_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_resource_id
         in
         ("storage_resource_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_managed_identity_resource_id
         in
         ("managed_identity_resource_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_is_default in
         ("is_default", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_filesystem_id in
         ("filesystem_id", arg) :: bnds
       in
       `Assoc bnds
    : storage_account_gen2 -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_account_gen2

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

type azurerm_hdinsight_hbase_cluster = {
  cluster_version : string prop;
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  tier : string prop;
  tls_min_version : string prop option; [@option]
  component_version : component_version list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  compute_isolation : compute_isolation list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  disk_encryption : disk_encryption list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  extension : extension list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  gateway : gateway list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  metastores : metastores list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  monitor : monitor list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network : network list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  private_link_configuration : private_link_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  roles : roles list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  security_profile : security_profile list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  storage_account : storage_account list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  storage_account_gen2 : storage_account_gen2 list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_hdinsight_hbase_cluster) -> ()

let yojson_of_azurerm_hdinsight_hbase_cluster =
  (function
   | {
       cluster_version = v_cluster_version;
       id = v_id;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       tier = v_tier;
       tls_min_version = v_tls_min_version;
       component_version = v_component_version;
       compute_isolation = v_compute_isolation;
       disk_encryption = v_disk_encryption;
       extension = v_extension;
       gateway = v_gateway;
       metastores = v_metastores;
       monitor = v_monitor;
       network = v_network;
       private_link_configuration = v_private_link_configuration;
       roles = v_roles;
       security_profile = v_security_profile;
       storage_account = v_storage_account;
       storage_account_gen2 = v_storage_account_gen2;
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
         if Stdlib.( = ) [] v_storage_account_gen2 then bnds
         else
           let arg =
             (yojson_of_list yojson_of_storage_account_gen2)
               v_storage_account_gen2
           in
           let bnd = "storage_account_gen2", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_storage_account then bnds
         else
           let arg =
             (yojson_of_list yojson_of_storage_account)
               v_storage_account
           in
           let bnd = "storage_account", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_security_profile then bnds
         else
           let arg =
             (yojson_of_list yojson_of_security_profile)
               v_security_profile
           in
           let bnd = "security_profile", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_roles then bnds
         else
           let arg = (yojson_of_list yojson_of_roles) v_roles in
           let bnd = "roles", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_private_link_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_private_link_configuration)
               v_private_link_configuration
           in
           let bnd = "private_link_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_network then bnds
         else
           let arg = (yojson_of_list yojson_of_network) v_network in
           let bnd = "network", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_monitor then bnds
         else
           let arg = (yojson_of_list yojson_of_monitor) v_monitor in
           let bnd = "monitor", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_metastores then bnds
         else
           let arg =
             (yojson_of_list yojson_of_metastores) v_metastores
           in
           let bnd = "metastores", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_gateway then bnds
         else
           let arg = (yojson_of_list yojson_of_gateway) v_gateway in
           let bnd = "gateway", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_extension then bnds
         else
           let arg =
             (yojson_of_list yojson_of_extension) v_extension
           in
           let bnd = "extension", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_disk_encryption then bnds
         else
           let arg =
             (yojson_of_list yojson_of_disk_encryption)
               v_disk_encryption
           in
           let bnd = "disk_encryption", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_compute_isolation then bnds
         else
           let arg =
             (yojson_of_list yojson_of_compute_isolation)
               v_compute_isolation
           in
           let bnd = "compute_isolation", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_component_version then bnds
         else
           let arg =
             (yojson_of_list yojson_of_component_version)
               v_component_version
           in
           let bnd = "component_version", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tls_min_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tls_min_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tier in
         ("tier", arg) :: bnds
       in
       let bnds =
         match v_tags with
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
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cluster_version
         in
         ("cluster_version", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_hdinsight_hbase_cluster ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_hdinsight_hbase_cluster

[@@@deriving.end]

let component_version ~hbase () : component_version = { hbase }

let compute_isolation ?compute_isolation_enabled ?host_sku () :
    compute_isolation =
  { compute_isolation_enabled; host_sku }

let disk_encryption ?encryption_algorithm ?encryption_at_host_enabled
    ?key_vault_key_id ?key_vault_managed_identity_id () :
    disk_encryption =
  {
    encryption_algorithm;
    encryption_at_host_enabled;
    key_vault_key_id;
    key_vault_managed_identity_id;
  }

let extension ~log_analytics_workspace_id ~primary_key () : extension
    =
  { log_analytics_workspace_id; primary_key }

let gateway ~password ~username () : gateway = { password; username }

let metastores__ambari ~database_name ~password ~server ~username ()
    : metastores__ambari =
  { database_name; password; server; username }

let metastores__hive ~database_name ~password ~server ~username () :
    metastores__hive =
  { database_name; password; server; username }

let metastores__oozie ~database_name ~password ~server ~username () :
    metastores__oozie =
  { database_name; password; server; username }

let metastores ?(ambari = []) ?(hive = []) ?(oozie = []) () :
    metastores =
  { ambari; hive; oozie }

let monitor ~log_analytics_workspace_id ~primary_key () : monitor =
  { log_analytics_workspace_id; primary_key }

let network ?connection_direction ?private_link_enabled () : network
    =
  { connection_direction; private_link_enabled }

let private_link_configuration__ip_configuration ?primary
    ?private_ip_address ?private_ip_allocation_method ?subnet_id
    ~name () : private_link_configuration__ip_configuration =
  {
    name;
    primary;
    private_ip_address;
    private_ip_allocation_method;
    subnet_id;
  }

let private_link_configuration ~group_id ~name ~ip_configuration () :
    private_link_configuration =
  { group_id; name; ip_configuration }

let roles__head_node__script_actions ?parameters ~name ~uri () :
    roles__head_node__script_actions =
  { name; parameters; uri }

let roles__head_node ?password ?ssh_keys ?subnet_id
    ?virtual_network_id ?(script_actions = []) ~username ~vm_size ()
    : roles__head_node =
  {
    password;
    ssh_keys;
    subnet_id;
    username;
    virtual_network_id;
    vm_size;
    script_actions;
  }

let roles__worker_node__autoscale__recurrence__schedule ~days
    ~target_instance_count ~time () :
    roles__worker_node__autoscale__recurrence__schedule =
  { days; target_instance_count; time }

let roles__worker_node__autoscale__recurrence ~timezone ~schedule ()
    : roles__worker_node__autoscale__recurrence =
  { timezone; schedule }

let roles__worker_node__autoscale ?(recurrence = []) () :
    roles__worker_node__autoscale =
  { recurrence }

let roles__worker_node__script_actions ?parameters ~name ~uri () :
    roles__worker_node__script_actions =
  { name; parameters; uri }

let roles__worker_node ?password ?ssh_keys ?subnet_id
    ?virtual_network_id ?(autoscale = []) ?(script_actions = [])
    ~target_instance_count ~username ~vm_size () : roles__worker_node
    =
  {
    password;
    ssh_keys;
    subnet_id;
    target_instance_count;
    username;
    virtual_network_id;
    vm_size;
    autoscale;
    script_actions;
  }

let roles__zookeeper_node__script_actions ?parameters ~name ~uri () :
    roles__zookeeper_node__script_actions =
  { name; parameters; uri }

let roles__zookeeper_node ?password ?ssh_keys ?subnet_id
    ?virtual_network_id ?(script_actions = []) ~username ~vm_size ()
    : roles__zookeeper_node =
  {
    password;
    ssh_keys;
    subnet_id;
    username;
    virtual_network_id;
    vm_size;
    script_actions;
  }

let roles ~head_node ~worker_node ~zookeeper_node () : roles =
  { head_node; worker_node; zookeeper_node }

let security_profile ?cluster_users_group_dns ~aadds_resource_id
    ~domain_name ~domain_user_password ~domain_username ~ldaps_urls
    ~msi_resource_id () : security_profile =
  {
    aadds_resource_id;
    cluster_users_group_dns;
    domain_name;
    domain_user_password;
    domain_username;
    ldaps_urls;
    msi_resource_id;
  }

let storage_account ?storage_resource_id ~is_default
    ~storage_account_key ~storage_container_id () : storage_account =
  {
    is_default;
    storage_account_key;
    storage_container_id;
    storage_resource_id;
  }

let storage_account_gen2 ~filesystem_id ~is_default
    ~managed_identity_resource_id ~storage_resource_id () :
    storage_account_gen2 =
  {
    filesystem_id;
    is_default;
    managed_identity_resource_id;
    storage_resource_id;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_hdinsight_hbase_cluster ?id ?tags ?tls_min_version
    ?(compute_isolation = []) ?(disk_encryption = [])
    ?(extension = []) ?(metastores = []) ?(monitor = [])
    ?(network = []) ?(private_link_configuration = [])
    ?(security_profile = []) ?(storage_account = [])
    ?(storage_account_gen2 = []) ?timeouts ~cluster_version ~location
    ~name ~resource_group_name ~tier ~component_version ~gateway
    ~roles () : azurerm_hdinsight_hbase_cluster =
  {
    cluster_version;
    id;
    location;
    name;
    resource_group_name;
    tags;
    tier;
    tls_min_version;
    component_version;
    compute_isolation;
    disk_encryption;
    extension;
    gateway;
    metastores;
    monitor;
    network;
    private_link_configuration;
    roles;
    security_profile;
    storage_account;
    storage_account_gen2;
    timeouts;
  }

type t = {
  tf_name : string;
  cluster_version : string prop;
  https_endpoint : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  ssh_endpoint : string prop;
  tags : (string * string) list prop;
  tier : string prop;
  tls_min_version : string prop;
}

let make ?id ?tags ?tls_min_version ?(compute_isolation = [])
    ?(disk_encryption = []) ?(extension = []) ?(metastores = [])
    ?(monitor = []) ?(network = [])
    ?(private_link_configuration = []) ?(security_profile = [])
    ?(storage_account = []) ?(storage_account_gen2 = []) ?timeouts
    ~cluster_version ~location ~name ~resource_group_name ~tier
    ~component_version ~gateway ~roles __id =
  let __type = "azurerm_hdinsight_hbase_cluster" in
  let __attrs =
    ({
       tf_name = __id;
       cluster_version = Prop.computed __type __id "cluster_version";
       https_endpoint = Prop.computed __type __id "https_endpoint";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       ssh_endpoint = Prop.computed __type __id "ssh_endpoint";
       tags = Prop.computed __type __id "tags";
       tier = Prop.computed __type __id "tier";
       tls_min_version = Prop.computed __type __id "tls_min_version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_hdinsight_hbase_cluster
        (azurerm_hdinsight_hbase_cluster ?id ?tags ?tls_min_version
           ~compute_isolation ~disk_encryption ~extension ~metastores
           ~monitor ~network ~private_link_configuration
           ~security_profile ~storage_account ~storage_account_gen2
           ?timeouts ~cluster_version ~location ~name
           ~resource_group_name ~tier ~component_version ~gateway
           ~roles ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tls_min_version
    ?(compute_isolation = []) ?(disk_encryption = [])
    ?(extension = []) ?(metastores = []) ?(monitor = [])
    ?(network = []) ?(private_link_configuration = [])
    ?(security_profile = []) ?(storage_account = [])
    ?(storage_account_gen2 = []) ?timeouts ~cluster_version ~location
    ~name ~resource_group_name ~tier ~component_version ~gateway
    ~roles __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tls_min_version ~compute_isolation
      ~disk_encryption ~extension ~metastores ~monitor ~network
      ~private_link_configuration ~security_profile ~storage_account
      ~storage_account_gen2 ?timeouts ~cluster_version ~location
      ~name ~resource_group_name ~tier ~component_version ~gateway
      ~roles __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
