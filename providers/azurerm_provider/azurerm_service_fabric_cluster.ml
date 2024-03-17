(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_service_fabric_cluster__azure_active_directory = {
  client_application_id : string;  (** client_application_id *)
  cluster_application_id : string;  (** cluster_application_id *)
  tenant_id : string;  (** tenant_id *)
}
[@@deriving yojson_of]
(** azurerm_service_fabric_cluster__azure_active_directory *)

type azurerm_service_fabric_cluster__certificate = {
  thumbprint : string;  (** thumbprint *)
  thumbprint_secondary : string option; [@option]
      (** thumbprint_secondary *)
  x509_store_name : string;  (** x509_store_name *)
}
[@@deriving yojson_of]
(** azurerm_service_fabric_cluster__certificate *)

type azurerm_service_fabric_cluster__certificate_common_names__common_names = {
  certificate_common_name : string;  (** certificate_common_name *)
  certificate_issuer_thumbprint : string option; [@option]
      (** certificate_issuer_thumbprint *)
}
[@@deriving yojson_of]
(** azurerm_service_fabric_cluster__certificate_common_names__common_names *)

type azurerm_service_fabric_cluster__certificate_common_names = {
  x509_store_name : string;  (** x509_store_name *)
  common_names :
    azurerm_service_fabric_cluster__certificate_common_names__common_names
    list;
}
[@@deriving yojson_of]
(** azurerm_service_fabric_cluster__certificate_common_names *)

type azurerm_service_fabric_cluster__client_certificate_common_name = {
  common_name : string;  (** common_name *)
  is_admin : bool;  (** is_admin *)
  issuer_thumbprint : string option; [@option]
      (** issuer_thumbprint *)
}
[@@deriving yojson_of]
(** azurerm_service_fabric_cluster__client_certificate_common_name *)

type azurerm_service_fabric_cluster__client_certificate_thumbprint = {
  is_admin : bool;  (** is_admin *)
  thumbprint : string;  (** thumbprint *)
}
[@@deriving yojson_of]
(** azurerm_service_fabric_cluster__client_certificate_thumbprint *)

type azurerm_service_fabric_cluster__diagnostics_config = {
  blob_endpoint : string;  (** blob_endpoint *)
  protected_account_key_name : string;
      (** protected_account_key_name *)
  queue_endpoint : string;  (** queue_endpoint *)
  storage_account_name : string;  (** storage_account_name *)
  table_endpoint : string;  (** table_endpoint *)
}
[@@deriving yojson_of]
(** azurerm_service_fabric_cluster__diagnostics_config *)

type azurerm_service_fabric_cluster__fabric_settings = {
  name : string;  (** name *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
}
[@@deriving yojson_of]
(** azurerm_service_fabric_cluster__fabric_settings *)

type azurerm_service_fabric_cluster__node_type__application_ports = {
  end_port : float;  (** end_port *)
  start_port : float;  (** start_port *)
}
[@@deriving yojson_of]
(** azurerm_service_fabric_cluster__node_type__application_ports *)

type azurerm_service_fabric_cluster__node_type__ephemeral_ports = {
  end_port : float;  (** end_port *)
  start_port : float;  (** start_port *)
}
[@@deriving yojson_of]
(** azurerm_service_fabric_cluster__node_type__ephemeral_ports *)

type azurerm_service_fabric_cluster__node_type = {
  capacities : (string * string) list option; [@option]
      (** capacities *)
  client_endpoint_port : float;  (** client_endpoint_port *)
  durability_level : string option; [@option]
      (** durability_level *)
  http_endpoint_port : float;  (** http_endpoint_port *)
  instance_count : float;  (** instance_count *)
  is_primary : bool;  (** is_primary *)
  is_stateless : bool option; [@option]  (** is_stateless *)
  multiple_availability_zones : bool option; [@option]
      (** multiple_availability_zones *)
  name : string;  (** name *)
  placement_properties : (string * string) list option; [@option]
      (** placement_properties *)
  reverse_proxy_endpoint_port : float option; [@option]
      (** reverse_proxy_endpoint_port *)
  application_ports :
    azurerm_service_fabric_cluster__node_type__application_ports list;
  ephemeral_ports :
    azurerm_service_fabric_cluster__node_type__ephemeral_ports list;
}
[@@deriving yojson_of]
(** azurerm_service_fabric_cluster__node_type *)

type azurerm_service_fabric_cluster__reverse_proxy_certificate = {
  thumbprint : string;  (** thumbprint *)
  thumbprint_secondary : string option; [@option]
      (** thumbprint_secondary *)
  x509_store_name : string;  (** x509_store_name *)
}
[@@deriving yojson_of]
(** azurerm_service_fabric_cluster__reverse_proxy_certificate *)

type azurerm_service_fabric_cluster__reverse_proxy_certificate_common_names__common_names = {
  certificate_common_name : string;  (** certificate_common_name *)
  certificate_issuer_thumbprint : string option; [@option]
      (** certificate_issuer_thumbprint *)
}
[@@deriving yojson_of]
(** azurerm_service_fabric_cluster__reverse_proxy_certificate_common_names__common_names *)

type azurerm_service_fabric_cluster__reverse_proxy_certificate_common_names = {
  x509_store_name : string;  (** x509_store_name *)
  common_names :
    azurerm_service_fabric_cluster__reverse_proxy_certificate_common_names__common_names
    list;
}
[@@deriving yojson_of]
(** azurerm_service_fabric_cluster__reverse_proxy_certificate_common_names *)

type azurerm_service_fabric_cluster__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_service_fabric_cluster__timeouts *)

type azurerm_service_fabric_cluster__upgrade_policy__delta_health_policy = {
  max_delta_unhealthy_applications_percent : float option; [@option]
      (** max_delta_unhealthy_applications_percent *)
  max_delta_unhealthy_nodes_percent : float option; [@option]
      (** max_delta_unhealthy_nodes_percent *)
  max_upgrade_domain_delta_unhealthy_nodes_percent : float option;
      [@option]
      (** max_upgrade_domain_delta_unhealthy_nodes_percent *)
}
[@@deriving yojson_of]
(** azurerm_service_fabric_cluster__upgrade_policy__delta_health_policy *)

type azurerm_service_fabric_cluster__upgrade_policy__health_policy = {
  max_unhealthy_applications_percent : float option; [@option]
      (** max_unhealthy_applications_percent *)
  max_unhealthy_nodes_percent : float option; [@option]
      (** max_unhealthy_nodes_percent *)
}
[@@deriving yojson_of]
(** azurerm_service_fabric_cluster__upgrade_policy__health_policy *)

type azurerm_service_fabric_cluster__upgrade_policy = {
  force_restart_enabled : bool option; [@option]
      (** force_restart_enabled *)
  health_check_retry_timeout : string option; [@option]
      (** health_check_retry_timeout *)
  health_check_stable_duration : string option; [@option]
      (** health_check_stable_duration *)
  health_check_wait_duration : string option; [@option]
      (** health_check_wait_duration *)
  upgrade_domain_timeout : string option; [@option]
      (** upgrade_domain_timeout *)
  upgrade_replica_set_check_timeout : string option; [@option]
      (** upgrade_replica_set_check_timeout *)
  upgrade_timeout : string option; [@option]  (** upgrade_timeout *)
  delta_health_policy :
    azurerm_service_fabric_cluster__upgrade_policy__delta_health_policy
    list;
  health_policy :
    azurerm_service_fabric_cluster__upgrade_policy__health_policy
    list;
}
[@@deriving yojson_of]
(** azurerm_service_fabric_cluster__upgrade_policy *)

type azurerm_service_fabric_cluster = {
  add_on_features : string list option; [@option]
      (** add_on_features *)
  location : string;  (** location *)
  management_endpoint : string;  (** management_endpoint *)
  name : string;  (** name *)
  reliability_level : string;  (** reliability_level *)
  resource_group_name : string;  (** resource_group_name *)
  service_fabric_zonal_upgrade_mode : string option; [@option]
      (** service_fabric_zonal_upgrade_mode *)
  tags : (string * string) list option; [@option]  (** tags *)
  upgrade_mode : string;  (** upgrade_mode *)
  vm_image : string;  (** vm_image *)
  vmss_zonal_upgrade_mode : string option; [@option]
      (** vmss_zonal_upgrade_mode *)
  azure_active_directory :
    azurerm_service_fabric_cluster__azure_active_directory list;
  certificate : azurerm_service_fabric_cluster__certificate list;
  certificate_common_names :
    azurerm_service_fabric_cluster__certificate_common_names list;
  client_certificate_common_name :
    azurerm_service_fabric_cluster__client_certificate_common_name
    list;
  client_certificate_thumbprint :
    azurerm_service_fabric_cluster__client_certificate_thumbprint
    list;
  diagnostics_config :
    azurerm_service_fabric_cluster__diagnostics_config list;
  fabric_settings :
    azurerm_service_fabric_cluster__fabric_settings list;
  node_type : azurerm_service_fabric_cluster__node_type list;
  reverse_proxy_certificate :
    azurerm_service_fabric_cluster__reverse_proxy_certificate list;
  reverse_proxy_certificate_common_names :
    azurerm_service_fabric_cluster__reverse_proxy_certificate_common_names
    list;
  timeouts : azurerm_service_fabric_cluster__timeouts option;
  upgrade_policy :
    azurerm_service_fabric_cluster__upgrade_policy list;
}
[@@deriving yojson_of]
(** azurerm_service_fabric_cluster *)

let azurerm_service_fabric_cluster ?add_on_features
    ?service_fabric_zonal_upgrade_mode ?tags ?vmss_zonal_upgrade_mode
    ?timeouts ~location ~management_endpoint ~name ~reliability_level
    ~resource_group_name ~upgrade_mode ~vm_image
    ~azure_active_directory ~certificate ~certificate_common_names
    ~client_certificate_common_name ~client_certificate_thumbprint
    ~diagnostics_config ~fabric_settings ~node_type
    ~reverse_proxy_certificate
    ~reverse_proxy_certificate_common_names ~upgrade_policy
    __resource_id =
  let __resource_type = "azurerm_service_fabric_cluster" in
  let __resource =
    {
      add_on_features;
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_service_fabric_cluster __resource);
  ()
