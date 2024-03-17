(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_managed_disk__encryption_settings__disk_encryption_key = {
  secret_url : string prop;  (** secret_url *)
  source_vault_id : string prop;  (** source_vault_id *)
}
[@@deriving yojson_of]
(** azurerm_managed_disk__encryption_settings__disk_encryption_key *)

type azurerm_managed_disk__encryption_settings__key_encryption_key = {
  key_url : string prop;  (** key_url *)
  source_vault_id : string prop;  (** source_vault_id *)
}
[@@deriving yojson_of]
(** azurerm_managed_disk__encryption_settings__key_encryption_key *)

type azurerm_managed_disk__encryption_settings = {
  enabled : bool prop option; [@option]  (** enabled *)
  disk_encryption_key :
    azurerm_managed_disk__encryption_settings__disk_encryption_key
    list;
  key_encryption_key :
    azurerm_managed_disk__encryption_settings__key_encryption_key
    list;
}
[@@deriving yojson_of]
(** azurerm_managed_disk__encryption_settings *)

type azurerm_managed_disk__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_managed_disk__timeouts *)

type azurerm_managed_disk = {
  create_option : string prop;  (** create_option *)
  disk_access_id : string prop option; [@option]
      (** disk_access_id *)
  disk_encryption_set_id : string prop option; [@option]
      (** disk_encryption_set_id *)
  disk_iops_read_only : float prop option; [@option]
      (** disk_iops_read_only *)
  disk_iops_read_write : float prop option; [@option]
      (** disk_iops_read_write *)
  disk_mbps_read_only : float prop option; [@option]
      (** disk_mbps_read_only *)
  disk_mbps_read_write : float prop option; [@option]
      (** disk_mbps_read_write *)
  disk_size_gb : float prop option; [@option]  (** disk_size_gb *)
  edge_zone : string prop option; [@option]  (** edge_zone *)
  gallery_image_reference_id : string prop option; [@option]
      (** gallery_image_reference_id *)
  hyper_v_generation : string prop option; [@option]
      (** hyper_v_generation *)
  id : string prop option; [@option]  (** id *)
  image_reference_id : string prop option; [@option]
      (** image_reference_id *)
  location : string prop;  (** location *)
  logical_sector_size : float prop option; [@option]
      (** logical_sector_size *)
  max_shares : float prop option; [@option]  (** max_shares *)
  name : string prop;  (** name *)
  network_access_policy : string prop option; [@option]
      (** network_access_policy *)
  on_demand_bursting_enabled : bool prop option; [@option]
      (** on_demand_bursting_enabled *)
  optimized_frequent_attach_enabled : bool prop option; [@option]
      (** optimized_frequent_attach_enabled *)
  os_type : string prop option; [@option]  (** os_type *)
  performance_plus_enabled : bool prop option; [@option]
      (** performance_plus_enabled *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  secure_vm_disk_encryption_set_id : string prop option; [@option]
      (** secure_vm_disk_encryption_set_id *)
  security_type : string prop option; [@option]  (** security_type *)
  source_resource_id : string prop option; [@option]
      (** source_resource_id *)
  source_uri : string prop option; [@option]  (** source_uri *)
  storage_account_id : string prop option; [@option]
      (** storage_account_id *)
  storage_account_type : string prop;  (** storage_account_type *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tier : string prop option; [@option]  (** tier *)
  trusted_launch_enabled : bool prop option; [@option]
      (** trusted_launch_enabled *)
  upload_size_bytes : float prop option; [@option]
      (** upload_size_bytes *)
  zone : string prop option; [@option]  (** zone *)
  encryption_settings :
    azurerm_managed_disk__encryption_settings list;
  timeouts : azurerm_managed_disk__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_managed_disk *)

let azurerm_managed_disk ?disk_access_id ?disk_encryption_set_id
    ?disk_iops_read_only ?disk_iops_read_write ?disk_mbps_read_only
    ?disk_mbps_read_write ?disk_size_gb ?edge_zone
    ?gallery_image_reference_id ?hyper_v_generation ?id
    ?image_reference_id ?logical_sector_size ?max_shares
    ?network_access_policy ?on_demand_bursting_enabled
    ?optimized_frequent_attach_enabled ?os_type
    ?performance_plus_enabled ?public_network_access_enabled
    ?secure_vm_disk_encryption_set_id ?security_type
    ?source_resource_id ?source_uri ?storage_account_id ?tags ?tier
    ?trusted_launch_enabled ?upload_size_bytes ?zone ?timeouts
    ~create_option ~location ~name ~resource_group_name
    ~storage_account_type ~encryption_settings __resource_id =
  let __resource_type = "azurerm_managed_disk" in
  let __resource =
    {
      create_option;
      disk_access_id;
      disk_encryption_set_id;
      disk_iops_read_only;
      disk_iops_read_write;
      disk_mbps_read_only;
      disk_mbps_read_write;
      disk_size_gb;
      edge_zone;
      gallery_image_reference_id;
      hyper_v_generation;
      id;
      image_reference_id;
      location;
      logical_sector_size;
      max_shares;
      name;
      network_access_policy;
      on_demand_bursting_enabled;
      optimized_frequent_attach_enabled;
      os_type;
      performance_plus_enabled;
      public_network_access_enabled;
      resource_group_name;
      secure_vm_disk_encryption_set_id;
      security_type;
      source_resource_id;
      source_uri;
      storage_account_id;
      storage_account_type;
      tags;
      tier;
      trusted_launch_enabled;
      upload_size_bytes;
      zone;
      encryption_settings;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_managed_disk __resource);
  ()
