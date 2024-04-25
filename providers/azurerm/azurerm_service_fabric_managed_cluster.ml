(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type authentication__active_directory = {
  client_application_id : string prop;
  cluster_application_id : string prop;
  tenant_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : authentication__active_directory) -> ()

let yojson_of_authentication__active_directory =
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
    : authentication__active_directory ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_authentication__active_directory

[@@@deriving.end]

type authentication__certificate = {
  common_name : string prop option; [@option]
  thumbprint : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : authentication__certificate) -> ()

let yojson_of_authentication__certificate =
  (function
   | {
       common_name = v_common_name;
       thumbprint = v_thumbprint;
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
         let arg = yojson_of_prop yojson_of_string v_thumbprint in
         ("thumbprint", arg) :: bnds
       in
       let bnds =
         match v_common_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "common_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : authentication__certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_authentication__certificate

[@@@deriving.end]

type authentication = {
  active_directory : authentication__active_directory list;
  certificate : authentication__certificate list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : authentication) -> ()

let yojson_of_authentication =
  (function
   | {
       active_directory = v_active_directory;
       certificate = v_certificate;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_authentication__certificate
             v_certificate
         in
         ("certificate", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_authentication__active_directory
             v_active_directory
         in
         ("active_directory", arg) :: bnds
       in
       `Assoc bnds
    : authentication -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_authentication

[@@@deriving.end]

type custom_fabric_setting = {
  parameter : string prop;
  section : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : custom_fabric_setting) -> ()

let yojson_of_custom_fabric_setting =
  (function
   | {
       parameter = v_parameter;
       section = v_section;
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
         let arg = yojson_of_prop yojson_of_string v_section in
         ("section", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_parameter in
         ("parameter", arg) :: bnds
       in
       `Assoc bnds
    : custom_fabric_setting -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_custom_fabric_setting

[@@@deriving.end]

type lb_rule = {
  backend_port : float prop;
  frontend_port : float prop;
  probe_protocol : string prop;
  probe_request_path : string prop option; [@option]
  protocol : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : lb_rule) -> ()

let yojson_of_lb_rule =
  (function
   | {
       backend_port = v_backend_port;
       frontend_port = v_frontend_port;
       probe_protocol = v_probe_protocol;
       probe_request_path = v_probe_request_path;
       protocol = v_protocol;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         match v_probe_request_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "probe_request_path", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_probe_protocol
         in
         ("probe_protocol", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_frontend_port in
         ("frontend_port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_backend_port in
         ("backend_port", arg) :: bnds
       in
       `Assoc bnds
    : lb_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_lb_rule

[@@@deriving.end]

type node_type__vm_secrets__certificates = {
  store : string prop;
  url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_type__vm_secrets__certificates) -> ()

let yojson_of_node_type__vm_secrets__certificates =
  (function
   | { store = v_store; url = v_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_store in
         ("store", arg) :: bnds
       in
       `Assoc bnds
    : node_type__vm_secrets__certificates ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_type__vm_secrets__certificates

[@@@deriving.end]

type node_type__vm_secrets = {
  vault_id : string prop;
  certificates : node_type__vm_secrets__certificates list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_type__vm_secrets) -> ()

let yojson_of_node_type__vm_secrets =
  (function
   | { vault_id = v_vault_id; certificates = v_certificates } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_node_type__vm_secrets__certificates
             v_certificates
         in
         ("certificates", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vault_id in
         ("vault_id", arg) :: bnds
       in
       `Assoc bnds
    : node_type__vm_secrets -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_type__vm_secrets

[@@@deriving.end]

type node_type = {
  application_port_range : string prop;
  capacities : (string * string prop) list option; [@option]
  data_disk_size_gb : float prop;
  data_disk_type : string prop option; [@option]
  ephemeral_port_range : string prop;
  multiple_placement_groups_enabled : bool prop option; [@option]
  name : string prop;
  placement_properties : (string * string prop) list option;
      [@option]
  primary : bool prop option; [@option]
  stateless : bool prop option; [@option]
  vm_image_offer : string prop;
  vm_image_publisher : string prop;
  vm_image_sku : string prop;
  vm_image_version : string prop;
  vm_instance_count : float prop;
  vm_size : string prop;
  vm_secrets : node_type__vm_secrets list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_type) -> ()

let yojson_of_node_type =
  (function
   | {
       application_port_range = v_application_port_range;
       capacities = v_capacities;
       data_disk_size_gb = v_data_disk_size_gb;
       data_disk_type = v_data_disk_type;
       ephemeral_port_range = v_ephemeral_port_range;
       multiple_placement_groups_enabled =
         v_multiple_placement_groups_enabled;
       name = v_name;
       placement_properties = v_placement_properties;
       primary = v_primary;
       stateless = v_stateless;
       vm_image_offer = v_vm_image_offer;
       vm_image_publisher = v_vm_image_publisher;
       vm_image_sku = v_vm_image_sku;
       vm_image_version = v_vm_image_version;
       vm_instance_count = v_vm_instance_count;
       vm_size = v_vm_size;
       vm_secrets = v_vm_secrets;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_node_type__vm_secrets
             v_vm_secrets
         in
         ("vm_secrets", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vm_size in
         ("vm_size", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_vm_instance_count
         in
         ("vm_instance_count", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_vm_image_version
         in
         ("vm_image_version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vm_image_sku in
         ("vm_image_sku", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_vm_image_publisher
         in
         ("vm_image_publisher", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_vm_image_offer
         in
         ("vm_image_offer", arg) :: bnds
       in
       let bnds =
         match v_stateless with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "stateless", arg in
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
         match v_multiple_placement_groups_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "multiple_placement_groups_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ephemeral_port_range
         in
         ("ephemeral_port_range", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_float v_data_disk_size_gb
         in
         ("data_disk_size_gb", arg) :: bnds
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
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_application_port_range
         in
         ("application_port_range", arg) :: bnds
       in
       `Assoc bnds
    : node_type -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_type

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

type azurerm_service_fabric_managed_cluster = {
  backup_service_enabled : bool prop option; [@option]
  client_connection_port : float prop;
  dns_name : string prop option; [@option]
  dns_service_enabled : bool prop option; [@option]
  http_gateway_port : float prop;
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  password : string prop option; [@option]
  resource_group_name : string prop;
  sku : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  upgrade_wave : string prop option; [@option]
  username : string prop option; [@option]
  authentication : authentication list;
  custom_fabric_setting : custom_fabric_setting list;
  lb_rule : lb_rule list;
  node_type : node_type list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_service_fabric_managed_cluster) -> ()

let yojson_of_azurerm_service_fabric_managed_cluster =
  (function
   | {
       backup_service_enabled = v_backup_service_enabled;
       client_connection_port = v_client_connection_port;
       dns_name = v_dns_name;
       dns_service_enabled = v_dns_service_enabled;
       http_gateway_port = v_http_gateway_port;
       id = v_id;
       location = v_location;
       name = v_name;
       password = v_password;
       resource_group_name = v_resource_group_name;
       sku = v_sku;
       tags = v_tags;
       upgrade_wave = v_upgrade_wave;
       username = v_username;
       authentication = v_authentication;
       custom_fabric_setting = v_custom_fabric_setting;
       lb_rule = v_lb_rule;
       node_type = v_node_type;
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
         let arg = yojson_of_list yojson_of_node_type v_node_type in
         ("node_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_lb_rule v_lb_rule in
         ("lb_rule", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_custom_fabric_setting
             v_custom_fabric_setting
         in
         ("custom_fabric_setting", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_authentication v_authentication
         in
         ("authentication", arg) :: bnds
       in
       let bnds =
         match v_username with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "username", arg in
             bnd :: bnds
       in
       let bnds =
         match v_upgrade_wave with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "upgrade_wave", arg in
             bnd :: bnds
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
         match v_sku with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sku", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
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
           yojson_of_prop yojson_of_float v_http_gateway_port
         in
         ("http_gateway_port", arg) :: bnds
       in
       let bnds =
         match v_dns_service_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "dns_service_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dns_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dns_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_client_connection_port
         in
         ("client_connection_port", arg) :: bnds
       in
       let bnds =
         match v_backup_service_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "backup_service_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_service_fabric_managed_cluster ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_service_fabric_managed_cluster

[@@@deriving.end]

let authentication__active_directory ~client_application_id
    ~cluster_application_id ~tenant_id () :
    authentication__active_directory =
  { client_application_id; cluster_application_id; tenant_id }

let authentication__certificate ?common_name ~thumbprint ~type_ () :
    authentication__certificate =
  { common_name; thumbprint; type_ }

let authentication ?(active_directory = []) ?(certificate = []) () :
    authentication =
  { active_directory; certificate }

let custom_fabric_setting ~parameter ~section ~value () :
    custom_fabric_setting =
  { parameter; section; value }

let lb_rule ?probe_request_path ~backend_port ~frontend_port
    ~probe_protocol ~protocol () : lb_rule =
  {
    backend_port;
    frontend_port;
    probe_protocol;
    probe_request_path;
    protocol;
  }

let node_type__vm_secrets__certificates ~store ~url () :
    node_type__vm_secrets__certificates =
  { store; url }

let node_type__vm_secrets ~vault_id ~certificates () :
    node_type__vm_secrets =
  { vault_id; certificates }

let node_type ?capacities ?data_disk_type
    ?multiple_placement_groups_enabled ?placement_properties ?primary
    ?stateless ?(vm_secrets = []) ~application_port_range
    ~data_disk_size_gb ~ephemeral_port_range ~name ~vm_image_offer
    ~vm_image_publisher ~vm_image_sku ~vm_image_version
    ~vm_instance_count ~vm_size () : node_type =
  {
    application_port_range;
    capacities;
    data_disk_size_gb;
    data_disk_type;
    ephemeral_port_range;
    multiple_placement_groups_enabled;
    name;
    placement_properties;
    primary;
    stateless;
    vm_image_offer;
    vm_image_publisher;
    vm_image_sku;
    vm_image_version;
    vm_instance_count;
    vm_size;
    vm_secrets;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_service_fabric_managed_cluster ?backup_service_enabled
    ?dns_name ?dns_service_enabled ?id ?password ?sku ?tags
    ?upgrade_wave ?username ?(authentication = [])
    ?(custom_fabric_setting = []) ?(node_type = []) ?timeouts
    ~client_connection_port ~http_gateway_port ~location ~name
    ~resource_group_name ~lb_rule () :
    azurerm_service_fabric_managed_cluster =
  {
    backup_service_enabled;
    client_connection_port;
    dns_name;
    dns_service_enabled;
    http_gateway_port;
    id;
    location;
    name;
    password;
    resource_group_name;
    sku;
    tags;
    upgrade_wave;
    username;
    authentication;
    custom_fabric_setting;
    lb_rule;
    node_type;
    timeouts;
  }

type t = {
  backup_service_enabled : bool prop;
  client_connection_port : float prop;
  dns_name : string prop;
  dns_service_enabled : bool prop;
  http_gateway_port : float prop;
  id : string prop;
  location : string prop;
  name : string prop;
  password : string prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string) list prop;
  upgrade_wave : string prop;
  username : string prop;
}

let make ?backup_service_enabled ?dns_name ?dns_service_enabled ?id
    ?password ?sku ?tags ?upgrade_wave ?username
    ?(authentication = []) ?(custom_fabric_setting = [])
    ?(node_type = []) ?timeouts ~client_connection_port
    ~http_gateway_port ~location ~name ~resource_group_name ~lb_rule
    __id =
  let __type = "azurerm_service_fabric_managed_cluster" in
  let __attrs =
    ({
       backup_service_enabled =
         Prop.computed __type __id "backup_service_enabled";
       client_connection_port =
         Prop.computed __type __id "client_connection_port";
       dns_name = Prop.computed __type __id "dns_name";
       dns_service_enabled =
         Prop.computed __type __id "dns_service_enabled";
       http_gateway_port =
         Prop.computed __type __id "http_gateway_port";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       password = Prop.computed __type __id "password";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku = Prop.computed __type __id "sku";
       tags = Prop.computed __type __id "tags";
       upgrade_wave = Prop.computed __type __id "upgrade_wave";
       username = Prop.computed __type __id "username";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_service_fabric_managed_cluster
        (azurerm_service_fabric_managed_cluster
           ?backup_service_enabled ?dns_name ?dns_service_enabled ?id
           ?password ?sku ?tags ?upgrade_wave ?username
           ~authentication ~custom_fabric_setting ~node_type
           ?timeouts ~client_connection_port ~http_gateway_port
           ~location ~name ~resource_group_name ~lb_rule ());
    attrs = __attrs;
  }

let register ?tf_module ?backup_service_enabled ?dns_name
    ?dns_service_enabled ?id ?password ?sku ?tags ?upgrade_wave
    ?username ?(authentication = []) ?(custom_fabric_setting = [])
    ?(node_type = []) ?timeouts ~client_connection_port
    ~http_gateway_port ~location ~name ~resource_group_name ~lb_rule
    __id =
  let (r : _ Tf_core.resource) =
    make ?backup_service_enabled ?dns_name ?dns_service_enabled ?id
      ?password ?sku ?tags ?upgrade_wave ?username ~authentication
      ~custom_fabric_setting ~node_type ?timeouts
      ~client_connection_port ~http_gateway_port ~location ~name
      ~resource_group_name ~lb_rule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
