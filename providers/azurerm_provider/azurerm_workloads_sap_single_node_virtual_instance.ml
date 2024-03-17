(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_workloads_sap_single_node_virtual_instance__identity = {
  identity_ids : string prop list;  (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_single_node_virtual_instance__identity *)

type azurerm_workloads_sap_single_node_virtual_instance__single_server_configuration__disk_volume_configuration = {
  number_of_disks : float prop;  (** number_of_disks *)
  size_in_gb : float prop;  (** size_in_gb *)
  sku_name : string prop;  (** sku_name *)
  volume_name : string prop;  (** volume_name *)
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_single_node_virtual_instance__single_server_configuration__disk_volume_configuration *)

type azurerm_workloads_sap_single_node_virtual_instance__single_server_configuration__virtual_machine_configuration__image = {
  offer : string prop;  (** offer *)
  publisher : string prop;  (** publisher *)
  sku : string prop;  (** sku *)
  version : string prop;  (** version *)
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_single_node_virtual_instance__single_server_configuration__virtual_machine_configuration__image *)

type azurerm_workloads_sap_single_node_virtual_instance__single_server_configuration__virtual_machine_configuration__os_profile = {
  admin_username : string prop;  (** admin_username *)
  ssh_private_key : string prop;  (** ssh_private_key *)
  ssh_public_key : string prop;  (** ssh_public_key *)
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_single_node_virtual_instance__single_server_configuration__virtual_machine_configuration__os_profile *)

type azurerm_workloads_sap_single_node_virtual_instance__single_server_configuration__virtual_machine_configuration = {
  virtual_machine_size : string prop;  (** virtual_machine_size *)
  image :
    azurerm_workloads_sap_single_node_virtual_instance__single_server_configuration__virtual_machine_configuration__image
    list;
  os_profile :
    azurerm_workloads_sap_single_node_virtual_instance__single_server_configuration__virtual_machine_configuration__os_profile
    list;
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_single_node_virtual_instance__single_server_configuration__virtual_machine_configuration *)

type azurerm_workloads_sap_single_node_virtual_instance__single_server_configuration__virtual_machine_resource_names__data_disk = {
  names : string prop list;  (** names *)
  volume_name : string prop;  (** volume_name *)
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_single_node_virtual_instance__single_server_configuration__virtual_machine_resource_names__data_disk *)

type azurerm_workloads_sap_single_node_virtual_instance__single_server_configuration__virtual_machine_resource_names = {
  host_name : string prop option; [@option]  (** host_name *)
  network_interface_names : string prop list option; [@option]
      (** network_interface_names *)
  os_disk_name : string prop option; [@option]  (** os_disk_name *)
  virtual_machine_name : string prop option; [@option]
      (** virtual_machine_name *)
  data_disk :
    azurerm_workloads_sap_single_node_virtual_instance__single_server_configuration__virtual_machine_resource_names__data_disk
    list;
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_single_node_virtual_instance__single_server_configuration__virtual_machine_resource_names *)

type azurerm_workloads_sap_single_node_virtual_instance__single_server_configuration = {
  app_resource_group_name : string prop;
      (** app_resource_group_name *)
  database_type : string prop option; [@option]  (** database_type *)
  secondary_ip_enabled : bool prop option; [@option]
      (** secondary_ip_enabled *)
  subnet_id : string prop;  (** subnet_id *)
  disk_volume_configuration :
    azurerm_workloads_sap_single_node_virtual_instance__single_server_configuration__disk_volume_configuration
    list;
  virtual_machine_configuration :
    azurerm_workloads_sap_single_node_virtual_instance__single_server_configuration__virtual_machine_configuration
    list;
  virtual_machine_resource_names :
    azurerm_workloads_sap_single_node_virtual_instance__single_server_configuration__virtual_machine_resource_names
    list;
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_single_node_virtual_instance__single_server_configuration *)

type azurerm_workloads_sap_single_node_virtual_instance__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_single_node_virtual_instance__timeouts *)

type azurerm_workloads_sap_single_node_virtual_instance = {
  app_location : string prop;  (** app_location *)
  environment : string prop;  (** environment *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  managed_resource_group_name : string prop option; [@option]
      (** managed_resource_group_name *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  sap_fqdn : string prop;  (** sap_fqdn *)
  sap_product : string prop;  (** sap_product *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  identity :
    azurerm_workloads_sap_single_node_virtual_instance__identity list;
  single_server_configuration :
    azurerm_workloads_sap_single_node_virtual_instance__single_server_configuration
    list;
  timeouts :
    azurerm_workloads_sap_single_node_virtual_instance__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_single_node_virtual_instance *)

type t = {
  app_location : string prop;
  environment : string prop;
  id : string prop;
  location : string prop;
  managed_resource_group_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  sap_fqdn : string prop;
  sap_product : string prop;
  tags : (string * string) list prop;
}

let azurerm_workloads_sap_single_node_virtual_instance ?id
    ?managed_resource_group_name ?tags ?timeouts ~app_location
    ~environment ~location ~name ~resource_group_name ~sap_fqdn
    ~sap_product ~identity ~single_server_configuration __resource_id
    =
  let __resource_type =
    "azurerm_workloads_sap_single_node_virtual_instance"
  in
  let __resource =
    ({
       app_location;
       environment;
       id;
       location;
       managed_resource_group_name;
       name;
       resource_group_name;
       sap_fqdn;
       sap_product;
       tags;
       identity;
       single_server_configuration;
       timeouts;
     }
      : azurerm_workloads_sap_single_node_virtual_instance)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_workloads_sap_single_node_virtual_instance
       __resource);
  let __resource_attributes =
    ({
       app_location =
         Prop.computed __resource_type __resource_id "app_location";
       environment =
         Prop.computed __resource_type __resource_id "environment";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       managed_resource_group_name =
         Prop.computed __resource_type __resource_id
           "managed_resource_group_name";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       sap_fqdn =
         Prop.computed __resource_type __resource_id "sap_fqdn";
       sap_product =
         Prop.computed __resource_type __resource_id "sap_product";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
