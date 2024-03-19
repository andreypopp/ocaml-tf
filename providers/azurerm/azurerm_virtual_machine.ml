(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type additional_capabilities = {
  ultra_ssd_enabled : bool prop;  (** ultra_ssd_enabled *)
}
[@@deriving yojson_of]
(** additional_capabilities *)

type boot_diagnostics = {
  enabled : bool prop;  (** enabled *)
  storage_uri : string prop;  (** storage_uri *)
}
[@@deriving yojson_of]
(** boot_diagnostics *)

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type os_profile = {
  admin_password : string prop option; [@option]
      (** admin_password *)
  admin_username : string prop;  (** admin_username *)
  computer_name : string prop;  (** computer_name *)
  custom_data : string prop option; [@option]  (** custom_data *)
}
[@@deriving yojson_of]
(** os_profile *)

type os_profile_linux_config__ssh_keys = {
  key_data : string prop;  (** key_data *)
  path : string prop;  (** path *)
}
[@@deriving yojson_of]
(** os_profile_linux_config__ssh_keys *)

type os_profile_linux_config = {
  disable_password_authentication : bool prop;
      (** disable_password_authentication *)
  ssh_keys : os_profile_linux_config__ssh_keys list;
}
[@@deriving yojson_of]
(** os_profile_linux_config *)

type os_profile_secrets__vault_certificates = {
  certificate_store : string prop option; [@option]
      (** certificate_store *)
  certificate_url : string prop;  (** certificate_url *)
}
[@@deriving yojson_of]
(** os_profile_secrets__vault_certificates *)

type os_profile_secrets = {
  source_vault_id : string prop;  (** source_vault_id *)
  vault_certificates : os_profile_secrets__vault_certificates list;
}
[@@deriving yojson_of]
(** os_profile_secrets *)

type os_profile_windows_config__additional_unattend_config = {
  component : string prop;  (** component *)
  content : string prop;  (** content *)
  pass : string prop;  (** pass *)
  setting_name : string prop;  (** setting_name *)
}
[@@deriving yojson_of]
(** os_profile_windows_config__additional_unattend_config *)

type os_profile_windows_config__winrm = {
  certificate_url : string prop option; [@option]
      (** certificate_url *)
  protocol : string prop;  (** protocol *)
}
[@@deriving yojson_of]
(** os_profile_windows_config__winrm *)

type os_profile_windows_config = {
  enable_automatic_upgrades : bool prop option; [@option]
      (** enable_automatic_upgrades *)
  provision_vm_agent : bool prop option; [@option]
      (** provision_vm_agent *)
  timezone : string prop option; [@option]  (** timezone *)
  additional_unattend_config :
    os_profile_windows_config__additional_unattend_config list;
  winrm : os_profile_windows_config__winrm list;
}
[@@deriving yojson_of]
(** os_profile_windows_config *)

type plan = {
  name : string prop;  (** name *)
  product : string prop;  (** product *)
  publisher : string prop;  (** publisher *)
}
[@@deriving yojson_of]
(** plan *)

type storage_data_disk = {
  caching : string prop option; [@option]  (** caching *)
  create_option : string prop;  (** create_option *)
  disk_size_gb : float prop option; [@option]  (** disk_size_gb *)
  lun : float prop;  (** lun *)
  managed_disk_id : string prop option; [@option]
      (** managed_disk_id *)
  managed_disk_type : string prop option; [@option]
      (** managed_disk_type *)
  name : string prop;  (** name *)
  vhd_uri : string prop option; [@option]  (** vhd_uri *)
  write_accelerator_enabled : bool prop option; [@option]
      (** write_accelerator_enabled *)
}
[@@deriving yojson_of]
(** storage_data_disk *)

type storage_image_reference = {
  id : string prop option; [@option]  (** id *)
  offer : string prop option; [@option]  (** offer *)
  publisher : string prop option; [@option]  (** publisher *)
  sku : string prop option; [@option]  (** sku *)
  version : string prop option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** storage_image_reference *)

type storage_os_disk = {
  caching : string prop option; [@option]  (** caching *)
  create_option : string prop;  (** create_option *)
  disk_size_gb : float prop option; [@option]  (** disk_size_gb *)
  image_uri : string prop option; [@option]  (** image_uri *)
  managed_disk_id : string prop option; [@option]
      (** managed_disk_id *)
  managed_disk_type : string prop option; [@option]
      (** managed_disk_type *)
  name : string prop;  (** name *)
  os_type : string prop option; [@option]  (** os_type *)
  vhd_uri : string prop option; [@option]  (** vhd_uri *)
  write_accelerator_enabled : bool prop option; [@option]
      (** write_accelerator_enabled *)
}
[@@deriving yojson_of]
(** storage_os_disk *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_virtual_machine = {
  availability_set_id : string prop option; [@option]
      (** availability_set_id *)
  delete_data_disks_on_termination : bool prop option; [@option]
      (** delete_data_disks_on_termination *)
  delete_os_disk_on_termination : bool prop option; [@option]
      (** delete_os_disk_on_termination *)
  id : string prop option; [@option]  (** id *)
  license_type : string prop option; [@option]  (** license_type *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  network_interface_ids : string prop list;
      (** network_interface_ids *)
  primary_network_interface_id : string prop option; [@option]
      (** primary_network_interface_id *)
  proximity_placement_group_id : string prop option; [@option]
      (** proximity_placement_group_id *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  vm_size : string prop;  (** vm_size *)
  zones : string prop list option; [@option]  (** zones *)
  additional_capabilities : additional_capabilities list;
  boot_diagnostics : boot_diagnostics list;
  identity : identity list;
  os_profile : os_profile list;
  os_profile_linux_config : os_profile_linux_config list;
  os_profile_secrets : os_profile_secrets list;
  os_profile_windows_config : os_profile_windows_config list;
  plan : plan list;
  storage_data_disk : storage_data_disk list;
  storage_image_reference : storage_image_reference list;
  storage_os_disk : storage_os_disk list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_machine *)

let additional_capabilities ~ultra_ssd_enabled () :
    additional_capabilities =
  { ultra_ssd_enabled }

let boot_diagnostics ~enabled ~storage_uri () : boot_diagnostics =
  { enabled; storage_uri }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let os_profile ?admin_password ?custom_data ~admin_username
    ~computer_name () : os_profile =
  { admin_password; admin_username; computer_name; custom_data }

let os_profile_linux_config__ssh_keys ~key_data ~path () :
    os_profile_linux_config__ssh_keys =
  { key_data; path }

let os_profile_linux_config ~disable_password_authentication
    ~ssh_keys () : os_profile_linux_config =
  { disable_password_authentication; ssh_keys }

let os_profile_secrets__vault_certificates ?certificate_store
    ~certificate_url () : os_profile_secrets__vault_certificates =
  { certificate_store; certificate_url }

let os_profile_secrets ~source_vault_id ~vault_certificates () :
    os_profile_secrets =
  { source_vault_id; vault_certificates }

let os_profile_windows_config__additional_unattend_config ~component
    ~content ~pass ~setting_name () :
    os_profile_windows_config__additional_unattend_config =
  { component; content; pass; setting_name }

let os_profile_windows_config__winrm ?certificate_url ~protocol () :
    os_profile_windows_config__winrm =
  { certificate_url; protocol }

let os_profile_windows_config ?enable_automatic_upgrades
    ?provision_vm_agent ?timezone ~additional_unattend_config ~winrm
    () : os_profile_windows_config =
  {
    enable_automatic_upgrades;
    provision_vm_agent;
    timezone;
    additional_unattend_config;
    winrm;
  }

let plan ~name ~product ~publisher () : plan =
  { name; product; publisher }

let storage_data_disk ?caching ?disk_size_gb ?managed_disk_id
    ?managed_disk_type ?vhd_uri ?write_accelerator_enabled
    ~create_option ~lun ~name () : storage_data_disk =
  {
    caching;
    create_option;
    disk_size_gb;
    lun;
    managed_disk_id;
    managed_disk_type;
    name;
    vhd_uri;
    write_accelerator_enabled;
  }

let storage_image_reference ?id ?offer ?publisher ?sku ?version () :
    storage_image_reference =
  { id; offer; publisher; sku; version }

let storage_os_disk ?caching ?disk_size_gb ?image_uri
    ?managed_disk_id ?managed_disk_type ?os_type ?vhd_uri
    ?write_accelerator_enabled ~create_option ~name () :
    storage_os_disk =
  {
    caching;
    create_option;
    disk_size_gb;
    image_uri;
    managed_disk_id;
    managed_disk_type;
    name;
    os_type;
    vhd_uri;
    write_accelerator_enabled;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_virtual_machine ?availability_set_id
    ?delete_data_disks_on_termination ?delete_os_disk_on_termination
    ?id ?license_type ?primary_network_interface_id
    ?proximity_placement_group_id ?tags ?zones ?timeouts ~location
    ~name ~network_interface_ids ~resource_group_name ~vm_size
    ~additional_capabilities ~boot_diagnostics ~identity ~os_profile
    ~os_profile_linux_config ~os_profile_secrets
    ~os_profile_windows_config ~plan ~storage_data_disk
    ~storage_image_reference ~storage_os_disk () :
    azurerm_virtual_machine =
  {
    availability_set_id;
    delete_data_disks_on_termination;
    delete_os_disk_on_termination;
    id;
    license_type;
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

type t = {
  availability_set_id : string prop;
  delete_data_disks_on_termination : bool prop;
  delete_os_disk_on_termination : bool prop;
  id : string prop;
  license_type : string prop;
  location : string prop;
  name : string prop;
  network_interface_ids : string list prop;
  primary_network_interface_id : string prop;
  proximity_placement_group_id : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  vm_size : string prop;
  zones : string list prop;
}

let register ?tf_module ?availability_set_id
    ?delete_data_disks_on_termination ?delete_os_disk_on_termination
    ?id ?license_type ?primary_network_interface_id
    ?proximity_placement_group_id ?tags ?zones ?timeouts ~location
    ~name ~network_interface_ids ~resource_group_name ~vm_size
    ~additional_capabilities ~boot_diagnostics ~identity ~os_profile
    ~os_profile_linux_config ~os_profile_secrets
    ~os_profile_windows_config ~plan ~storage_data_disk
    ~storage_image_reference ~storage_os_disk __resource_id =
  let __resource_type = "azurerm_virtual_machine" in
  let __resource =
    azurerm_virtual_machine ?availability_set_id
      ?delete_data_disks_on_termination
      ?delete_os_disk_on_termination ?id ?license_type
      ?primary_network_interface_id ?proximity_placement_group_id
      ?tags ?zones ?timeouts ~location ~name ~network_interface_ids
      ~resource_group_name ~vm_size ~additional_capabilities
      ~boot_diagnostics ~identity ~os_profile
      ~os_profile_linux_config ~os_profile_secrets
      ~os_profile_windows_config ~plan ~storage_data_disk
      ~storage_image_reference ~storage_os_disk ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_virtual_machine __resource);
  let __resource_attributes =
    ({
       availability_set_id =
         Prop.computed __resource_type __resource_id
           "availability_set_id";
       delete_data_disks_on_termination =
         Prop.computed __resource_type __resource_id
           "delete_data_disks_on_termination";
       delete_os_disk_on_termination =
         Prop.computed __resource_type __resource_id
           "delete_os_disk_on_termination";
       id = Prop.computed __resource_type __resource_id "id";
       license_type =
         Prop.computed __resource_type __resource_id "license_type";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       network_interface_ids =
         Prop.computed __resource_type __resource_id
           "network_interface_ids";
       primary_network_interface_id =
         Prop.computed __resource_type __resource_id
           "primary_network_interface_id";
       proximity_placement_group_id =
         Prop.computed __resource_type __resource_id
           "proximity_placement_group_id";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       vm_size =
         Prop.computed __resource_type __resource_id "vm_size";
       zones = Prop.computed __resource_type __resource_id "zones";
     }
      : t)
  in
  __resource_attributes
