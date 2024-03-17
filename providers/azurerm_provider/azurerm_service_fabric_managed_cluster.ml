(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_service_fabric_managed_cluster__authentication__active_directory = {
  client_application_id : string;  (** client_application_id *)
  cluster_application_id : string;  (** cluster_application_id *)
  tenant_id : string;  (** tenant_id *)
}
[@@deriving yojson_of]
(** azurerm_service_fabric_managed_cluster__authentication__active_directory *)

type azurerm_service_fabric_managed_cluster__authentication__certificate = {
  common_name : string option; [@option]  (** common_name *)
  thumbprint : string;  (** thumbprint *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_service_fabric_managed_cluster__authentication__certificate *)

type azurerm_service_fabric_managed_cluster__authentication = {
  active_directory :
    azurerm_service_fabric_managed_cluster__authentication__active_directory
    list;
  certificate :
    azurerm_service_fabric_managed_cluster__authentication__certificate
    list;
}
[@@deriving yojson_of]
(** azurerm_service_fabric_managed_cluster__authentication *)

type azurerm_service_fabric_managed_cluster__custom_fabric_setting = {
  parameter : string;  (** parameter *)
  section : string;  (** section *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_service_fabric_managed_cluster__custom_fabric_setting *)

type azurerm_service_fabric_managed_cluster__lb_rule = {
  backend_port : float;  (** backend_port *)
  frontend_port : float;  (** frontend_port *)
  probe_protocol : string;  (** probe_protocol *)
  probe_request_path : string option; [@option]
      (** probe_request_path *)
  protocol : string;  (** protocol *)
}
[@@deriving yojson_of]
(** azurerm_service_fabric_managed_cluster__lb_rule *)

type azurerm_service_fabric_managed_cluster__node_type__vm_secrets__certificates = {
  store : string;  (** store *)
  url : string;  (** url *)
}
[@@deriving yojson_of]
(** azurerm_service_fabric_managed_cluster__node_type__vm_secrets__certificates *)

type azurerm_service_fabric_managed_cluster__node_type__vm_secrets = {
  vault_id : string;  (** vault_id *)
  certificates :
    azurerm_service_fabric_managed_cluster__node_type__vm_secrets__certificates
    list;
}
[@@deriving yojson_of]
(** azurerm_service_fabric_managed_cluster__node_type__vm_secrets *)

type azurerm_service_fabric_managed_cluster__node_type = {
  application_port_range : string;  (** application_port_range *)
  capacities : (string * string) list option; [@option]
      (** capacities *)
  data_disk_size_gb : float;  (** data_disk_size_gb *)
  data_disk_type : string option; [@option]  (** data_disk_type *)
  ephemeral_port_range : string;  (** ephemeral_port_range *)
  id : string;  (** id *)
  multiple_placement_groups_enabled : bool option; [@option]
      (** multiple_placement_groups_enabled *)
  name : string;  (** name *)
  placement_properties : (string * string) list option; [@option]
      (** placement_properties *)
  primary : bool option; [@option]  (** primary *)
  stateless : bool option; [@option]  (** stateless *)
  vm_image_offer : string;  (** vm_image_offer *)
  vm_image_publisher : string;  (** vm_image_publisher *)
  vm_image_sku : string;  (** vm_image_sku *)
  vm_image_version : string;  (** vm_image_version *)
  vm_instance_count : float;  (** vm_instance_count *)
  vm_size : string;  (** vm_size *)
  vm_secrets :
    azurerm_service_fabric_managed_cluster__node_type__vm_secrets
    list;
}
[@@deriving yojson_of]
(** azurerm_service_fabric_managed_cluster__node_type *)

type azurerm_service_fabric_managed_cluster__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_service_fabric_managed_cluster__timeouts *)

type azurerm_service_fabric_managed_cluster = {
  backup_service_enabled : bool option; [@option]
      (** backup_service_enabled *)
  client_connection_port : float;  (** client_connection_port *)
  dns_service_enabled : bool option; [@option]
      (** dns_service_enabled *)
  http_gateway_port : float;  (** http_gateway_port *)
  location : string;  (** location *)
  name : string;  (** name *)
  password : string option; [@option]  (** password *)
  resource_group_name : string;  (** resource_group_name *)
  sku : string option; [@option]  (** sku *)
  tags : (string * string) list option; [@option]  (** tags *)
  upgrade_wave : string option; [@option]  (** upgrade_wave *)
  username : string option; [@option]  (** username *)
  authentication :
    azurerm_service_fabric_managed_cluster__authentication list;
  custom_fabric_setting :
    azurerm_service_fabric_managed_cluster__custom_fabric_setting
    list;
  lb_rule : azurerm_service_fabric_managed_cluster__lb_rule list;
  node_type : azurerm_service_fabric_managed_cluster__node_type list;
  timeouts : azurerm_service_fabric_managed_cluster__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_service_fabric_managed_cluster *)

let azurerm_service_fabric_managed_cluster ?backup_service_enabled
    ?dns_service_enabled ?password ?sku ?tags ?upgrade_wave ?username
    ?timeouts ~client_connection_port ~http_gateway_port ~location
    ~name ~resource_group_name ~authentication ~custom_fabric_setting
    ~lb_rule ~node_type __resource_id =
  let __resource_type = "azurerm_service_fabric_managed_cluster" in
  let __resource =
    {
      backup_service_enabled;
      client_connection_port;
      dns_service_enabled;
      http_gateway_port;
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_service_fabric_managed_cluster __resource);
  ()
