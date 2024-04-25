(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type component_version = { interactive_hive : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : component_version) -> ()

let yojson_of_component_version =
  (function
   | { interactive_hive = v_interactive_hive } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_interactive_hive
         in
         ("interactive_hive", arg) :: bnds
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
  hive : metastores__hive list;
  oozie : metastores__oozie list;
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
         let arg =
           yojson_of_list yojson_of_metastores__oozie v_oozie
         in
         ("oozie", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_metastores__hive v_hive
         in
         ("hive", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_metastores__ambari v_ambari
         in
         ("ambari", arg) :: bnds
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
         let arg =
           yojson_of_list yojson_of_roles__head_node__script_actions
             v_script_actions
         in
         ("script_actions", arg) :: bnds
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

type roles__worker_node__autoscale__capacity = {
  max_instance_count : float prop;
  min_instance_count : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : roles__worker_node__autoscale__capacity) -> ()

let yojson_of_roles__worker_node__autoscale__capacity =
  (function
   | {
       max_instance_count = v_max_instance_count;
       min_instance_count = v_min_instance_count;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_min_instance_count
         in
         ("min_instance_count", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_instance_count
         in
         ("max_instance_count", arg) :: bnds
       in
       `Assoc bnds
    : roles__worker_node__autoscale__capacity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_roles__worker_node__autoscale__capacity

[@@@deriving.end]

type roles__worker_node__autoscale__recurrence__schedule = {
  days : string prop list;
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
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_days
         in
         ("days", arg) :: bnds
       in
       `Assoc bnds
    : roles__worker_node__autoscale__recurrence__schedule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_roles__worker_node__autoscale__recurrence__schedule

[@@@deriving.end]

type roles__worker_node__autoscale__recurrence = {
  timezone : string prop;
  schedule : roles__worker_node__autoscale__recurrence__schedule list;
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
         let arg =
           yojson_of_list
             yojson_of_roles__worker_node__autoscale__recurrence__schedule
             v_schedule
         in
         ("schedule", arg) :: bnds
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
  capacity : roles__worker_node__autoscale__capacity list;
  recurrence : roles__worker_node__autoscale__recurrence list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : roles__worker_node__autoscale) -> ()

let yojson_of_roles__worker_node__autoscale =
  (function
   | { capacity = v_capacity; recurrence = v_recurrence } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_roles__worker_node__autoscale__recurrence
             v_recurrence
         in
         ("recurrence", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_roles__worker_node__autoscale__capacity
             v_capacity
         in
         ("capacity", arg) :: bnds
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
  script_actions : roles__worker_node__script_actions list;
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
         let arg =
           yojson_of_list
             yojson_of_roles__worker_node__script_actions
             v_script_actions
         in
         ("script_actions", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_roles__worker_node__autoscale
             v_autoscale
         in
         ("autoscale", arg) :: bnds
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
         let arg =
           yojson_of_list
             yojson_of_roles__zookeeper_node__script_actions
             v_script_actions
         in
         ("script_actions", arg) :: bnds
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
  worker_node : roles__worker_node list;
  zookeeper_node : roles__zookeeper_node list;
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
         let arg =
           yojson_of_list yojson_of_roles__zookeeper_node
             v_zookeeper_node
         in
         ("zookeeper_node", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_roles__worker_node v_worker_node
         in
         ("worker_node", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_roles__head_node v_head_node
         in
         ("head_node", arg) :: bnds
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
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_ldaps_urls
         in
         ("ldaps_urls", arg) :: bnds
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

type azurerm_hdinsight_interactive_query_cluster = {
  cluster_version : string prop;
  encryption_in_transit_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  tier : string prop;
  tls_min_version : string prop option; [@option]
  component_version : component_version list;
  compute_isolation : compute_isolation list;
  disk_encryption : disk_encryption list;
  extension : extension list;
  gateway : gateway list;
  metastores : metastores list;
  monitor : monitor list;
  network : network list;
  roles : roles list;
  security_profile : security_profile list;
  storage_account : storage_account list;
  storage_account_gen2 : storage_account_gen2 list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_hdinsight_interactive_query_cluster) -> ()

let yojson_of_azurerm_hdinsight_interactive_query_cluster =
  (function
   | {
       cluster_version = v_cluster_version;
       encryption_in_transit_enabled =
         v_encryption_in_transit_enabled;
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
         let arg =
           yojson_of_list yojson_of_storage_account_gen2
             v_storage_account_gen2
         in
         ("storage_account_gen2", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_storage_account v_storage_account
         in
         ("storage_account", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_security_profile
             v_security_profile
         in
         ("security_profile", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_roles v_roles in
         ("roles", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_network v_network in
         ("network", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_monitor v_monitor in
         ("monitor", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_metastores v_metastores
         in
         ("metastores", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_gateway v_gateway in
         ("gateway", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_extension v_extension in
         ("extension", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_disk_encryption v_disk_encryption
         in
         ("disk_encryption", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_compute_isolation
             v_compute_isolation
         in
         ("compute_isolation", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_component_version
             v_component_version
         in
         ("component_version", arg) :: bnds
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
         match v_encryption_in_transit_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "encryption_in_transit_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cluster_version
         in
         ("cluster_version", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_hdinsight_interactive_query_cluster ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_hdinsight_interactive_query_cluster

[@@@deriving.end]

let component_version ~interactive_hive () : component_version =
  { interactive_hive }

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

let roles__worker_node__autoscale__capacity ~max_instance_count
    ~min_instance_count () : roles__worker_node__autoscale__capacity
    =
  { max_instance_count; min_instance_count }

let roles__worker_node__autoscale__recurrence__schedule ~days
    ~target_instance_count ~time () :
    roles__worker_node__autoscale__recurrence__schedule =
  { days; target_instance_count; time }

let roles__worker_node__autoscale__recurrence ~timezone ~schedule ()
    : roles__worker_node__autoscale__recurrence =
  { timezone; schedule }

let roles__worker_node__autoscale ?(capacity = []) ?(recurrence = [])
    () : roles__worker_node__autoscale =
  { capacity; recurrence }

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

let azurerm_hdinsight_interactive_query_cluster
    ?encryption_in_transit_enabled ?id ?tags ?tls_min_version
    ?(compute_isolation = []) ?(disk_encryption = [])
    ?(extension = []) ?(metastores = []) ?(monitor = [])
    ?(network = []) ?(security_profile = []) ?(storage_account = [])
    ?(storage_account_gen2 = []) ?timeouts ~cluster_version ~location
    ~name ~resource_group_name ~tier ~component_version ~gateway
    ~roles () : azurerm_hdinsight_interactive_query_cluster =
  {
    cluster_version;
    encryption_in_transit_enabled;
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
    roles;
    security_profile;
    storage_account;
    storage_account_gen2;
    timeouts;
  }

type t = {
  cluster_version : string prop;
  encryption_in_transit_enabled : bool prop;
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

let make ?encryption_in_transit_enabled ?id ?tags ?tls_min_version
    ?(compute_isolation = []) ?(disk_encryption = [])
    ?(extension = []) ?(metastores = []) ?(monitor = [])
    ?(network = []) ?(security_profile = []) ?(storage_account = [])
    ?(storage_account_gen2 = []) ?timeouts ~cluster_version ~location
    ~name ~resource_group_name ~tier ~component_version ~gateway
    ~roles __id =
  let __type = "azurerm_hdinsight_interactive_query_cluster" in
  let __attrs =
    ({
       cluster_version = Prop.computed __type __id "cluster_version";
       encryption_in_transit_enabled =
         Prop.computed __type __id "encryption_in_transit_enabled";
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
      yojson_of_azurerm_hdinsight_interactive_query_cluster
        (azurerm_hdinsight_interactive_query_cluster
           ?encryption_in_transit_enabled ?id ?tags ?tls_min_version
           ~compute_isolation ~disk_encryption ~extension ~metastores
           ~monitor ~network ~security_profile ~storage_account
           ~storage_account_gen2 ?timeouts ~cluster_version ~location
           ~name ~resource_group_name ~tier ~component_version
           ~gateway ~roles ());
    attrs = __attrs;
  }

let register ?tf_module ?encryption_in_transit_enabled ?id ?tags
    ?tls_min_version ?(compute_isolation = [])
    ?(disk_encryption = []) ?(extension = []) ?(metastores = [])
    ?(monitor = []) ?(network = []) ?(security_profile = [])
    ?(storage_account = []) ?(storage_account_gen2 = []) ?timeouts
    ~cluster_version ~location ~name ~resource_group_name ~tier
    ~component_version ~gateway ~roles __id =
  let (r : _ Tf_core.resource) =
    make ?encryption_in_transit_enabled ?id ?tags ?tls_min_version
      ~compute_isolation ~disk_encryption ~extension ~metastores
      ~monitor ~network ~security_profile ~storage_account
      ~storage_account_gen2 ?timeouts ~cluster_version ~location
      ~name ~resource_group_name ~tier ~component_version ~gateway
      ~roles __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
