(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_mssql_server_transparent_data_encryption__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mssql_server_transparent_data_encryption__timeouts *)

type azurerm_mssql_server_transparent_data_encryption = {
  auto_rotation_enabled : bool option; [@option]
      (** auto_rotation_enabled *)
  key_vault_key_id : string option; [@option]
      (** key_vault_key_id *)
  server_id : string;  (** server_id *)
  timeouts :
    azurerm_mssql_server_transparent_data_encryption__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mssql_server_transparent_data_encryption *)

let azurerm_mssql_server_transparent_data_encryption
    ?auto_rotation_enabled ?key_vault_key_id ?timeouts ~server_id
    __resource_id =
  let __resource_type =
    "azurerm_mssql_server_transparent_data_encryption"
  in
  let __resource =
    { auto_rotation_enabled; key_vault_key_id; server_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mssql_server_transparent_data_encryption
       __resource);
  ()
