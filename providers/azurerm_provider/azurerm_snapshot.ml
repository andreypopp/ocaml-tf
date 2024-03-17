(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_snapshot__encryption_settings__disk_encryption_key = {
  secret_url : string prop;  (** secret_url *)
  source_vault_id : string prop;  (** source_vault_id *)
}
[@@deriving yojson_of]
(** azurerm_snapshot__encryption_settings__disk_encryption_key *)

type azurerm_snapshot__encryption_settings__key_encryption_key = {
  key_url : string prop;  (** key_url *)
  source_vault_id : string prop;  (** source_vault_id *)
}
[@@deriving yojson_of]
(** azurerm_snapshot__encryption_settings__key_encryption_key *)

type azurerm_snapshot__encryption_settings = {
  enabled : bool prop option; [@option]  (** enabled *)
  disk_encryption_key :
    azurerm_snapshot__encryption_settings__disk_encryption_key list;
  key_encryption_key :
    azurerm_snapshot__encryption_settings__key_encryption_key list;
}
[@@deriving yojson_of]
(** azurerm_snapshot__encryption_settings *)

type azurerm_snapshot__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_snapshot__timeouts *)

type azurerm_snapshot = {
  create_option : string prop;  (** create_option *)
  disk_size_gb : float prop option; [@option]  (** disk_size_gb *)
  id : string prop option; [@option]  (** id *)
  incremental_enabled : bool prop option; [@option]
      (** incremental_enabled *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  source_resource_id : string prop option; [@option]
      (** source_resource_id *)
  source_uri : string prop option; [@option]  (** source_uri *)
  storage_account_id : string prop option; [@option]
      (** storage_account_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  encryption_settings : azurerm_snapshot__encryption_settings list;
  timeouts : azurerm_snapshot__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_snapshot *)

let azurerm_snapshot ?disk_size_gb ?id ?incremental_enabled
    ?source_resource_id ?source_uri ?storage_account_id ?tags
    ?timeouts ~create_option ~location ~name ~resource_group_name
    ~encryption_settings __resource_id =
  let __resource_type = "azurerm_snapshot" in
  let __resource =
    {
      create_option;
      disk_size_gb;
      id;
      incremental_enabled;
      location;
      name;
      resource_group_name;
      source_resource_id;
      source_uri;
      storage_account_id;
      tags;
      encryption_settings;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_snapshot __resource);
  ()
