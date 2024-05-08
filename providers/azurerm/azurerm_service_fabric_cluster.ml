(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type azure_active_directory = {
  client_application_id : string prop;
  cluster_application_id : string prop;
  tenant_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azure_active_directory) -> ()

let yojson_of_azure_active_directory =
  (function
   | {
       client_application_id = v_client_application_id;
       cluster_application_id = v_cluster_application_id;
       tenant_id = v_tenant_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tenant_id in
         ("tenant_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cluster_application_id
         in
         ("cluster_application_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_client_application_id
         in
         ("client_application_id", arg) :: bnds
       in
       `Assoc bnds
    : azure_active_directory -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azure_active_directory

[@@@deriving.end]

type certificate = {
  thumbprint : string prop;
  thumbprint_secondary : string prop option; [@option]
  x509_store_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : certificate) -> ()

let yojson_of_certificate =
  (function
   | {
       thumbprint = v_thumbprint;
       thumbprint_secondary = v_thumbprint_secondary;
       x509_store_name = v_x509_store_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_x509_store_name
         in
         ("x509_store_name", arg) :: bnds
       in
       let bnds =
         match v_thumbprint_secondary with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "thumbprint_secondary", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_thumbprint in
         ("thumbprint", arg) :: bnds
       in
       `Assoc bnds
    : certificate -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_certificate

[@@@deriving.end]

type certificate_common_names__common_names = {
  certificate_common_name : string prop;
  certificate_issuer_thumbprint : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : certificate_common_names__common_names) -> ()

let yojson_of_certificate_common_names__common_names =
  (function
   | {
       certificate_common_name = v_certificate_common_name;
       certificate_issuer_thumbprint =
         v_certificate_issuer_thumbprint;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_certificate_issuer_thumbprint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_issuer_thumbprint", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_certificate_common_name
         in
         ("certificate_common_name", arg) :: bnds
       in
       `Assoc bnds
    : certificate_common_names__common_names ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_certificate_common_names__common_names

[@@@deriving.end]

type certificate_common_names = {
  x509_store_name : string prop;
  common_names : certificate_common_names__common_names list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : certificate_common_names) -> ()

let yojson_of_certificate_common_names =
  (function
   | {
       x509_store_name = v_x509_store_name;
       common_names = v_common_names;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_common_names then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_certificate_common_names__common_names)
               v_common_names
           in
           let bnd = "common_names", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_x509_store_name
         in
         ("x509_store_name", arg) :: bnds
       in
       `Assoc bnds
    : certificate_common_names -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_certificate_common_names

[@@@deriving.end]

type client_certificate_common_name = {
  common_name : string prop;
  is_admin : bool prop;
  issuer_thumbprint : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : client_certificate_common_name) -> ()

let yojson_of_client_certificate_common_name =
  (function
   | {
       common_name = v_common_name;
       is_admin = v_is_admin;
       issuer_thumbprint = v_issuer_thumbprint;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_issuer_thumbprint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "issuer_thumbprint", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_is_admin in
         ("is_admin", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_common_name in
         ("common_name", arg) :: bnds
       in
       `Assoc bnds
    : client_certificate_common_name ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_client_certificate_common_name

[@@@deriving.end]

type client_certificate_thumbprint = {
  is_admin : bool prop;
  thumbprint : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : client_certificate_thumbprint) -> ()

let yojson_of_client_certificate_thumbprint =
  (function
   | { is_admin = v_is_admin; thumbprint = v_thumbprint } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_thumbprint in
         ("thumbprint", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_is_admin in
         ("is_admin", arg) :: bnds
       in
       `Assoc bnds
    : client_certificate_thumbprint ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_client_certificate_thumbprint

[@@@deriving.end]

type diagnostics_config = {
  blob_endpoint : string prop;
  protected_account_key_name : string prop;
  queue_endpoint : string prop;
  storage_account_name : string prop;
  table_endpoint : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : diagnostics_config) -> ()

let yojson_of_diagnostics_config =
  (function
   | {
       blob_endpoint = v_blob_endpoint;
       protected_account_key_name = v_protected_account_key_name;
       queue_endpoint = v_queue_endpoint;
       storage_account_name = v_storage_account_name;
       table_endpoint = v_table_endpoint;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_table_endpoint
         in
         ("table_endpoint", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_account_name
         in
         ("storage_account_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_queue_endpoint
         in
         ("queue_endpoint", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_protected_account_key_name
         in
         ("protected_account_key_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_blob_endpoint in
         ("blob_endpoint", arg) :: bnds
       in
       `Assoc bnds
    : diagnostics_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_diagnostics_config

[@@@deriving.end]

type fabric_settings = {
  name : string prop;
  parameters : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : fabric_settings) -> ()

let yojson_of_fabric_settings =
  (function
   | { name = v_name; parameters = v_parameters } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_parameters with
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
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : fabric_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_fabric_settings

[@@@deriving.end]

type node_type__application_ports = {
  end_port : float prop;
  start_port : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_type__application_ports) -> ()

let yojson_of_node_type__application_ports =
  (function
   | { end_port = v_end_port; start_port = v_start_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_start_port in
         ("start_port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_end_port in
         ("end_port", arg) :: bnds
       in
       `Assoc bnds
    : node_type__application_ports ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_type__application_ports

[@@@deriving.end]

type node_type__ephemeral_ports = {
  end_port : float prop;
  start_port : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_type__ephemeral_ports) -> ()

let yojson_of_node_type__ephemeral_ports =
  (function
   | { end_port = v_end_port; start_port = v_start_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_start_port in
         ("start_port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_end_port in
         ("end_port", arg) :: bnds
       in
       `Assoc bnds
    : node_type__ephemeral_ports -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_type__ephemeral_ports

[@@@deriving.end]

type node_type = {
  capacities : (string * string prop) list option; [@option]
  client_endpoint_port : float prop;
  durability_level : string prop option; [@option]
  http_endpoint_port : float prop;
  instance_count : float prop;
  is_primary : bool prop;
  is_stateless : bool prop option; [@option]
  multiple_availability_zones : bool prop option; [@option]
  name : string prop;
  placement_properties : (string * string prop) list option;
      [@option]
  reverse_proxy_endpoint_port : float prop option; [@option]
  application_ports : node_type__application_ports list;
      [@default []] [@yojson_drop_default ( = )]
  ephemeral_ports : node_type__ephemeral_ports list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_type) -> ()

let yojson_of_node_type =
  (function
   | {
       capacities = v_capacities;
       client_endpoint_port = v_client_endpoint_port;
       durability_level = v_durability_level;
       http_endpoint_port = v_http_endpoint_port;
       instance_count = v_instance_count;
       is_primary = v_is_primary;
       is_stateless = v_is_stateless;
       multiple_availability_zones = v_multiple_availability_zones;
       name = v_name;
       placement_properties = v_placement_properties;
       reverse_proxy_endpoint_port = v_reverse_proxy_endpoint_port;
       application_ports = v_application_ports;
       ephemeral_ports = v_ephemeral_ports;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_ephemeral_ports then bnds
         else
           let arg =
             (yojson_of_list yojson_of_node_type__ephemeral_ports)
               v_ephemeral_ports
           in
           let bnd = "ephemeral_ports", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_application_ports then bnds
         else
           let arg =
             (yojson_of_list yojson_of_node_type__application_ports)
               v_application_ports
           in
           let bnd = "application_ports", arg in
           bnd :: bnds
       in
       let bnds =
         match v_reverse_proxy_endpoint_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "reverse_proxy_endpoint_port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_placement_properties with
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
             let bnd = "placement_properties", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_multiple_availability_zones with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "multiple_availability_zones", arg in
             bnd :: bnds
       in
       let bnds =
         match v_is_stateless with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_stateless", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_is_primary in
         ("is_primary", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_instance_count in
         ("instance_count", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_http_endpoint_port
         in
         ("http_endpoint_port", arg) :: bnds
       in
       let bnds =
         match v_durability_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "durability_level", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_client_endpoint_port
         in
         ("client_endpoint_port", arg) :: bnds
       in
       let bnds =
         match v_capacities with
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
             let bnd = "capacities", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : node_type -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_type

[@@@deriving.end]

type reverse_proxy_certificate = {
  thumbprint : string prop;
  thumbprint_secondary : string prop option; [@option]
  x509_store_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : reverse_proxy_certificate) -> ()

let yojson_of_reverse_proxy_certificate =
  (function
   | {
       thumbprint = v_thumbprint;
       thumbprint_secondary = v_thumbprint_secondary;
       x509_store_name = v_x509_store_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_x509_store_name
         in
         ("x509_store_name", arg) :: bnds
       in
       let bnds =
         match v_thumbprint_secondary with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "thumbprint_secondary", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_thumbprint in
         ("thumbprint", arg) :: bnds
       in
       `Assoc bnds
    : reverse_proxy_certificate -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_reverse_proxy_certificate

[@@@deriving.end]

type reverse_proxy_certificate_common_names__common_names = {
  certificate_common_name : string prop;
  certificate_issuer_thumbprint : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : reverse_proxy_certificate_common_names__common_names) -> ()

let yojson_of_reverse_proxy_certificate_common_names__common_names =
  (function
   | {
       certificate_common_name = v_certificate_common_name;
       certificate_issuer_thumbprint =
         v_certificate_issuer_thumbprint;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_certificate_issuer_thumbprint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_issuer_thumbprint", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_certificate_common_name
         in
         ("certificate_common_name", arg) :: bnds
       in
       `Assoc bnds
    : reverse_proxy_certificate_common_names__common_names ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_reverse_proxy_certificate_common_names__common_names

[@@@deriving.end]

type reverse_proxy_certificate_common_names = {
  x509_store_name : string prop;
  common_names :
    reverse_proxy_certificate_common_names__common_names list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : reverse_proxy_certificate_common_names) -> ()

let yojson_of_reverse_proxy_certificate_common_names =
  (function
   | {
       x509_store_name = v_x509_store_name;
       common_names = v_common_names;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_common_names then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_reverse_proxy_certificate_common_names__common_names)
               v_common_names
           in
           let bnd = "common_names", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_x509_store_name
         in
         ("x509_store_name", arg) :: bnds
       in
       `Assoc bnds
    : reverse_proxy_certificate_common_names ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_reverse_proxy_certificate_common_names

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

type upgrade_policy__delta_health_policy = {
  max_delta_unhealthy_applications_percent : float prop option;
      [@option]
  max_delta_unhealthy_nodes_percent : float prop option; [@option]
  max_upgrade_domain_delta_unhealthy_nodes_percent :
    float prop option;
      [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : upgrade_policy__delta_health_policy) -> ()

let yojson_of_upgrade_policy__delta_health_policy =
  (function
   | {
       max_delta_unhealthy_applications_percent =
         v_max_delta_unhealthy_applications_percent;
       max_delta_unhealthy_nodes_percent =
         v_max_delta_unhealthy_nodes_percent;
       max_upgrade_domain_delta_unhealthy_nodes_percent =
         v_max_upgrade_domain_delta_unhealthy_nodes_percent;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match
           v_max_upgrade_domain_delta_unhealthy_nodes_percent
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               ( "max_upgrade_domain_delta_unhealthy_nodes_percent",
                 arg )
             in
             bnd :: bnds
       in
       let bnds =
         match v_max_delta_unhealthy_nodes_percent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_delta_unhealthy_nodes_percent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_delta_unhealthy_applications_percent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "max_delta_unhealthy_applications_percent", arg
             in
             bnd :: bnds
       in
       `Assoc bnds
    : upgrade_policy__delta_health_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_upgrade_policy__delta_health_policy

[@@@deriving.end]

type upgrade_policy__health_policy = {
  max_unhealthy_applications_percent : float prop option; [@option]
  max_unhealthy_nodes_percent : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : upgrade_policy__health_policy) -> ()

let yojson_of_upgrade_policy__health_policy =
  (function
   | {
       max_unhealthy_applications_percent =
         v_max_unhealthy_applications_percent;
       max_unhealthy_nodes_percent = v_max_unhealthy_nodes_percent;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_max_unhealthy_nodes_percent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_unhealthy_nodes_percent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_unhealthy_applications_percent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_unhealthy_applications_percent", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : upgrade_policy__health_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_upgrade_policy__health_policy

[@@@deriving.end]

type upgrade_policy = {
  force_restart_enabled : bool prop option; [@option]
  health_check_retry_timeout : string prop option; [@option]
  health_check_stable_duration : string prop option; [@option]
  health_check_wait_duration : string prop option; [@option]
  upgrade_domain_timeout : string prop option; [@option]
  upgrade_replica_set_check_timeout : string prop option; [@option]
  upgrade_timeout : string prop option; [@option]
  delta_health_policy : upgrade_policy__delta_health_policy list;
      [@default []] [@yojson_drop_default ( = )]
  health_policy : upgrade_policy__health_policy list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : upgrade_policy) -> ()

let yojson_of_upgrade_policy =
  (function
   | {
       force_restart_enabled = v_force_restart_enabled;
       health_check_retry_timeout = v_health_check_retry_timeout;
       health_check_stable_duration = v_health_check_stable_duration;
       health_check_wait_duration = v_health_check_wait_duration;
       upgrade_domain_timeout = v_upgrade_domain_timeout;
       upgrade_replica_set_check_timeout =
         v_upgrade_replica_set_check_timeout;
       upgrade_timeout = v_upgrade_timeout;
       delta_health_policy = v_delta_health_policy;
       health_policy = v_health_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_health_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_upgrade_policy__health_policy)
               v_health_policy
           in
           let bnd = "health_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_delta_health_policy then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_upgrade_policy__delta_health_policy)
               v_delta_health_policy
           in
           let bnd = "delta_health_policy", arg in
           bnd :: bnds
       in
       let bnds =
         match v_upgrade_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "upgrade_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_upgrade_replica_set_check_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "upgrade_replica_set_check_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_upgrade_domain_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "upgrade_domain_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_health_check_wait_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "health_check_wait_duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_health_check_stable_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "health_check_stable_duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_health_check_retry_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "health_check_retry_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_force_restart_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_restart_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : upgrade_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_upgrade_policy

[@@@deriving.end]

type azurerm_service_fabric_cluster = {
  add_on_features : string prop list option; [@option]
  cluster_code_version : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  management_endpoint : string prop;
  name : string prop;
  reliability_level : string prop;
  resource_group_name : string prop;
  service_fabric_zonal_upgrade_mode : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  upgrade_mode : string prop;
  vm_image : string prop;
  vmss_zonal_upgrade_mode : string prop option; [@option]
  azure_active_directory : azure_active_directory list;
      [@default []] [@yojson_drop_default ( = )]
  certificate : certificate list;
      [@default []] [@yojson_drop_default ( = )]
  certificate_common_names : certificate_common_names list;
      [@default []] [@yojson_drop_default ( = )]
  client_certificate_common_name :
    client_certificate_common_name list;
      [@default []] [@yojson_drop_default ( = )]
  client_certificate_thumbprint : client_certificate_thumbprint list;
      [@default []] [@yojson_drop_default ( = )]
  diagnostics_config : diagnostics_config list;
      [@default []] [@yojson_drop_default ( = )]
  fabric_settings : fabric_settings list;
      [@default []] [@yojson_drop_default ( = )]
  node_type : node_type list;
      [@default []] [@yojson_drop_default ( = )]
  reverse_proxy_certificate : reverse_proxy_certificate list;
      [@default []] [@yojson_drop_default ( = )]
  reverse_proxy_certificate_common_names :
    reverse_proxy_certificate_common_names list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
  upgrade_policy : upgrade_policy list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_service_fabric_cluster) -> ()

let yojson_of_azurerm_service_fabric_cluster =
  (function
   | {
       add_on_features = v_add_on_features;
       cluster_code_version = v_cluster_code_version;
       id = v_id;
       location = v_location;
       management_endpoint = v_management_endpoint;
       name = v_name;
       reliability_level = v_reliability_level;
       resource_group_name = v_resource_group_name;
       service_fabric_zonal_upgrade_mode =
         v_service_fabric_zonal_upgrade_mode;
       tags = v_tags;
       upgrade_mode = v_upgrade_mode;
       vm_image = v_vm_image;
       vmss_zonal_upgrade_mode = v_vmss_zonal_upgrade_mode;
       azure_active_directory = v_azure_active_directory;
       certificate = v_certificate;
       certificate_common_names = v_certificate_common_names;
       client_certificate_common_name =
         v_client_certificate_common_name;
       client_certificate_thumbprint =
         v_client_certificate_thumbprint;
       diagnostics_config = v_diagnostics_config;
       fabric_settings = v_fabric_settings;
       node_type = v_node_type;
       reverse_proxy_certificate = v_reverse_proxy_certificate;
       reverse_proxy_certificate_common_names =
         v_reverse_proxy_certificate_common_names;
       timeouts = v_timeouts;
       upgrade_policy = v_upgrade_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_upgrade_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_upgrade_policy)
               v_upgrade_policy
           in
           let bnd = "upgrade_policy", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if [] = v_reverse_proxy_certificate_common_names then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_reverse_proxy_certificate_common_names)
               v_reverse_proxy_certificate_common_names
           in
           let bnd = "reverse_proxy_certificate_common_names", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_reverse_proxy_certificate then bnds
         else
           let arg =
             (yojson_of_list yojson_of_reverse_proxy_certificate)
               v_reverse_proxy_certificate
           in
           let bnd = "reverse_proxy_certificate", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_node_type then bnds
         else
           let arg =
             (yojson_of_list yojson_of_node_type) v_node_type
           in
           let bnd = "node_type", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_fabric_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_fabric_settings)
               v_fabric_settings
           in
           let bnd = "fabric_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_diagnostics_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_diagnostics_config)
               v_diagnostics_config
           in
           let bnd = "diagnostics_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_client_certificate_thumbprint then bnds
         else
           let arg =
             (yojson_of_list yojson_of_client_certificate_thumbprint)
               v_client_certificate_thumbprint
           in
           let bnd = "client_certificate_thumbprint", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_client_certificate_common_name then bnds
         else
           let arg =
             (yojson_of_list yojson_of_client_certificate_common_name)
               v_client_certificate_common_name
           in
           let bnd = "client_certificate_common_name", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_certificate_common_names then bnds
         else
           let arg =
             (yojson_of_list yojson_of_certificate_common_names)
               v_certificate_common_names
           in
           let bnd = "certificate_common_names", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_certificate then bnds
         else
           let arg =
             (yojson_of_list yojson_of_certificate) v_certificate
           in
           let bnd = "certificate", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_azure_active_directory then bnds
         else
           let arg =
             (yojson_of_list yojson_of_azure_active_directory)
               v_azure_active_directory
           in
           let bnd = "azure_active_directory", arg in
           bnd :: bnds
       in
       let bnds =
         match v_vmss_zonal_upgrade_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vmss_zonal_upgrade_mode", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vm_image in
         ("vm_image", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_upgrade_mode in
         ("upgrade_mode", arg) :: bnds
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
         match v_service_fabric_zonal_upgrade_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_fabric_zonal_upgrade_mode", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_reliability_level
         in
         ("reliability_level", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_management_endpoint
         in
         ("management_endpoint", arg) :: bnds
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
         match v_cluster_code_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cluster_code_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_add_on_features with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "add_on_features", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_service_fabric_cluster ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_service_fabric_cluster

[@@@deriving.end]

let azure_active_directory ~client_application_id
    ~cluster_application_id ~tenant_id () : azure_active_directory =
  { client_application_id; cluster_application_id; tenant_id }

let certificate ?thumbprint_secondary ~thumbprint ~x509_store_name ()
    : certificate =
  { thumbprint; thumbprint_secondary; x509_store_name }

let certificate_common_names__common_names
    ?certificate_issuer_thumbprint ~certificate_common_name () :
    certificate_common_names__common_names =
  { certificate_common_name; certificate_issuer_thumbprint }

let certificate_common_names ~x509_store_name ~common_names () :
    certificate_common_names =
  { x509_store_name; common_names }

let client_certificate_common_name ?issuer_thumbprint ~common_name
    ~is_admin () : client_certificate_common_name =
  { common_name; is_admin; issuer_thumbprint }

let client_certificate_thumbprint ~is_admin ~thumbprint () :
    client_certificate_thumbprint =
  { is_admin; thumbprint }

let diagnostics_config ~blob_endpoint ~protected_account_key_name
    ~queue_endpoint ~storage_account_name ~table_endpoint () :
    diagnostics_config =
  {
    blob_endpoint;
    protected_account_key_name;
    queue_endpoint;
    storage_account_name;
    table_endpoint;
  }

let fabric_settings ?parameters ~name () : fabric_settings =
  { name; parameters }

let node_type__application_ports ~end_port ~start_port () :
    node_type__application_ports =
  { end_port; start_port }

let node_type__ephemeral_ports ~end_port ~start_port () :
    node_type__ephemeral_ports =
  { end_port; start_port }

let node_type ?capacities ?durability_level ?is_stateless
    ?multiple_availability_zones ?placement_properties
    ?reverse_proxy_endpoint_port ?(application_ports = [])
    ?(ephemeral_ports = []) ~client_endpoint_port ~http_endpoint_port
    ~instance_count ~is_primary ~name () : node_type =
  {
    capacities;
    client_endpoint_port;
    durability_level;
    http_endpoint_port;
    instance_count;
    is_primary;
    is_stateless;
    multiple_availability_zones;
    name;
    placement_properties;
    reverse_proxy_endpoint_port;
    application_ports;
    ephemeral_ports;
  }

let reverse_proxy_certificate ?thumbprint_secondary ~thumbprint
    ~x509_store_name () : reverse_proxy_certificate =
  { thumbprint; thumbprint_secondary; x509_store_name }

let reverse_proxy_certificate_common_names__common_names
    ?certificate_issuer_thumbprint ~certificate_common_name () :
    reverse_proxy_certificate_common_names__common_names =
  { certificate_common_name; certificate_issuer_thumbprint }

let reverse_proxy_certificate_common_names ~x509_store_name
    ~common_names () : reverse_proxy_certificate_common_names =
  { x509_store_name; common_names }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let upgrade_policy__delta_health_policy
    ?max_delta_unhealthy_applications_percent
    ?max_delta_unhealthy_nodes_percent
    ?max_upgrade_domain_delta_unhealthy_nodes_percent () :
    upgrade_policy__delta_health_policy =
  {
    max_delta_unhealthy_applications_percent;
    max_delta_unhealthy_nodes_percent;
    max_upgrade_domain_delta_unhealthy_nodes_percent;
  }

let upgrade_policy__health_policy ?max_unhealthy_applications_percent
    ?max_unhealthy_nodes_percent () : upgrade_policy__health_policy =
  { max_unhealthy_applications_percent; max_unhealthy_nodes_percent }

let upgrade_policy ?force_restart_enabled ?health_check_retry_timeout
    ?health_check_stable_duration ?health_check_wait_duration
    ?upgrade_domain_timeout ?upgrade_replica_set_check_timeout
    ?upgrade_timeout ?(delta_health_policy = [])
    ?(health_policy = []) () : upgrade_policy =
  {
    force_restart_enabled;
    health_check_retry_timeout;
    health_check_stable_duration;
    health_check_wait_duration;
    upgrade_domain_timeout;
    upgrade_replica_set_check_timeout;
    upgrade_timeout;
    delta_health_policy;
    health_policy;
  }

let azurerm_service_fabric_cluster ?add_on_features
    ?cluster_code_version ?id ?service_fabric_zonal_upgrade_mode
    ?tags ?vmss_zonal_upgrade_mode ?(azure_active_directory = [])
    ?(certificate = []) ?(certificate_common_names = [])
    ?(client_certificate_common_name = [])
    ?(client_certificate_thumbprint = []) ?(diagnostics_config = [])
    ?(fabric_settings = []) ?(reverse_proxy_certificate = [])
    ?(reverse_proxy_certificate_common_names = []) ?timeouts
    ?(upgrade_policy = []) ~location ~management_endpoint ~name
    ~reliability_level ~resource_group_name ~upgrade_mode ~vm_image
    ~node_type () : azurerm_service_fabric_cluster =
  {
    add_on_features;
    cluster_code_version;
    id;
    location;
    management_endpoint;
    name;
    reliability_level;
    resource_group_name;
    service_fabric_zonal_upgrade_mode;
    tags;
    upgrade_mode;
    vm_image;
    vmss_zonal_upgrade_mode;
    azure_active_directory;
    certificate;
    certificate_common_names;
    client_certificate_common_name;
    client_certificate_thumbprint;
    diagnostics_config;
    fabric_settings;
    node_type;
    reverse_proxy_certificate;
    reverse_proxy_certificate_common_names;
    timeouts;
    upgrade_policy;
  }

type t = {
  tf_name : string;
  add_on_features : string list prop;
  cluster_code_version : string prop;
  cluster_endpoint : string prop;
  id : string prop;
  location : string prop;
  management_endpoint : string prop;
  name : string prop;
  reliability_level : string prop;
  resource_group_name : string prop;
  service_fabric_zonal_upgrade_mode : string prop;
  tags : (string * string) list prop;
  upgrade_mode : string prop;
  vm_image : string prop;
  vmss_zonal_upgrade_mode : string prop;
}

let make ?add_on_features ?cluster_code_version ?id
    ?service_fabric_zonal_upgrade_mode ?tags ?vmss_zonal_upgrade_mode
    ?(azure_active_directory = []) ?(certificate = [])
    ?(certificate_common_names = [])
    ?(client_certificate_common_name = [])
    ?(client_certificate_thumbprint = []) ?(diagnostics_config = [])
    ?(fabric_settings = []) ?(reverse_proxy_certificate = [])
    ?(reverse_proxy_certificate_common_names = []) ?timeouts
    ?(upgrade_policy = []) ~location ~management_endpoint ~name
    ~reliability_level ~resource_group_name ~upgrade_mode ~vm_image
    ~node_type __id =
  let __type = "azurerm_service_fabric_cluster" in
  let __attrs =
    ({
       tf_name = __id;
       add_on_features = Prop.computed __type __id "add_on_features";
       cluster_code_version =
         Prop.computed __type __id "cluster_code_version";
       cluster_endpoint =
         Prop.computed __type __id "cluster_endpoint";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       management_endpoint =
         Prop.computed __type __id "management_endpoint";
       name = Prop.computed __type __id "name";
       reliability_level =
         Prop.computed __type __id "reliability_level";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       service_fabric_zonal_upgrade_mode =
         Prop.computed __type __id
           "service_fabric_zonal_upgrade_mode";
       tags = Prop.computed __type __id "tags";
       upgrade_mode = Prop.computed __type __id "upgrade_mode";
       vm_image = Prop.computed __type __id "vm_image";
       vmss_zonal_upgrade_mode =
         Prop.computed __type __id "vmss_zonal_upgrade_mode";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_service_fabric_cluster
        (azurerm_service_fabric_cluster ?add_on_features
           ?cluster_code_version ?id
           ?service_fabric_zonal_upgrade_mode ?tags
           ?vmss_zonal_upgrade_mode ~azure_active_directory
           ~certificate ~certificate_common_names
           ~client_certificate_common_name
           ~client_certificate_thumbprint ~diagnostics_config
           ~fabric_settings ~reverse_proxy_certificate
           ~reverse_proxy_certificate_common_names ?timeouts
           ~upgrade_policy ~location ~management_endpoint ~name
           ~reliability_level ~resource_group_name ~upgrade_mode
           ~vm_image ~node_type ());
    attrs = __attrs;
  }

let register ?tf_module ?add_on_features ?cluster_code_version ?id
    ?service_fabric_zonal_upgrade_mode ?tags ?vmss_zonal_upgrade_mode
    ?(azure_active_directory = []) ?(certificate = [])
    ?(certificate_common_names = [])
    ?(client_certificate_common_name = [])
    ?(client_certificate_thumbprint = []) ?(diagnostics_config = [])
    ?(fabric_settings = []) ?(reverse_proxy_certificate = [])
    ?(reverse_proxy_certificate_common_names = []) ?timeouts
    ?(upgrade_policy = []) ~location ~management_endpoint ~name
    ~reliability_level ~resource_group_name ~upgrade_mode ~vm_image
    ~node_type __id =
  let (r : _ Tf_core.resource) =
    make ?add_on_features ?cluster_code_version ?id
      ?service_fabric_zonal_upgrade_mode ?tags
      ?vmss_zonal_upgrade_mode ~azure_active_directory ~certificate
      ~certificate_common_names ~client_certificate_common_name
      ~client_certificate_thumbprint ~diagnostics_config
      ~fabric_settings ~reverse_proxy_certificate
      ~reverse_proxy_certificate_common_names ?timeouts
      ~upgrade_policy ~location ~management_endpoint ~name
      ~reliability_level ~resource_group_name ~upgrade_mode ~vm_image
      ~node_type __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
