(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_service_fabric_managed_cluster__authentication__active_directory = {
  client_application_id : string prop;  (** client_application_id *)
  cluster_application_id : string prop;
      (** cluster_application_id *)
  tenant_id : string prop;  (** tenant_id *)
}
[@@deriving yojson_of]
(** azurerm_service_fabric_managed_cluster__authentication__active_directory *)

type azurerm_service_fabric_managed_cluster__authentication__certificate = {
  common_name : string prop option; [@option]  (** common_name *)
  thumbprint : string prop;  (** thumbprint *)
  type_ : string prop; [@key "type"]  (** type *)
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
  parameter : string prop;  (** parameter *)
  section : string prop;  (** section *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_service_fabric_managed_cluster__custom_fabric_setting *)

type azurerm_service_fabric_managed_cluster__lb_rule = {
  backend_port : float prop;  (** backend_port *)
  frontend_port : float prop;  (** frontend_port *)
  probe_protocol : string prop;  (** probe_protocol *)
  probe_request_path : string prop option; [@option]
      (** probe_request_path *)
  protocol : string prop;  (** protocol *)
}
[@@deriving yojson_of]
(** azurerm_service_fabric_managed_cluster__lb_rule *)

type azurerm_service_fabric_managed_cluster__node_type__vm_secrets__certificates = {
  store : string prop;  (** store *)
  url : string prop;  (** url *)
}
[@@deriving yojson_of]
(** azurerm_service_fabric_managed_cluster__node_type__vm_secrets__certificates *)

type azurerm_service_fabric_managed_cluster__node_type__vm_secrets = {
  vault_id : string prop;  (** vault_id *)
  certificates :
    azurerm_service_fabric_managed_cluster__node_type__vm_secrets__certificates
    list;
}
[@@deriving yojson_of]
(** azurerm_service_fabric_managed_cluster__node_type__vm_secrets *)

type azurerm_service_fabric_managed_cluster__node_type = {
  application_port_range : string prop;
      (** application_port_range *)
  capacities : (string * string prop) list option; [@option]
      (** capacities *)
  data_disk_size_gb : float prop;  (** data_disk_size_gb *)
  data_disk_type : string prop option; [@option]
      (** data_disk_type *)
  ephemeral_port_range : string prop;  (** ephemeral_port_range *)
  id : string prop;  (** id *)
  multiple_placement_groups_enabled : bool prop option; [@option]
      (** multiple_placement_groups_enabled *)
  name : string prop;  (** name *)
  placement_properties : (string * string prop) list option;
      [@option]
      (** placement_properties *)
  primary : bool prop option; [@option]  (** primary *)
  stateless : bool prop option; [@option]  (** stateless *)
  vm_image_offer : string prop;  (** vm_image_offer *)
  vm_image_publisher : string prop;  (** vm_image_publisher *)
  vm_image_sku : string prop;  (** vm_image_sku *)
  vm_image_version : string prop;  (** vm_image_version *)
  vm_instance_count : float prop;  (** vm_instance_count *)
  vm_size : string prop;  (** vm_size *)
  vm_secrets :
    azurerm_service_fabric_managed_cluster__node_type__vm_secrets
    list;
}
[@@deriving yojson_of]
(** azurerm_service_fabric_managed_cluster__node_type *)

type azurerm_service_fabric_managed_cluster__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_service_fabric_managed_cluster__timeouts *)

type azurerm_service_fabric_managed_cluster = {
  backup_service_enabled : bool prop option; [@option]
      (** backup_service_enabled *)
  client_connection_port : float prop;  (** client_connection_port *)
  dns_name : string prop option; [@option]  (** dns_name *)
  dns_service_enabled : bool prop option; [@option]
      (** dns_service_enabled *)
  http_gateway_port : float prop;  (** http_gateway_port *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  password : string prop option; [@option]  (** password *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku : string prop option; [@option]  (** sku *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  upgrade_wave : string prop option; [@option]  (** upgrade_wave *)
  username : string prop option; [@option]  (** username *)
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

let azurerm_service_fabric_managed_cluster ?backup_service_enabled
    ?dns_name ?dns_service_enabled ?id ?password ?sku ?tags
    ?upgrade_wave ?username ?timeouts ~client_connection_port
    ~http_gateway_port ~location ~name ~resource_group_name
    ~authentication ~custom_fabric_setting ~lb_rule ~node_type
    __resource_id =
  let __resource_type = "azurerm_service_fabric_managed_cluster" in
  let __resource =
    ({
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
      : azurerm_service_fabric_managed_cluster)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_service_fabric_managed_cluster __resource);
  let __resource_attributes =
    ({
       backup_service_enabled =
         Prop.computed __resource_type __resource_id
           "backup_service_enabled";
       client_connection_port =
         Prop.computed __resource_type __resource_id
           "client_connection_port";
       dns_name =
         Prop.computed __resource_type __resource_id "dns_name";
       dns_service_enabled =
         Prop.computed __resource_type __resource_id
           "dns_service_enabled";
       http_gateway_port =
         Prop.computed __resource_type __resource_id
           "http_gateway_port";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       password =
         Prop.computed __resource_type __resource_id "password";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       sku = Prop.computed __resource_type __resource_id "sku";
       tags = Prop.computed __resource_type __resource_id "tags";
       upgrade_wave =
         Prop.computed __resource_type __resource_id "upgrade_wave";
       username =
         Prop.computed __resource_type __resource_id "username";
     }
      : t)
  in
  __resource_attributes
