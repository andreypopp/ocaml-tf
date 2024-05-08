(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type alloydb__settings__initial_user = {
  password : string prop;
  user : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : alloydb__settings__initial_user) -> ()

let yojson_of_alloydb__settings__initial_user =
  (function
   | { password = v_password; user = v_user } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user in
         ("user", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       `Assoc bnds
    : alloydb__settings__initial_user ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_alloydb__settings__initial_user

[@@@deriving.end]

type alloydb__settings__primary_instance_settings__machine_config = {
  cpu_count : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       alloydb__settings__primary_instance_settings__machine_config) ->
  ()

let yojson_of_alloydb__settings__primary_instance_settings__machine_config
    =
  (function
   | { cpu_count = v_cpu_count } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_cpu_count in
         ("cpu_count", arg) :: bnds
       in
       `Assoc bnds
    : alloydb__settings__primary_instance_settings__machine_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_alloydb__settings__primary_instance_settings__machine_config

[@@@deriving.end]

type alloydb__settings__primary_instance_settings = {
  database_flags : (string * string prop) list option; [@option]
  id : string prop;
  labels : (string * string prop) list option; [@option]
  machine_config :
    alloydb__settings__primary_instance_settings__machine_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : alloydb__settings__primary_instance_settings) -> ()

let yojson_of_alloydb__settings__primary_instance_settings =
  (function
   | {
       database_flags = v_database_flags;
       id = v_id;
       labels = v_labels;
       machine_config = v_machine_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_machine_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_alloydb__settings__primary_instance_settings__machine_config)
               v_machine_config
           in
           let bnd = "machine_config", arg in
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
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         match v_database_flags with
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
             let bnd = "database_flags", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : alloydb__settings__primary_instance_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_alloydb__settings__primary_instance_settings

[@@@deriving.end]

type alloydb__settings = {
  labels : (string * string prop) list option; [@option]
  vpc_network : string prop;
  initial_user : alloydb__settings__initial_user list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  primary_instance_settings :
    alloydb__settings__primary_instance_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : alloydb__settings) -> ()

let yojson_of_alloydb__settings =
  (function
   | {
       labels = v_labels;
       vpc_network = v_vpc_network;
       initial_user = v_initial_user;
       primary_instance_settings = v_primary_instance_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_primary_instance_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_alloydb__settings__primary_instance_settings)
               v_primary_instance_settings
           in
           let bnd = "primary_instance_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_initial_user then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_alloydb__settings__initial_user)
               v_initial_user
           in
           let bnd = "initial_user", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vpc_network in
         ("vpc_network", arg) :: bnds
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
       `Assoc bnds
    : alloydb__settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_alloydb__settings

[@@@deriving.end]

type alloydb = {
  cluster_id : string prop;
  settings : alloydb__settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : alloydb) -> ()

let yojson_of_alloydb =
  (function
   | { cluster_id = v_cluster_id; settings = v_settings } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_alloydb__settings) v_settings
           in
           let bnd = "settings", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_id in
         ("cluster_id", arg) :: bnds
       in
       `Assoc bnds
    : alloydb -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_alloydb

[@@@deriving.end]

type cloudsql__settings__ip_config__authorized_networks = {
  expire_time : string prop option; [@option]
  label : string prop option; [@option]
  ttl : string prop option; [@option]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : cloudsql__settings__ip_config__authorized_networks) -> ()

let yojson_of_cloudsql__settings__ip_config__authorized_networks =
  (function
   | {
       expire_time = v_expire_time;
       label = v_label;
       ttl = v_ttl;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         match v_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ttl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "label", arg in
             bnd :: bnds
       in
       let bnds =
         match v_expire_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expire_time", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cloudsql__settings__ip_config__authorized_networks ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudsql__settings__ip_config__authorized_networks

[@@@deriving.end]

type cloudsql__settings__ip_config = {
  enable_ipv4 : bool prop option; [@option]
  private_network : string prop option; [@option]
  require_ssl : bool prop option; [@option]
  authorized_networks :
    cloudsql__settings__ip_config__authorized_networks list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudsql__settings__ip_config) -> ()

let yojson_of_cloudsql__settings__ip_config =
  (function
   | {
       enable_ipv4 = v_enable_ipv4;
       private_network = v_private_network;
       require_ssl = v_require_ssl;
       authorized_networks = v_authorized_networks;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_authorized_networks then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_cloudsql__settings__ip_config__authorized_networks)
               v_authorized_networks
           in
           let bnd = "authorized_networks", arg in
           bnd :: bnds
       in
       let bnds =
         match v_require_ssl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_ssl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_network with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_network", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_ipv4 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_ipv4", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cloudsql__settings__ip_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudsql__settings__ip_config

[@@@deriving.end]

type cloudsql__settings = {
  activation_policy : string prop option; [@option]
  auto_storage_increase : bool prop option; [@option]
  cmek_key_name : string prop option; [@option]
  collation : string prop option; [@option]
  data_disk_size_gb : string prop option; [@option]
  data_disk_type : string prop option; [@option]
  database_flags : (string * string prop) list option; [@option]
  database_version : string prop option; [@option]
  edition : string prop option; [@option]
  root_password : string prop option; [@option]
  source_id : string prop;
  storage_auto_resize_limit : string prop option; [@option]
  tier : string prop option; [@option]
  user_labels : (string * string prop) list option; [@option]
  zone : string prop option; [@option]
  ip_config : cloudsql__settings__ip_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudsql__settings) -> ()

let yojson_of_cloudsql__settings =
  (function
   | {
       activation_policy = v_activation_policy;
       auto_storage_increase = v_auto_storage_increase;
       cmek_key_name = v_cmek_key_name;
       collation = v_collation;
       data_disk_size_gb = v_data_disk_size_gb;
       data_disk_type = v_data_disk_type;
       database_flags = v_database_flags;
       database_version = v_database_version;
       edition = v_edition;
       root_password = v_root_password;
       source_id = v_source_id;
       storage_auto_resize_limit = v_storage_auto_resize_limit;
       tier = v_tier;
       user_labels = v_user_labels;
       zone = v_zone;
       ip_config = v_ip_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ip_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_cloudsql__settings__ip_config)
               v_ip_config
           in
           let bnd = "ip_config", arg in
           bnd :: bnds
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
         match v_user_labels with
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
             let bnd = "user_labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_storage_auto_resize_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_auto_resize_limit", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source_id in
         ("source_id", arg) :: bnds
       in
       let bnds =
         match v_root_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "root_password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_edition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "edition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_database_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "database_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_database_flags with
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
             let bnd = "database_flags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_disk_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data_disk_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_disk_size_gb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data_disk_size_gb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_collation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "collation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cmek_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cmek_key_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_storage_increase with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_storage_increase", arg in
             bnd :: bnds
       in
       let bnds =
         match v_activation_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "activation_policy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cloudsql__settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudsql__settings

[@@@deriving.end]

type cloudsql = {
  settings : cloudsql__settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudsql) -> ()

let yojson_of_cloudsql =
  (function
   | { settings = v_settings } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_cloudsql__settings) v_settings
           in
           let bnd = "settings", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : cloudsql -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudsql

[@@@deriving.end]

type mysql__ssl = {
  ca_certificate : string prop;
  client_certificate : string prop option; [@option]
  client_key : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : mysql__ssl) -> ()

let yojson_of_mysql__ssl =
  (function
   | {
       ca_certificate = v_ca_certificate;
       client_certificate = v_client_certificate;
       client_key = v_client_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_client_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_certificate", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ca_certificate
         in
         ("ca_certificate", arg) :: bnds
       in
       `Assoc bnds
    : mysql__ssl -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mysql__ssl

[@@@deriving.end]

type mysql = {
  cloud_sql_id : string prop option; [@option]
  host : string prop;
  password : string prop;
  port : float prop;
  username : string prop;
  ssl : mysql__ssl list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : mysql) -> ()

let yojson_of_mysql =
  (function
   | {
       cloud_sql_id = v_cloud_sql_id;
       host = v_host;
       password = v_password;
       port = v_port;
       username = v_username;
       ssl = v_ssl;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ssl then bnds
         else
           let arg = (yojson_of_list yojson_of_mysql__ssl) v_ssl in
           let bnd = "ssl", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       let bnds =
         match v_cloud_sql_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloud_sql_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : mysql -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mysql

[@@@deriving.end]

type oracle__forward_ssh_connectivity = {
  hostname : string prop;
  password : string prop option; [@option]
  port : float prop;
  private_key : string prop option; [@option]
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : oracle__forward_ssh_connectivity) -> ()

let yojson_of_oracle__forward_ssh_connectivity =
  (function
   | {
       hostname = v_hostname;
       password = v_password;
       port = v_port;
       private_key = v_private_key;
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
         match v_private_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_key", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         match v_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_hostname in
         ("hostname", arg) :: bnds
       in
       `Assoc bnds
    : oracle__forward_ssh_connectivity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_oracle__forward_ssh_connectivity

[@@@deriving.end]

type oracle__private_connectivity = {
  private_connection : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : oracle__private_connectivity) -> ()

let yojson_of_oracle__private_connectivity =
  (function
   | { private_connection = v_private_connection } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_private_connection
         in
         ("private_connection", arg) :: bnds
       in
       `Assoc bnds
    : oracle__private_connectivity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_oracle__private_connectivity

[@@@deriving.end]

type oracle__ssl = {
  ca_certificate : string prop;
  client_certificate : string prop option; [@option]
  client_key : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : oracle__ssl) -> ()

let yojson_of_oracle__ssl =
  (function
   | {
       ca_certificate = v_ca_certificate;
       client_certificate = v_client_certificate;
       client_key = v_client_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_client_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_certificate", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ca_certificate
         in
         ("ca_certificate", arg) :: bnds
       in
       `Assoc bnds
    : oracle__ssl -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_oracle__ssl

[@@@deriving.end]

type oracle__static_service_ip_connectivity = unit
[@@deriving_inline yojson_of]

let _ = fun (_ : oracle__static_service_ip_connectivity) -> ()

let yojson_of_oracle__static_service_ip_connectivity =
  (yojson_of_unit
    : oracle__static_service_ip_connectivity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_oracle__static_service_ip_connectivity

[@@@deriving.end]

type oracle = {
  database_service : string prop;
  host : string prop;
  password : string prop;
  port : float prop;
  username : string prop;
  forward_ssh_connectivity : oracle__forward_ssh_connectivity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  private_connectivity : oracle__private_connectivity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ssl : oracle__ssl list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  static_service_ip_connectivity :
    oracle__static_service_ip_connectivity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : oracle) -> ()

let yojson_of_oracle =
  (function
   | {
       database_service = v_database_service;
       host = v_host;
       password = v_password;
       port = v_port;
       username = v_username;
       forward_ssh_connectivity = v_forward_ssh_connectivity;
       private_connectivity = v_private_connectivity;
       ssl = v_ssl;
       static_service_ip_connectivity =
         v_static_service_ip_connectivity;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_static_service_ip_connectivity then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_oracle__static_service_ip_connectivity)
               v_static_service_ip_connectivity
           in
           let bnd = "static_service_ip_connectivity", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ssl then bnds
         else
           let arg = (yojson_of_list yojson_of_oracle__ssl) v_ssl in
           let bnd = "ssl", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_private_connectivity then bnds
         else
           let arg =
             (yojson_of_list yojson_of_oracle__private_connectivity)
               v_private_connectivity
           in
           let bnd = "private_connectivity", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_forward_ssh_connectivity then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_oracle__forward_ssh_connectivity)
               v_forward_ssh_connectivity
           in
           let bnd = "forward_ssh_connectivity", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_database_service
         in
         ("database_service", arg) :: bnds
       in
       `Assoc bnds
    : oracle -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_oracle

[@@@deriving.end]

type postgresql__ssl = {
  ca_certificate : string prop;
  client_certificate : string prop option; [@option]
  client_key : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : postgresql__ssl) -> ()

let yojson_of_postgresql__ssl =
  (function
   | {
       ca_certificate = v_ca_certificate;
       client_certificate = v_client_certificate;
       client_key = v_client_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_client_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_certificate", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ca_certificate
         in
         ("ca_certificate", arg) :: bnds
       in
       `Assoc bnds
    : postgresql__ssl -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_postgresql__ssl

[@@@deriving.end]

type postgresql = {
  cloud_sql_id : string prop option; [@option]
  host : string prop;
  password : string prop;
  port : float prop;
  username : string prop;
  ssl : postgresql__ssl list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : postgresql) -> ()

let yojson_of_postgresql =
  (function
   | {
       cloud_sql_id = v_cloud_sql_id;
       host = v_host;
       password = v_password;
       port = v_port;
       username = v_username;
       ssl = v_ssl;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ssl then bnds
         else
           let arg =
             (yojson_of_list yojson_of_postgresql__ssl) v_ssl
           in
           let bnd = "ssl", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       let bnds =
         match v_cloud_sql_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloud_sql_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : postgresql -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_postgresql

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

type error = {
  code : float prop;
  details : (string * string prop) list list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  message : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : error) -> ()

let yojson_of_error =
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
    : error -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_error

[@@@deriving.end]

type google_database_migration_service_connection_profile = {
  connection_profile_id : string prop;
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  location : string prop option; [@option]
  project : string prop option; [@option]
  alloydb : alloydb list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cloudsql : cloudsql list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  mysql : mysql list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  oracle : oracle list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  postgresql : postgresql list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : google_database_migration_service_connection_profile) -> ()

let yojson_of_google_database_migration_service_connection_profile =
  (function
   | {
       connection_profile_id = v_connection_profile_id;
       display_name = v_display_name;
       id = v_id;
       labels = v_labels;
       location = v_location;
       project = v_project;
       alloydb = v_alloydb;
       cloudsql = v_cloudsql;
       mysql = v_mysql;
       oracle = v_oracle;
       postgresql = v_postgresql;
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
         if Stdlib.( = ) [] v_postgresql then bnds
         else
           let arg =
             (yojson_of_list yojson_of_postgresql) v_postgresql
           in
           let bnd = "postgresql", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_oracle then bnds
         else
           let arg = (yojson_of_list yojson_of_oracle) v_oracle in
           let bnd = "oracle", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_mysql then bnds
         else
           let arg = (yojson_of_list yojson_of_mysql) v_mysql in
           let bnd = "mysql", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cloudsql then bnds
         else
           let arg =
             (yojson_of_list yojson_of_cloudsql) v_cloudsql
           in
           let bnd = "cloudsql", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_alloydb then bnds
         else
           let arg = (yojson_of_list yojson_of_alloydb) v_alloydb in
           let bnd = "alloydb", arg in
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
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_connection_profile_id
         in
         ("connection_profile_id", arg) :: bnds
       in
       `Assoc bnds
    : google_database_migration_service_connection_profile ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_google_database_migration_service_connection_profile

[@@@deriving.end]

let alloydb__settings__initial_user ~password ~user () :
    alloydb__settings__initial_user =
  { password; user }

let alloydb__settings__primary_instance_settings__machine_config
    ~cpu_count () :
    alloydb__settings__primary_instance_settings__machine_config =
  { cpu_count }

let alloydb__settings__primary_instance_settings ?database_flags
    ?labels ~id ~machine_config () :
    alloydb__settings__primary_instance_settings =
  { database_flags; id; labels; machine_config }

let alloydb__settings ?labels ?(primary_instance_settings = [])
    ~vpc_network ~initial_user () : alloydb__settings =
  { labels; vpc_network; initial_user; primary_instance_settings }

let alloydb ?(settings = []) ~cluster_id () : alloydb =
  { cluster_id; settings }

let cloudsql__settings__ip_config__authorized_networks ?expire_time
    ?label ?ttl ~value () :
    cloudsql__settings__ip_config__authorized_networks =
  { expire_time; label; ttl; value }

let cloudsql__settings__ip_config ?enable_ipv4 ?private_network
    ?require_ssl ?(authorized_networks = []) () :
    cloudsql__settings__ip_config =
  { enable_ipv4; private_network; require_ssl; authorized_networks }

let cloudsql__settings ?activation_policy ?auto_storage_increase
    ?cmek_key_name ?collation ?data_disk_size_gb ?data_disk_type
    ?database_flags ?database_version ?edition ?root_password
    ?storage_auto_resize_limit ?tier ?user_labels ?zone
    ?(ip_config = []) ~source_id () : cloudsql__settings =
  {
    activation_policy;
    auto_storage_increase;
    cmek_key_name;
    collation;
    data_disk_size_gb;
    data_disk_type;
    database_flags;
    database_version;
    edition;
    root_password;
    source_id;
    storage_auto_resize_limit;
    tier;
    user_labels;
    zone;
    ip_config;
  }

let cloudsql ?(settings = []) () : cloudsql = { settings }

let mysql__ssl ?client_certificate ?client_key ~ca_certificate () :
    mysql__ssl =
  { ca_certificate; client_certificate; client_key }

let mysql ?cloud_sql_id ?(ssl = []) ~host ~password ~port ~username
    () : mysql =
  { cloud_sql_id; host; password; port; username; ssl }

let oracle__forward_ssh_connectivity ?password ?private_key ~hostname
    ~port ~username () : oracle__forward_ssh_connectivity =
  { hostname; password; port; private_key; username }

let oracle__private_connectivity ~private_connection () :
    oracle__private_connectivity =
  { private_connection }

let oracle__ssl ?client_certificate ?client_key ~ca_certificate () :
    oracle__ssl =
  { ca_certificate; client_certificate; client_key }

let oracle__static_service_ip_connectivity () = ()

let oracle ?(forward_ssh_connectivity = [])
    ?(private_connectivity = []) ?(ssl = [])
    ?(static_service_ip_connectivity = []) ~database_service ~host
    ~password ~port ~username () : oracle =
  {
    database_service;
    host;
    password;
    port;
    username;
    forward_ssh_connectivity;
    private_connectivity;
    ssl;
    static_service_ip_connectivity;
  }

let postgresql__ssl ?client_certificate ?client_key ~ca_certificate
    () : postgresql__ssl =
  { ca_certificate; client_certificate; client_key }

let postgresql ?cloud_sql_id ?(ssl = []) ~host ~password ~port
    ~username () : postgresql =
  { cloud_sql_id; host; password; port; username; ssl }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_database_migration_service_connection_profile
    ?display_name ?id ?labels ?location ?project ?(alloydb = [])
    ?(cloudsql = []) ?(mysql = []) ?(oracle = []) ?(postgresql = [])
    ?timeouts ~connection_profile_id () :
    google_database_migration_service_connection_profile =
  {
    connection_profile_id;
    display_name;
    id;
    labels;
    location;
    project;
    alloydb;
    cloudsql;
    mysql;
    oracle;
    postgresql;
    timeouts;
  }

type t = {
  tf_name : string;
  connection_profile_id : string prop;
  create_time : string prop;
  dbprovider : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  error : error list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
}

let make ?display_name ?id ?labels ?location ?project ?(alloydb = [])
    ?(cloudsql = []) ?(mysql = []) ?(oracle = []) ?(postgresql = [])
    ?timeouts ~connection_profile_id __id =
  let __type =
    "google_database_migration_service_connection_profile"
  in
  let __attrs =
    ({
       tf_name = __id;
       connection_profile_id =
         Prop.computed __type __id "connection_profile_id";
       create_time = Prop.computed __type __id "create_time";
       dbprovider = Prop.computed __type __id "dbprovider";
       display_name = Prop.computed __type __id "display_name";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       error = Prop.computed __type __id "error";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       state = Prop.computed __type __id "state";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_database_migration_service_connection_profile
        (google_database_migration_service_connection_profile
           ?display_name ?id ?labels ?location ?project ~alloydb
           ~cloudsql ~mysql ~oracle ~postgresql ?timeouts
           ~connection_profile_id ());
    attrs = __attrs;
  }

let register ?tf_module ?display_name ?id ?labels ?location ?project
    ?(alloydb = []) ?(cloudsql = []) ?(mysql = []) ?(oracle = [])
    ?(postgresql = []) ?timeouts ~connection_profile_id __id =
  let (r : _ Tf_core.resource) =
    make ?display_name ?id ?labels ?location ?project ~alloydb
      ~cloudsql ~mysql ~oracle ~postgresql ?timeouts
      ~connection_profile_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
