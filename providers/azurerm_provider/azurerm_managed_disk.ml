(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_managed_disk__encryption_settings__disk_encryption_key = {
  secret_url : string;  (** secret_url *)
  source_vault_id : string;  (** source_vault_id *)
}
[@@deriving yojson_of]
(** azurerm_managed_disk__encryption_settings__disk_encryption_key *)

type azurerm_managed_disk__encryption_settings__key_encryption_key = {
  key_url : string;  (** key_url *)
  source_vault_id : string;  (** source_vault_id *)
}
[@@deriving yojson_of]
(** azurerm_managed_disk__encryption_settings__key_encryption_key *)

type azurerm_managed_disk__encryption_settings = {
  enabled : bool option; [@option]  (** enabled *)
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
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_managed_disk__timeouts *)

type azurerm_managed_disk = {
  create_option : string;  (** create_option *)
  disk_access_id : string option; [@option]  (** disk_access_id *)
  disk_encryption_set_id : string option; [@option]
      (** disk_encryption_set_id *)
  edge_zone : string option; [@option]  (** edge_zone *)
  gallery_image_reference_id : string option; [@option]
      (** gallery_image_reference_id *)
  hyper_v_generation : string option; [@option]
      (** hyper_v_generation *)
  image_reference_id : string option; [@option]
      (** image_reference_id *)
  location : string;  (** location *)
  name : string;  (** name *)
  network_access_policy : string option; [@option]
      (** network_access_policy *)
  on_demand_bursting_enabled : bool option; [@option]
      (** on_demand_bursting_enabled *)
  optimized_frequent_attach_enabled : bool option; [@option]
      (** optimized_frequent_attach_enabled *)
  os_type : string option; [@option]  (** os_type *)
  performance_plus_enabled : bool option; [@option]
      (** performance_plus_enabled *)
  public_network_access_enabled : bool option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string;  (** resource_group_name *)
  secure_vm_disk_encryption_set_id : string option; [@option]
      (** secure_vm_disk_encryption_set_id *)
  security_type : string option; [@option]  (** security_type *)
  source_resource_id : string option; [@option]
      (** source_resource_id *)
  storage_account_id : string option; [@option]
      (** storage_account_id *)
  storage_account_type : string;  (** storage_account_type *)
  tags : (string * string) list option; [@option]  (** tags *)
  trusted_launch_enabled : bool option; [@option]
      (** trusted_launch_enabled *)
  upload_size_bytes : float option; [@option]
      (** upload_size_bytes *)
  zone : string option; [@option]  (** zone *)
  encryption_settings :
    azurerm_managed_disk__encryption_settings list;
  timeouts : azurerm_managed_disk__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_managed_disk *)

let azurerm_managed_disk ?disk_access_id ?disk_encryption_set_id
    ?edge_zone ?gallery_image_reference_id ?hyper_v_generation
    ?image_reference_id ?network_access_policy
    ?on_demand_bursting_enabled ?optimized_frequent_attach_enabled
    ?os_type ?performance_plus_enabled ?public_network_access_enabled
    ?secure_vm_disk_encryption_set_id ?security_type
    ?source_resource_id ?storage_account_id ?tags
    ?trusted_launch_enabled ?upload_size_bytes ?zone ?timeouts
    ~create_option ~location ~name ~resource_group_name
    ~storage_account_type ~encryption_settings __resource_id =
  let __resource_type = "azurerm_managed_disk" in
  let __resource =
    {
      create_option;
      disk_access_id;
      disk_encryption_set_id;
      edge_zone;
      gallery_image_reference_id;
      hyper_v_generation;
      image_reference_id;
      location;
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
      storage_account_id;
      storage_account_type;
      tags;
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
