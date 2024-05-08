(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aci_connector_linux = { subnet_name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : aci_connector_linux) -> ()

let yojson_of_aci_connector_linux =
  (function
   | { subnet_name = v_subnet_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_name in
         ("subnet_name", arg) :: bnds
       in
       `Assoc bnds
    : aci_connector_linux -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aci_connector_linux

[@@@deriving.end]

type agent_pool_profile__upgrade_settings = {
  max_surge : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : agent_pool_profile__upgrade_settings) -> ()

let yojson_of_agent_pool_profile__upgrade_settings =
  (function
   | { max_surge = v_max_surge } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_max_surge in
         ("max_surge", arg) :: bnds
       in
       `Assoc bnds
    : agent_pool_profile__upgrade_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_agent_pool_profile__upgrade_settings

[@@@deriving.end]

type agent_pool_profile = {
  count : float prop;
  enable_auto_scaling : bool prop;
  enable_node_public_ip : bool prop;
  max_count : float prop;
  max_pods : float prop;
  min_count : float prop;
  name : string prop;
  node_labels : (string * string prop) list;
  node_public_ip_prefix_id : string prop;
  node_taints : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  orchestrator_version : string prop;
  os_disk_size_gb : float prop;
  os_type : string prop;
  tags : (string * string prop) list;
  type_ : string prop; [@key "type"]
  upgrade_settings : agent_pool_profile__upgrade_settings list;
      [@default []] [@yojson_drop_default ( = )]
  vm_size : string prop;
  vnet_subnet_id : string prop;
  zones : string prop list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : agent_pool_profile) -> ()

let yojson_of_agent_pool_profile =
  (function
   | {
       count = v_count;
       enable_auto_scaling = v_enable_auto_scaling;
       enable_node_public_ip = v_enable_node_public_ip;
       max_count = v_max_count;
       max_pods = v_max_pods;
       min_count = v_min_count;
       name = v_name;
       node_labels = v_node_labels;
       node_public_ip_prefix_id = v_node_public_ip_prefix_id;
       node_taints = v_node_taints;
       orchestrator_version = v_orchestrator_version;
       os_disk_size_gb = v_os_disk_size_gb;
       os_type = v_os_type;
       tags = v_tags;
       type_ = v_type_;
       upgrade_settings = v_upgrade_settings;
       vm_size = v_vm_size;
       vnet_subnet_id = v_vnet_subnet_id;
       zones = v_zones;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_zones then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_zones
           in
           let bnd = "zones", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_vnet_subnet_id
         in
         ("vnet_subnet_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vm_size in
         ("vm_size", arg) :: bnds
       in
       let bnds =
         if [] = v_upgrade_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_agent_pool_profile__upgrade_settings)
               v_upgrade_settings
           in
           let bnd = "upgrade_settings", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_tags
         in
         ("tags", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_os_type in
         ("os_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_os_disk_size_gb
         in
         ("os_disk_size_gb", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_orchestrator_version
         in
         ("orchestrator_version", arg) :: bnds
       in
       let bnds =
         if [] = v_node_taints then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_node_taints
           in
           let bnd = "node_taints", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_node_public_ip_prefix_id
         in
         ("node_public_ip_prefix_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_node_labels
         in
         ("node_labels", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_min_count in
         ("min_count", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_pods in
         ("max_pods", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_count in
         ("max_count", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_enable_node_public_ip
         in
         ("enable_node_public_ip", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_enable_auto_scaling
         in
         ("enable_auto_scaling", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_count in
         ("count", arg) :: bnds
       in
       `Assoc bnds
    : agent_pool_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_agent_pool_profile

[@@@deriving.end]

type azure_active_directory_role_based_access_control = {
  admin_group_object_ids : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  azure_rbac_enabled : bool prop;
  client_app_id : string prop;
  managed : bool prop;
  server_app_id : string prop;
  tenant_id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azure_active_directory_role_based_access_control) -> ()

let yojson_of_azure_active_directory_role_based_access_control =
  (function
   | {
       admin_group_object_ids = v_admin_group_object_ids;
       azure_rbac_enabled = v_azure_rbac_enabled;
       client_app_id = v_client_app_id;
       managed = v_managed;
       server_app_id = v_server_app_id;
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
         let arg = yojson_of_prop yojson_of_string v_server_app_id in
         ("server_app_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_managed in
         ("managed", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_app_id in
         ("client_app_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_azure_rbac_enabled
         in
         ("azure_rbac_enabled", arg) :: bnds
       in
       let bnds =
         if [] = v_admin_group_object_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_admin_group_object_ids
           in
           let bnd = "admin_group_object_ids", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : azure_active_directory_role_based_access_control ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azure_active_directory_role_based_access_control

[@@@deriving.end]

type identity = {
  identity_ids : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  principal_id : string prop;
  tenant_id : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | {
       identity_ids = v_identity_ids;
       principal_id = v_principal_id;
       tenant_id = v_tenant_id;
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
         let arg = yojson_of_prop yojson_of_string v_tenant_id in
         ("tenant_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal_id in
         ("principal_id", arg) :: bnds
       in
       let bnds =
         if [] = v_identity_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_identity_ids
           in
           let bnd = "identity_ids", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type ingress_application_gateway__ingress_application_gateway_identity = {
  client_id : string prop;
  object_id : string prop;
  user_assigned_identity_id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       ingress_application_gateway__ingress_application_gateway_identity) ->
  ()

let yojson_of_ingress_application_gateway__ingress_application_gateway_identity
    =
  (function
   | {
       client_id = v_client_id;
       object_id = v_object_id;
       user_assigned_identity_id = v_user_assigned_identity_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_user_assigned_identity_id
         in
         ("user_assigned_identity_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_id in
         ("object_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       `Assoc bnds
    : ingress_application_gateway__ingress_application_gateway_identity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_ingress_application_gateway__ingress_application_gateway_identity

[@@@deriving.end]

type ingress_application_gateway = {
  effective_gateway_id : string prop;
  gateway_id : string prop;
  gateway_name : string prop;
  ingress_application_gateway_identity :
    ingress_application_gateway__ingress_application_gateway_identity
    list;
      [@default []] [@yojson_drop_default ( = )]
  subnet_cidr : string prop;
  subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ingress_application_gateway) -> ()

let yojson_of_ingress_application_gateway =
  (function
   | {
       effective_gateway_id = v_effective_gateway_id;
       gateway_id = v_gateway_id;
       gateway_name = v_gateway_name;
       ingress_application_gateway_identity =
         v_ingress_application_gateway_identity;
       subnet_cidr = v_subnet_cidr;
       subnet_id = v_subnet_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_cidr in
         ("subnet_cidr", arg) :: bnds
       in
       let bnds =
         if [] = v_ingress_application_gateway_identity then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_ingress_application_gateway__ingress_application_gateway_identity)
               v_ingress_application_gateway_identity
           in
           let bnd = "ingress_application_gateway_identity", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_gateway_name in
         ("gateway_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_gateway_id in
         ("gateway_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_effective_gateway_id
         in
         ("effective_gateway_id", arg) :: bnds
       in
       `Assoc bnds
    : ingress_application_gateway ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ingress_application_gateway

[@@@deriving.end]

type key_management_service = {
  key_vault_key_id : string prop;
  key_vault_network_access : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : key_management_service) -> ()

let yojson_of_key_management_service =
  (function
   | {
       key_vault_key_id = v_key_vault_key_id;
       key_vault_network_access = v_key_vault_network_access;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_key_vault_network_access
         in
         ("key_vault_network_access", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_key_vault_key_id
         in
         ("key_vault_key_id", arg) :: bnds
       in
       `Assoc bnds
    : key_management_service -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_key_management_service

[@@@deriving.end]

type key_vault_secrets_provider__secret_identity = {
  client_id : string prop;
  object_id : string prop;
  user_assigned_identity_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : key_vault_secrets_provider__secret_identity) -> ()

let yojson_of_key_vault_secrets_provider__secret_identity =
  (function
   | {
       client_id = v_client_id;
       object_id = v_object_id;
       user_assigned_identity_id = v_user_assigned_identity_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_user_assigned_identity_id
         in
         ("user_assigned_identity_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_id in
         ("object_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       `Assoc bnds
    : key_vault_secrets_provider__secret_identity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_key_vault_secrets_provider__secret_identity

[@@@deriving.end]

type key_vault_secrets_provider = {
  secret_identity : key_vault_secrets_provider__secret_identity list;
      [@default []] [@yojson_drop_default ( = )]
  secret_rotation_enabled : bool prop;
  secret_rotation_interval : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : key_vault_secrets_provider) -> ()

let yojson_of_key_vault_secrets_provider =
  (function
   | {
       secret_identity = v_secret_identity;
       secret_rotation_enabled = v_secret_rotation_enabled;
       secret_rotation_interval = v_secret_rotation_interval;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_secret_rotation_interval
         in
         ("secret_rotation_interval", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_secret_rotation_enabled
         in
         ("secret_rotation_enabled", arg) :: bnds
       in
       let bnds =
         if [] = v_secret_identity then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_key_vault_secrets_provider__secret_identity)
               v_secret_identity
           in
           let bnd = "secret_identity", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : key_vault_secrets_provider -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_key_vault_secrets_provider

[@@@deriving.end]

type kube_admin_config = {
  client_certificate : string prop;
  client_key : string prop;
  cluster_ca_certificate : string prop;
  host : string prop;
  password : string prop;
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kube_admin_config) -> ()

let yojson_of_kube_admin_config =
  (function
   | {
       client_certificate = v_client_certificate;
       client_key = v_client_key;
       cluster_ca_certificate = v_cluster_ca_certificate;
       host = v_host;
       password = v_password;
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
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cluster_ca_certificate
         in
         ("cluster_ca_certificate", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_key in
         ("client_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_client_certificate
         in
         ("client_certificate", arg) :: bnds
       in
       `Assoc bnds
    : kube_admin_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kube_admin_config

[@@@deriving.end]

type kube_config = {
  client_certificate : string prop;
  client_key : string prop;
  cluster_ca_certificate : string prop;
  host : string prop;
  password : string prop;
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kube_config) -> ()

let yojson_of_kube_config =
  (function
   | {
       client_certificate = v_client_certificate;
       client_key = v_client_key;
       cluster_ca_certificate = v_cluster_ca_certificate;
       host = v_host;
       password = v_password;
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
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cluster_ca_certificate
         in
         ("cluster_ca_certificate", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_key in
         ("client_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_client_certificate
         in
         ("client_certificate", arg) :: bnds
       in
       `Assoc bnds
    : kube_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kube_config

[@@@deriving.end]

type kubelet_identity = {
  client_id : string prop;
  object_id : string prop;
  user_assigned_identity_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kubelet_identity) -> ()

let yojson_of_kubelet_identity =
  (function
   | {
       client_id = v_client_id;
       object_id = v_object_id;
       user_assigned_identity_id = v_user_assigned_identity_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_user_assigned_identity_id
         in
         ("user_assigned_identity_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_id in
         ("object_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       `Assoc bnds
    : kubelet_identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kubelet_identity

[@@@deriving.end]

type linux_profile__ssh_key = { key_data : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : linux_profile__ssh_key) -> ()

let yojson_of_linux_profile__ssh_key =
  (function
   | { key_data = v_key_data } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_data in
         ("key_data", arg) :: bnds
       in
       `Assoc bnds
    : linux_profile__ssh_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_linux_profile__ssh_key

[@@@deriving.end]

type linux_profile = {
  admin_username : string prop;
  ssh_key : linux_profile__ssh_key list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : linux_profile) -> ()

let yojson_of_linux_profile =
  (function
   | { admin_username = v_admin_username; ssh_key = v_ssh_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_ssh_key then bnds
         else
           let arg =
             (yojson_of_list yojson_of_linux_profile__ssh_key)
               v_ssh_key
           in
           let bnd = "ssh_key", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_admin_username
         in
         ("admin_username", arg) :: bnds
       in
       `Assoc bnds
    : linux_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_linux_profile

[@@@deriving.end]

type microsoft_defender = {
  log_analytics_workspace_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : microsoft_defender) -> ()

let yojson_of_microsoft_defender =
  (function
   | { log_analytics_workspace_id = v_log_analytics_workspace_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_log_analytics_workspace_id
         in
         ("log_analytics_workspace_id", arg) :: bnds
       in
       `Assoc bnds
    : microsoft_defender -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_microsoft_defender

[@@@deriving.end]

type network_profile = {
  dns_service_ip : string prop;
  docker_bridge_cidr : string prop;
  load_balancer_sku : string prop;
  network_plugin : string prop;
  network_policy : string prop;
  pod_cidr : string prop;
  service_cidr : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_profile) -> ()

let yojson_of_network_profile =
  (function
   | {
       dns_service_ip = v_dns_service_ip;
       docker_bridge_cidr = v_docker_bridge_cidr;
       load_balancer_sku = v_load_balancer_sku;
       network_plugin = v_network_plugin;
       network_policy = v_network_policy;
       pod_cidr = v_pod_cidr;
       service_cidr = v_service_cidr;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_cidr in
         ("service_cidr", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pod_cidr in
         ("pod_cidr", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_network_policy
         in
         ("network_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_network_plugin
         in
         ("network_plugin", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_load_balancer_sku
         in
         ("load_balancer_sku", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_docker_bridge_cidr
         in
         ("docker_bridge_cidr", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_dns_service_ip
         in
         ("dns_service_ip", arg) :: bnds
       in
       `Assoc bnds
    : network_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_profile

[@@@deriving.end]

type oms_agent__oms_agent_identity = {
  client_id : string prop;
  object_id : string prop;
  user_assigned_identity_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : oms_agent__oms_agent_identity) -> ()

let yojson_of_oms_agent__oms_agent_identity =
  (function
   | {
       client_id = v_client_id;
       object_id = v_object_id;
       user_assigned_identity_id = v_user_assigned_identity_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_user_assigned_identity_id
         in
         ("user_assigned_identity_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_id in
         ("object_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       `Assoc bnds
    : oms_agent__oms_agent_identity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_oms_agent__oms_agent_identity

[@@@deriving.end]

type oms_agent = {
  log_analytics_workspace_id : string prop;
  msi_auth_for_monitoring_enabled : bool prop;
  oms_agent_identity : oms_agent__oms_agent_identity list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : oms_agent) -> ()

let yojson_of_oms_agent =
  (function
   | {
       log_analytics_workspace_id = v_log_analytics_workspace_id;
       msi_auth_for_monitoring_enabled =
         v_msi_auth_for_monitoring_enabled;
       oms_agent_identity = v_oms_agent_identity;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_oms_agent_identity then bnds
         else
           let arg =
             (yojson_of_list yojson_of_oms_agent__oms_agent_identity)
               v_oms_agent_identity
           in
           let bnd = "oms_agent_identity", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_msi_auth_for_monitoring_enabled
         in
         ("msi_auth_for_monitoring_enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_log_analytics_workspace_id
         in
         ("log_analytics_workspace_id", arg) :: bnds
       in
       `Assoc bnds
    : oms_agent -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_oms_agent

[@@@deriving.end]

type service_mesh_profile = {
  external_ingress_gateway_enabled : bool prop;
  internal_ingress_gateway_enabled : bool prop;
  mode : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_mesh_profile) -> ()

let yojson_of_service_mesh_profile =
  (function
   | {
       external_ingress_gateway_enabled =
         v_external_ingress_gateway_enabled;
       internal_ingress_gateway_enabled =
         v_internal_ingress_gateway_enabled;
       mode = v_mode;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_internal_ingress_gateway_enabled
         in
         ("internal_ingress_gateway_enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_external_ingress_gateway_enabled
         in
         ("external_ingress_gateway_enabled", arg) :: bnds
       in
       `Assoc bnds
    : service_mesh_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_mesh_profile

[@@@deriving.end]

type service_principal = { client_id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : service_principal) -> ()

let yojson_of_service_principal =
  (function
   | { client_id = v_client_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       `Assoc bnds
    : service_principal -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_principal

[@@@deriving.end]

type storage_profile = {
  blob_driver_enabled : bool prop;
  disk_driver_enabled : bool prop;
  disk_driver_version : string prop;
  file_driver_enabled : bool prop;
  snapshot_controller_enabled : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_profile) -> ()

let yojson_of_storage_profile =
  (function
   | {
       blob_driver_enabled = v_blob_driver_enabled;
       disk_driver_enabled = v_disk_driver_enabled;
       disk_driver_version = v_disk_driver_version;
       file_driver_enabled = v_file_driver_enabled;
       snapshot_controller_enabled = v_snapshot_controller_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_snapshot_controller_enabled
         in
         ("snapshot_controller_enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_file_driver_enabled
         in
         ("file_driver_enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_disk_driver_version
         in
         ("disk_driver_version", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_disk_driver_enabled
         in
         ("disk_driver_enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_blob_driver_enabled
         in
         ("blob_driver_enabled", arg) :: bnds
       in
       `Assoc bnds
    : storage_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_profile

[@@@deriving.end]

type windows_profile = { admin_username : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : windows_profile) -> ()

let yojson_of_windows_profile =
  (function
   | { admin_username = v_admin_username } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_admin_username
         in
         ("admin_username", arg) :: bnds
       in
       `Assoc bnds
    : windows_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_windows_profile

[@@@deriving.end]

type azurerm_kubernetes_cluster = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_kubernetes_cluster) -> ()

let yojson_of_azurerm_kubernetes_cluster =
  (function
   | {
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
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
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
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
       `Assoc bnds
    : azurerm_kubernetes_cluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_kubernetes_cluster

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_kubernetes_cluster ?id ?timeouts ~name
    ~resource_group_name () : azurerm_kubernetes_cluster =
  { id; name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  aci_connector_linux : aci_connector_linux list prop;
  agent_pool_profile : agent_pool_profile list prop;
  api_server_authorized_ip_ranges : string list prop;
  azure_active_directory_role_based_access_control :
    azure_active_directory_role_based_access_control list prop;
  azure_policy_enabled : bool prop;
  current_kubernetes_version : string prop;
  custom_ca_trust_certificates_base64 : string list prop;
  disk_encryption_set_id : string prop;
  dns_prefix : string prop;
  fqdn : string prop;
  http_application_routing_enabled : bool prop;
  http_application_routing_zone_name : string prop;
  id : string prop;
  identity : identity list prop;
  ingress_application_gateway :
    ingress_application_gateway list prop;
  key_management_service : key_management_service list prop;
  key_vault_secrets_provider : key_vault_secrets_provider list prop;
  kube_admin_config : kube_admin_config list prop;
  kube_admin_config_raw : string prop;
  kube_config : kube_config list prop;
  kube_config_raw : string prop;
  kubelet_identity : kubelet_identity list prop;
  kubernetes_version : string prop;
  linux_profile : linux_profile list prop;
  location : string prop;
  microsoft_defender : microsoft_defender list prop;
  name : string prop;
  network_profile : network_profile list prop;
  node_resource_group : string prop;
  node_resource_group_id : string prop;
  oidc_issuer_enabled : bool prop;
  oidc_issuer_url : string prop;
  oms_agent : oms_agent list prop;
  open_service_mesh_enabled : bool prop;
  private_cluster_enabled : bool prop;
  private_fqdn : string prop;
  resource_group_name : string prop;
  role_based_access_control_enabled : bool prop;
  service_mesh_profile : service_mesh_profile list prop;
  service_principal : service_principal list prop;
  storage_profile : storage_profile list prop;
  tags : (string * string) list prop;
  windows_profile : windows_profile list prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_kubernetes_cluster" in
  let __attrs =
    ({
       tf_name = __id;
       aci_connector_linux =
         Prop.computed __type __id "aci_connector_linux";
       agent_pool_profile =
         Prop.computed __type __id "agent_pool_profile";
       api_server_authorized_ip_ranges =
         Prop.computed __type __id "api_server_authorized_ip_ranges";
       azure_active_directory_role_based_access_control =
         Prop.computed __type __id
           "azure_active_directory_role_based_access_control";
       azure_policy_enabled =
         Prop.computed __type __id "azure_policy_enabled";
       current_kubernetes_version =
         Prop.computed __type __id "current_kubernetes_version";
       custom_ca_trust_certificates_base64 =
         Prop.computed __type __id
           "custom_ca_trust_certificates_base64";
       disk_encryption_set_id =
         Prop.computed __type __id "disk_encryption_set_id";
       dns_prefix = Prop.computed __type __id "dns_prefix";
       fqdn = Prop.computed __type __id "fqdn";
       http_application_routing_enabled =
         Prop.computed __type __id "http_application_routing_enabled";
       http_application_routing_zone_name =
         Prop.computed __type __id
           "http_application_routing_zone_name";
       id = Prop.computed __type __id "id";
       identity = Prop.computed __type __id "identity";
       ingress_application_gateway =
         Prop.computed __type __id "ingress_application_gateway";
       key_management_service =
         Prop.computed __type __id "key_management_service";
       key_vault_secrets_provider =
         Prop.computed __type __id "key_vault_secrets_provider";
       kube_admin_config =
         Prop.computed __type __id "kube_admin_config";
       kube_admin_config_raw =
         Prop.computed __type __id "kube_admin_config_raw";
       kube_config = Prop.computed __type __id "kube_config";
       kube_config_raw = Prop.computed __type __id "kube_config_raw";
       kubelet_identity =
         Prop.computed __type __id "kubelet_identity";
       kubernetes_version =
         Prop.computed __type __id "kubernetes_version";
       linux_profile = Prop.computed __type __id "linux_profile";
       location = Prop.computed __type __id "location";
       microsoft_defender =
         Prop.computed __type __id "microsoft_defender";
       name = Prop.computed __type __id "name";
       network_profile = Prop.computed __type __id "network_profile";
       node_resource_group =
         Prop.computed __type __id "node_resource_group";
       node_resource_group_id =
         Prop.computed __type __id "node_resource_group_id";
       oidc_issuer_enabled =
         Prop.computed __type __id "oidc_issuer_enabled";
       oidc_issuer_url = Prop.computed __type __id "oidc_issuer_url";
       oms_agent = Prop.computed __type __id "oms_agent";
       open_service_mesh_enabled =
         Prop.computed __type __id "open_service_mesh_enabled";
       private_cluster_enabled =
         Prop.computed __type __id "private_cluster_enabled";
       private_fqdn = Prop.computed __type __id "private_fqdn";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       role_based_access_control_enabled =
         Prop.computed __type __id
           "role_based_access_control_enabled";
       service_mesh_profile =
         Prop.computed __type __id "service_mesh_profile";
       service_principal =
         Prop.computed __type __id "service_principal";
       storage_profile = Prop.computed __type __id "storage_profile";
       tags = Prop.computed __type __id "tags";
       windows_profile = Prop.computed __type __id "windows_profile";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_kubernetes_cluster
        (azurerm_kubernetes_cluster ?id ?timeouts ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
