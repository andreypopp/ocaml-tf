(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_workloads_sap_single_node_virtual_instance__identity = {
  identity_ids : string list;  (** identity_ids *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_single_node_virtual_instance__identity *)

type azurerm_workloads_sap_single_node_virtual_instance__single_server_configuration__disk_volume_configuration = {
  number_of_disks : float;  (** number_of_disks *)
  size_in_gb : float;  (** size_in_gb *)
  sku_name : string;  (** sku_name *)
  volume_name : string;  (** volume_name *)
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_single_node_virtual_instance__single_server_configuration__disk_volume_configuration *)

type azurerm_workloads_sap_single_node_virtual_instance__single_server_configuration__virtual_machine_configuration__image = {
  offer : string;  (** offer *)
  publisher : string;  (** publisher *)
  sku : string;  (** sku *)
  version : string;  (** version *)
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_single_node_virtual_instance__single_server_configuration__virtual_machine_configuration__image *)

type azurerm_workloads_sap_single_node_virtual_instance__single_server_configuration__virtual_machine_configuration__os_profile = {
  admin_username : string;  (** admin_username *)
  ssh_private_key : string;  (** ssh_private_key *)
  ssh_public_key : string;  (** ssh_public_key *)
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_single_node_virtual_instance__single_server_configuration__virtual_machine_configuration__os_profile *)

type azurerm_workloads_sap_single_node_virtual_instance__single_server_configuration__virtual_machine_configuration = {
  virtual_machine_size : string;  (** virtual_machine_size *)
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
  names : string list;  (** names *)
  volume_name : string;  (** volume_name *)
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_single_node_virtual_instance__single_server_configuration__virtual_machine_resource_names__data_disk *)

type azurerm_workloads_sap_single_node_virtual_instance__single_server_configuration__virtual_machine_resource_names = {
  host_name : string option; [@option]  (** host_name *)
  network_interface_names : string list option; [@option]
      (** network_interface_names *)
  os_disk_name : string option; [@option]  (** os_disk_name *)
  virtual_machine_name : string option; [@option]
      (** virtual_machine_name *)
  data_disk :
    azurerm_workloads_sap_single_node_virtual_instance__single_server_configuration__virtual_machine_resource_names__data_disk
    list;
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_single_node_virtual_instance__single_server_configuration__virtual_machine_resource_names *)

type azurerm_workloads_sap_single_node_virtual_instance__single_server_configuration = {
  app_resource_group_name : string;  (** app_resource_group_name *)
  database_type : string option; [@option]  (** database_type *)
  secondary_ip_enabled : bool option; [@option]
      (** secondary_ip_enabled *)
  subnet_id : string;  (** subnet_id *)
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
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_single_node_virtual_instance__timeouts *)

type azurerm_workloads_sap_single_node_virtual_instance = {
  app_location : string;  (** app_location *)
  environment : string;  (** environment *)
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  managed_resource_group_name : string option; [@option]
      (** managed_resource_group_name *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  sap_fqdn : string;  (** sap_fqdn *)
  sap_product : string;  (** sap_product *)
  tags : (string * string) list option; [@option]  (** tags *)
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

let azurerm_workloads_sap_single_node_virtual_instance ?id
    ?managed_resource_group_name ?tags ?timeouts ~app_location
    ~environment ~location ~name ~resource_group_name ~sap_fqdn
    ~sap_product ~identity ~single_server_configuration __resource_id
    =
  let __resource_type =
    "azurerm_workloads_sap_single_node_virtual_instance"
  in
  let __resource =
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_workloads_sap_single_node_virtual_instance
       __resource);
  ()
