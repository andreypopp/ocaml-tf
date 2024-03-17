(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_mssql_server__azuread_administrator = {
  azuread_authentication_only : bool option; [@option]
      (** azuread_authentication_only *)
  login_username : string;  (** login_username *)
  object_id : string;  (** object_id *)
  tenant_id : string option; [@option]  (** tenant_id *)
}
[@@deriving yojson_of]
(** azurerm_mssql_server__azuread_administrator *)

type azurerm_mssql_server__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_mssql_server__identity *)

type azurerm_mssql_server__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mssql_server__timeouts *)

type azurerm_mssql_server = {
  administrator_login_password : string option; [@option]
      (** administrator_login_password *)
  connection_policy : string option; [@option]
      (** connection_policy *)
  location : string;  (** location *)
  minimum_tls_version : string option; [@option]
      (** minimum_tls_version *)
  name : string;  (** name *)
  outbound_network_restriction_enabled : bool option; [@option]
      (** outbound_network_restriction_enabled *)
  public_network_access_enabled : bool option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  transparent_data_encryption_key_vault_key_id : string option;
      [@option]
      (** transparent_data_encryption_key_vault_key_id *)
  version : string;  (** version *)
  azuread_administrator :
    azurerm_mssql_server__azuread_administrator list;
  identity : azurerm_mssql_server__identity list;
  timeouts : azurerm_mssql_server__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mssql_server *)

let azurerm_mssql_server ?administrator_login_password
    ?connection_policy ?minimum_tls_version
    ?outbound_network_restriction_enabled
    ?public_network_access_enabled ?tags
    ?transparent_data_encryption_key_vault_key_id ?timeouts ~location
    ~name ~resource_group_name ~version ~azuread_administrator
    ~identity __resource_id =
  let __resource_type = "azurerm_mssql_server" in
  let __resource =
    {
      administrator_login_password;
      connection_policy;
      location;
      minimum_tls_version;
      name;
      outbound_network_restriction_enabled;
      public_network_access_enabled;
      resource_group_name;
      tags;
      transparent_data_encryption_key_vault_key_id;
      version;
      azuread_administrator;
      identity;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mssql_server __resource);
  ()
