(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_workloads_sap_three_tier_virtual_instance__identity = {
  identity_ids : string list;  (** identity_ids *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_three_tier_virtual_instance__identity *)

type azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__application_server_configuration__virtual_machine_configuration__image = {
  offer : string;  (** offer *)
  publisher : string;  (** publisher *)
  sku : string;  (** sku *)
  version : string;  (** version *)
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__application_server_configuration__virtual_machine_configuration__image *)

type azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__application_server_configuration__virtual_machine_configuration__os_profile = {
  admin_username : string;  (** admin_username *)
  ssh_private_key : string;  (** ssh_private_key *)
  ssh_public_key : string;  (** ssh_public_key *)
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__application_server_configuration__virtual_machine_configuration__os_profile *)

type azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__application_server_configuration__virtual_machine_configuration = {
  virtual_machine_size : string;  (** virtual_machine_size *)
  image :
    azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__application_server_configuration__virtual_machine_configuration__image
    list;
  os_profile :
    azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__application_server_configuration__virtual_machine_configuration__os_profile
    list;
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__application_server_configuration__virtual_machine_configuration *)

type azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__application_server_configuration = {
  instance_count : float;  (** instance_count *)
  subnet_id : string;  (** subnet_id *)
  virtual_machine_configuration :
    azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__application_server_configuration__virtual_machine_configuration
    list;
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__application_server_configuration *)

type azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__central_server_configuration__virtual_machine_configuration__image = {
  offer : string;  (** offer *)
  publisher : string;  (** publisher *)
  sku : string;  (** sku *)
  version : string;  (** version *)
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__central_server_configuration__virtual_machine_configuration__image *)

type azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__central_server_configuration__virtual_machine_configuration__os_profile = {
  admin_username : string;  (** admin_username *)
  ssh_private_key : string;  (** ssh_private_key *)
  ssh_public_key : string;  (** ssh_public_key *)
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__central_server_configuration__virtual_machine_configuration__os_profile *)

type azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__central_server_configuration__virtual_machine_configuration = {
  virtual_machine_size : string;  (** virtual_machine_size *)
  image :
    azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__central_server_configuration__virtual_machine_configuration__image
    list;
  os_profile :
    azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__central_server_configuration__virtual_machine_configuration__os_profile
    list;
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__central_server_configuration__virtual_machine_configuration *)

type azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__central_server_configuration = {
  instance_count : float;  (** instance_count *)
  subnet_id : string;  (** subnet_id *)
  virtual_machine_configuration :
    azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__central_server_configuration__virtual_machine_configuration
    list;
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__central_server_configuration *)

type azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__database_server_configuration__disk_volume_configuration = {
  number_of_disks : float;  (** number_of_disks *)
  size_in_gb : float;  (** size_in_gb *)
  sku_name : string;  (** sku_name *)
  volume_name : string;  (** volume_name *)
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__database_server_configuration__disk_volume_configuration *)

type azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__database_server_configuration__virtual_machine_configuration__image = {
  offer : string;  (** offer *)
  publisher : string;  (** publisher *)
  sku : string;  (** sku *)
  version : string;  (** version *)
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__database_server_configuration__virtual_machine_configuration__image *)

type azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__database_server_configuration__virtual_machine_configuration__os_profile = {
  admin_username : string;  (** admin_username *)
  ssh_private_key : string;  (** ssh_private_key *)
  ssh_public_key : string;  (** ssh_public_key *)
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__database_server_configuration__virtual_machine_configuration__os_profile *)

type azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__database_server_configuration__virtual_machine_configuration = {
  virtual_machine_size : string;  (** virtual_machine_size *)
  image :
    azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__database_server_configuration__virtual_machine_configuration__image
    list;
  os_profile :
    azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__database_server_configuration__virtual_machine_configuration__os_profile
    list;
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__database_server_configuration__virtual_machine_configuration *)

type azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__database_server_configuration = {
  database_type : string option; [@option]  (** database_type *)
  instance_count : float;  (** instance_count *)
  subnet_id : string;  (** subnet_id *)
  disk_volume_configuration :
    azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__database_server_configuration__disk_volume_configuration
    list;
  virtual_machine_configuration :
    azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__database_server_configuration__virtual_machine_configuration
    list;
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__database_server_configuration *)

type azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__resource_names__application_server__virtual_machine__data_disk = {
  names : string list;  (** names *)
  volume_name : string;  (** volume_name *)
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__resource_names__application_server__virtual_machine__data_disk *)

type azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__resource_names__application_server__virtual_machine = {
  host_name : string option; [@option]  (** host_name *)
  network_interface_names : string list option; [@option]
      (** network_interface_names *)
  os_disk_name : string option; [@option]  (** os_disk_name *)
  virtual_machine_name : string option; [@option]
      (** virtual_machine_name *)
  data_disk :
    azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__resource_names__application_server__virtual_machine__data_disk
    list;
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__resource_names__application_server__virtual_machine *)

type azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__resource_names__application_server = {
  availability_set_name : string option; [@option]
      (** availability_set_name *)
  virtual_machine :
    azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__resource_names__application_server__virtual_machine
    list;
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__resource_names__application_server *)

type azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__resource_names__central_server__load_balancer = {
  backend_pool_names : string list option; [@option]
      (** backend_pool_names *)
  frontend_ip_configuration_names : string list option; [@option]
      (** frontend_ip_configuration_names *)
  health_probe_names : string list option; [@option]
      (** health_probe_names *)
  name : string option; [@option]  (** name *)
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__resource_names__central_server__load_balancer *)

type azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__resource_names__central_server__virtual_machine__data_disk = {
  names : string list;  (** names *)
  volume_name : string;  (** volume_name *)
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__resource_names__central_server__virtual_machine__data_disk *)

type azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__resource_names__central_server__virtual_machine = {
  host_name : string option; [@option]  (** host_name *)
  network_interface_names : string list option; [@option]
      (** network_interface_names *)
  os_disk_name : string option; [@option]  (** os_disk_name *)
  virtual_machine_name : string option; [@option]
      (** virtual_machine_name *)
  data_disk :
    azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__resource_names__central_server__virtual_machine__data_disk
    list;
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__resource_names__central_server__virtual_machine *)

type azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__resource_names__central_server = {
  availability_set_name : string option; [@option]
      (** availability_set_name *)
  load_balancer :
    azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__resource_names__central_server__load_balancer
    list;
  virtual_machine :
    azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__resource_names__central_server__virtual_machine
    list;
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__resource_names__central_server *)

type azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__resource_names__database_server__load_balancer = {
  backend_pool_names : string list option; [@option]
      (** backend_pool_names *)
  frontend_ip_configuration_names : string list option; [@option]
      (** frontend_ip_configuration_names *)
  health_probe_names : string list option; [@option]
      (** health_probe_names *)
  name : string option; [@option]  (** name *)
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__resource_names__database_server__load_balancer *)

type azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__resource_names__database_server__virtual_machine__data_disk = {
  names : string list;  (** names *)
  volume_name : string;  (** volume_name *)
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__resource_names__database_server__virtual_machine__data_disk *)

type azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__resource_names__database_server__virtual_machine = {
  host_name : string option; [@option]  (** host_name *)
  network_interface_names : string list option; [@option]
      (** network_interface_names *)
  os_disk_name : string option; [@option]  (** os_disk_name *)
  virtual_machine_name : string option; [@option]
      (** virtual_machine_name *)
  data_disk :
    azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__resource_names__database_server__virtual_machine__data_disk
    list;
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__resource_names__database_server__virtual_machine *)

type azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__resource_names__database_server = {
  availability_set_name : string option; [@option]
      (** availability_set_name *)
  load_balancer :
    azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__resource_names__database_server__load_balancer
    list;
  virtual_machine :
    azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__resource_names__database_server__virtual_machine
    list;
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__resource_names__database_server *)

type azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__resource_names__shared_storage = {
  account_name : string option; [@option]  (** account_name *)
  private_endpoint_name : string option; [@option]
      (** private_endpoint_name *)
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__resource_names__shared_storage *)

type azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__resource_names = {
  application_server :
    azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__resource_names__application_server
    list;
  central_server :
    azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__resource_names__central_server
    list;
  database_server :
    azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__resource_names__database_server
    list;
  shared_storage :
    azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__resource_names__shared_storage
    list;
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__resource_names *)

type azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__transport_create_and_mount = {
  resource_group_id : string option; [@option]
      (** resource_group_id *)
  storage_account_name : string option; [@option]
      (** storage_account_name *)
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__transport_create_and_mount *)

type azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration = {
  app_resource_group_name : string;  (** app_resource_group_name *)
  high_availability_type : string option; [@option]
      (** high_availability_type *)
  secondary_ip_enabled : bool option; [@option]
      (** secondary_ip_enabled *)
  application_server_configuration :
    azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__application_server_configuration
    list;
  central_server_configuration :
    azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__central_server_configuration
    list;
  database_server_configuration :
    azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__database_server_configuration
    list;
  resource_names :
    azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__resource_names
    list;
  transport_create_and_mount :
    azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration__transport_create_and_mount
    list;
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration *)

type azurerm_workloads_sap_three_tier_virtual_instance__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_three_tier_virtual_instance__timeouts *)

type azurerm_workloads_sap_three_tier_virtual_instance = {
  app_location : string;  (** app_location *)
  environment : string;  (** environment *)
  location : string;  (** location *)
  managed_resource_group_name : string option; [@option]
      (** managed_resource_group_name *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  sap_fqdn : string;  (** sap_fqdn *)
  sap_product : string;  (** sap_product *)
  tags : (string * string) list option; [@option]  (** tags *)
  identity :
    azurerm_workloads_sap_three_tier_virtual_instance__identity list;
  three_tier_configuration :
    azurerm_workloads_sap_three_tier_virtual_instance__three_tier_configuration
    list;
  timeouts :
    azurerm_workloads_sap_three_tier_virtual_instance__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_workloads_sap_three_tier_virtual_instance *)

let azurerm_workloads_sap_three_tier_virtual_instance
    ?managed_resource_group_name ?tags ?timeouts ~app_location
    ~environment ~location ~name ~resource_group_name ~sap_fqdn
    ~sap_product ~identity ~three_tier_configuration __resource_id =
  let __resource_type =
    "azurerm_workloads_sap_three_tier_virtual_instance"
  in
  let __resource =
    {
      app_location;
      environment;
      location;
      managed_resource_group_name;
      name;
      resource_group_name;
      sap_fqdn;
      sap_product;
      tags;
      identity;
      three_tier_configuration;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_workloads_sap_three_tier_virtual_instance
       __resource);
  ()
