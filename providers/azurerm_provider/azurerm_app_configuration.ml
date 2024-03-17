(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_app_configuration__encryption = {
  identity_client_id : string option; [@option]
      (** identity_client_id *)
  key_vault_key_identifier : string option; [@option]
      (** key_vault_key_identifier *)
}
[@@deriving yojson_of]
(** azurerm_app_configuration__encryption *)

type azurerm_app_configuration__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_app_configuration__identity *)

type azurerm_app_configuration__replica = {
  endpoint : string;  (** endpoint *)
  id : string;  (** id *)
  location : string;  (** location *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_app_configuration__replica *)

type azurerm_app_configuration__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_app_configuration__timeouts *)

type azurerm_app_configuration__primary_read_key = {
  connection_string : string;  (** connection_string *)
  id : string;  (** id *)
  secret : string;  (** secret *)
}
[@@deriving yojson_of]

type azurerm_app_configuration__primary_write_key = {
  connection_string : string;  (** connection_string *)
  id : string;  (** id *)
  secret : string;  (** secret *)
}
[@@deriving yojson_of]

type azurerm_app_configuration__secondary_read_key = {
  connection_string : string;  (** connection_string *)
  id : string;  (** id *)
  secret : string;  (** secret *)
}
[@@deriving yojson_of]

type azurerm_app_configuration__secondary_write_key = {
  connection_string : string;  (** connection_string *)
  id : string;  (** id *)
  secret : string;  (** secret *)
}
[@@deriving yojson_of]

type azurerm_app_configuration = {
  id : string option; [@option]  (** id *)
  local_auth_enabled : bool option; [@option]
      (** local_auth_enabled *)
  location : string;  (** location *)
  name : string;  (** name *)
  public_network_access : string option; [@option]
      (** public_network_access *)
  purge_protection_enabled : bool option; [@option]
      (** purge_protection_enabled *)
  resource_group_name : string;  (** resource_group_name *)
  sku : string option; [@option]  (** sku *)
  soft_delete_retention_days : float option; [@option]
      (** soft_delete_retention_days *)
  tags : (string * string) list option; [@option]  (** tags *)
  encryption : azurerm_app_configuration__encryption list;
  identity : azurerm_app_configuration__identity list;
  replica : azurerm_app_configuration__replica list;
  timeouts : azurerm_app_configuration__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_configuration *)

let azurerm_app_configuration ?id ?local_auth_enabled
    ?public_network_access ?purge_protection_enabled ?sku
    ?soft_delete_retention_days ?tags ?timeouts ~location ~name
    ~resource_group_name ~encryption ~identity ~replica __resource_id
    =
  let __resource_type = "azurerm_app_configuration" in
  let __resource =
    {
      id;
      local_auth_enabled;
      location;
      name;
      public_network_access;
      purge_protection_enabled;
      resource_group_name;
      sku;
      soft_delete_retention_days;
      tags;
      encryption;
      identity;
      replica;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_app_configuration __resource);
  ()
