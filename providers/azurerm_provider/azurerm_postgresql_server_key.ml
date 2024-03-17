(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_postgresql_server_key__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_postgresql_server_key__timeouts *)

type azurerm_postgresql_server_key = {
  key_vault_key_id : string;  (** key_vault_key_id *)
  server_id : string;  (** server_id *)
  timeouts : azurerm_postgresql_server_key__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_postgresql_server_key *)

let azurerm_postgresql_server_key ?timeouts ~key_vault_key_id
    ~server_id __resource_id =
  let __resource_type = "azurerm_postgresql_server_key" in
  let __resource = { key_vault_key_id; server_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_postgresql_server_key __resource);
  ()
