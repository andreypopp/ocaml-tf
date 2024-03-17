(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_snapshot__encryption_settings__disk_encryption_key = {
  secret_url : string;  (** secret_url *)
  source_vault_id : string;  (** source_vault_id *)
}
[@@deriving yojson_of]
(** azurerm_snapshot__encryption_settings__disk_encryption_key *)

type azurerm_snapshot__encryption_settings__key_encryption_key = {
  key_url : string;  (** key_url *)
  source_vault_id : string;  (** source_vault_id *)
}
[@@deriving yojson_of]
(** azurerm_snapshot__encryption_settings__key_encryption_key *)

type azurerm_snapshot__encryption_settings = {
  enabled : bool option; [@option]  (** enabled *)
  disk_encryption_key :
    azurerm_snapshot__encryption_settings__disk_encryption_key list;
  key_encryption_key :
    azurerm_snapshot__encryption_settings__key_encryption_key list;
}
[@@deriving yojson_of]
(** azurerm_snapshot__encryption_settings *)

type azurerm_snapshot__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_snapshot__timeouts *)

type azurerm_snapshot = {
  create_option : string;  (** create_option *)
  incremental_enabled : bool option; [@option]
      (** incremental_enabled *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  source_resource_id : string option; [@option]
      (** source_resource_id *)
  source_uri : string option; [@option]  (** source_uri *)
  storage_account_id : string option; [@option]
      (** storage_account_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  encryption_settings : azurerm_snapshot__encryption_settings list;
  timeouts : azurerm_snapshot__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_snapshot *)

let azurerm_snapshot ?incremental_enabled ?source_resource_id
    ?source_uri ?storage_account_id ?tags ?timeouts ~create_option
    ~location ~name ~resource_group_name ~encryption_settings
    __resource_id =
  let __resource_type = "azurerm_snapshot" in
  let __resource =
    {
      create_option;
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
