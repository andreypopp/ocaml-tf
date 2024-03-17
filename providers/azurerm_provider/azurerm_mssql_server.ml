(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_mssql_server__azuread_administrator = {
  azuread_authentication_only : bool prop option; [@option]
      (** azuread_authentication_only *)
  login_username : string prop;  (** login_username *)
  object_id : string prop;  (** object_id *)
  tenant_id : string prop option; [@option]  (** tenant_id *)
}
[@@deriving yojson_of]
(** azurerm_mssql_server__azuread_administrator *)

type azurerm_mssql_server__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_mssql_server__identity *)

type azurerm_mssql_server__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mssql_server__timeouts *)

type azurerm_mssql_server = {
  administrator_login : string prop option; [@option]
      (** administrator_login *)
  administrator_login_password : string prop option; [@option]
      (** administrator_login_password *)
  connection_policy : string prop option; [@option]
      (** connection_policy *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  minimum_tls_version : string prop option; [@option]
      (** minimum_tls_version *)
  name : string prop;  (** name *)
  outbound_network_restriction_enabled : bool prop option; [@option]
      (** outbound_network_restriction_enabled *)
  primary_user_assigned_identity_id : string prop option; [@option]
      (** primary_user_assigned_identity_id *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  transparent_data_encryption_key_vault_key_id : string prop option;
      [@option]
      (** transparent_data_encryption_key_vault_key_id *)
  version : string prop;  (** version *)
  azuread_administrator :
    azurerm_mssql_server__azuread_administrator list;
  identity : azurerm_mssql_server__identity list;
  timeouts : azurerm_mssql_server__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mssql_server *)

let azurerm_mssql_server ?administrator_login
    ?administrator_login_password ?connection_policy ?id
    ?minimum_tls_version ?outbound_network_restriction_enabled
    ?primary_user_assigned_identity_id ?public_network_access_enabled
    ?tags ?transparent_data_encryption_key_vault_key_id ?timeouts
    ~location ~name ~resource_group_name ~version
    ~azuread_administrator ~identity __resource_id =
  let __resource_type = "azurerm_mssql_server" in
  let __resource =
    {
      administrator_login;
      administrator_login_password;
      connection_policy;
      id;
      location;
      minimum_tls_version;
      name;
      outbound_network_restriction_enabled;
      primary_user_assigned_identity_id;
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
