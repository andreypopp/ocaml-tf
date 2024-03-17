(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_virtual_machine__additional_capabilities = {
  ultra_ssd_enabled : bool;  (** ultra_ssd_enabled *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine__additional_capabilities *)

type azurerm_virtual_machine__boot_diagnostics = {
  enabled : bool;  (** enabled *)
  storage_uri : string;  (** storage_uri *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine__boot_diagnostics *)

type azurerm_virtual_machine__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine__identity *)

type azurerm_virtual_machine__os_profile = {
  admin_password : string option; [@option]  (** admin_password *)
  admin_username : string;  (** admin_username *)
  computer_name : string;  (** computer_name *)
  custom_data : string option; [@option]  (** custom_data *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine__os_profile *)

type azurerm_virtual_machine__os_profile_linux_config__ssh_keys = {
  key_data : string;  (** key_data *)
  path : string;  (** path *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine__os_profile_linux_config__ssh_keys *)

type azurerm_virtual_machine__os_profile_linux_config = {
  disable_password_authentication : bool;
      (** disable_password_authentication *)
  ssh_keys :
    azurerm_virtual_machine__os_profile_linux_config__ssh_keys list;
}
[@@deriving yojson_of]
(** azurerm_virtual_machine__os_profile_linux_config *)

type azurerm_virtual_machine__os_profile_secrets__vault_certificates = {
  certificate_store : string option; [@option]
      (** certificate_store *)
  certificate_url : string;  (** certificate_url *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine__os_profile_secrets__vault_certificates *)

type azurerm_virtual_machine__os_profile_secrets = {
  source_vault_id : string;  (** source_vault_id *)
  vault_certificates :
    azurerm_virtual_machine__os_profile_secrets__vault_certificates
    list;
}
[@@deriving yojson_of]
(** azurerm_virtual_machine__os_profile_secrets *)

type azurerm_virtual_machine__os_profile_windows_config__additional_unattend_config = {
  component : string;  (** component *)
  content : string;  (** content *)
  pass : string;  (** pass *)
  setting_name : string;  (** setting_name *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine__os_profile_windows_config__additional_unattend_config *)

type azurerm_virtual_machine__os_profile_windows_config__winrm = {
  certificate_url : string option; [@option]  (** certificate_url *)
  protocol : string;  (** protocol *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine__os_profile_windows_config__winrm *)

type azurerm_virtual_machine__os_profile_windows_config = {
  enable_automatic_upgrades : bool option; [@option]
      (** enable_automatic_upgrades *)
  provision_vm_agent : bool option; [@option]
      (** provision_vm_agent *)
  timezone : string option; [@option]  (** timezone *)
  additional_unattend_config :
    azurerm_virtual_machine__os_profile_windows_config__additional_unattend_config
    list;
  winrm :
    azurerm_virtual_machine__os_profile_windows_config__winrm list;
}
[@@deriving yojson_of]
(** azurerm_virtual_machine__os_profile_windows_config *)

type azurerm_virtual_machine__plan = {
  name : string;  (** name *)
  product : string;  (** product *)
  publisher : string;  (** publisher *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine__plan *)

type azurerm_virtual_machine__storage_data_disk = {
  caching : string option; [@option]  (** caching *)
  create_option : string;  (** create_option *)
  disk_size_gb : float option; [@option]  (** disk_size_gb *)
  lun : float;  (** lun *)
  managed_disk_id : string option; [@option]  (** managed_disk_id *)
  managed_disk_type : string option; [@option]
      (** managed_disk_type *)
  name : string;  (** name *)
  vhd_uri : string option; [@option]  (** vhd_uri *)
  write_accelerator_enabled : bool option; [@option]
      (** write_accelerator_enabled *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine__storage_data_disk *)

type azurerm_virtual_machine__storage_image_reference = {
  id : string option; [@option]  (** id *)
  offer : string option; [@option]  (** offer *)
  publisher : string option; [@option]  (** publisher *)
  sku : string option; [@option]  (** sku *)
  version : string option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine__storage_image_reference *)

type azurerm_virtual_machine__storage_os_disk = {
  caching : string option; [@option]  (** caching *)
  create_option : string;  (** create_option *)
  disk_size_gb : float option; [@option]  (** disk_size_gb *)
  image_uri : string option; [@option]  (** image_uri *)
  managed_disk_id : string option; [@option]  (** managed_disk_id *)
  managed_disk_type : string option; [@option]
      (** managed_disk_type *)
  name : string;  (** name *)
  os_type : string option; [@option]  (** os_type *)
  vhd_uri : string option; [@option]  (** vhd_uri *)
  write_accelerator_enabled : bool option; [@option]
      (** write_accelerator_enabled *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine__storage_os_disk *)

type azurerm_virtual_machine__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine__timeouts *)

type azurerm_virtual_machine = {
  delete_data_disks_on_termination : bool option; [@option]
      (** delete_data_disks_on_termination *)
  delete_os_disk_on_termination : bool option; [@option]
      (** delete_os_disk_on_termination *)
  location : string;  (** location *)
  name : string;  (** name *)
  network_interface_ids : string list;  (** network_interface_ids *)
  primary_network_interface_id : string option; [@option]
      (** primary_network_interface_id *)
  proximity_placement_group_id : string option; [@option]
      (** proximity_placement_group_id *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  vm_size : string;  (** vm_size *)
  zones : string list option; [@option]  (** zones *)
  additional_capabilities :
    azurerm_virtual_machine__additional_capabilities list;
  boot_diagnostics : azurerm_virtual_machine__boot_diagnostics list;
  identity : azurerm_virtual_machine__identity list;
  os_profile : azurerm_virtual_machine__os_profile list;
  os_profile_linux_config :
    azurerm_virtual_machine__os_profile_linux_config list;
  os_profile_secrets :
    azurerm_virtual_machine__os_profile_secrets list;
  os_profile_windows_config :
    azurerm_virtual_machine__os_profile_windows_config list;
  plan : azurerm_virtual_machine__plan list;
  storage_data_disk :
    azurerm_virtual_machine__storage_data_disk list;
  storage_image_reference :
    azurerm_virtual_machine__storage_image_reference list;
  storage_os_disk : azurerm_virtual_machine__storage_os_disk list;
  timeouts : azurerm_virtual_machine__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_machine *)

let azurerm_virtual_machine ?delete_data_disks_on_termination
    ?delete_os_disk_on_termination ?primary_network_interface_id
    ?proximity_placement_group_id ?tags ?zones ?timeouts ~location
    ~name ~network_interface_ids ~resource_group_name ~vm_size
    ~additional_capabilities ~boot_diagnostics ~identity ~os_profile
    ~os_profile_linux_config ~os_profile_secrets
    ~os_profile_windows_config ~plan ~storage_data_disk
    ~storage_image_reference ~storage_os_disk __resource_id =
  let __resource_type = "azurerm_virtual_machine" in
  let __resource =
    {
      delete_data_disks_on_termination;
      delete_os_disk_on_termination;
      location;
      name;
      network_interface_ids;
      primary_network_interface_id;
      proximity_placement_group_id;
      resource_group_name;
      tags;
      vm_size;
      zones;
      additional_capabilities;
      boot_diagnostics;
      identity;
      os_profile;
      os_profile_linux_config;
      os_profile_secrets;
      os_profile_windows_config;
      plan;
      storage_data_disk;
      storage_image_reference;
      storage_os_disk;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_virtual_machine __resource);
  ()
