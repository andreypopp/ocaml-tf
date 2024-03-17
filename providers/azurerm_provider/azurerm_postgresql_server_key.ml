(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_postgresql_server_key__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_postgresql_server_key__timeouts *)

type azurerm_postgresql_server_key = {
  id : string prop option; [@option]  (** id *)
  key_vault_key_id : string prop;  (** key_vault_key_id *)
  server_id : string prop;  (** server_id *)
  timeouts : azurerm_postgresql_server_key__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_postgresql_server_key *)

type t = {
  id : string prop;
  key_vault_key_id : string prop;
  server_id : string prop;
}

let azurerm_postgresql_server_key ?id ?timeouts ~key_vault_key_id
    ~server_id __resource_id =
  let __resource_type = "azurerm_postgresql_server_key" in
  let __resource =
    ({ id; key_vault_key_id; server_id; timeouts }
      : azurerm_postgresql_server_key)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_postgresql_server_key __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       key_vault_key_id =
         Prop.computed __resource_type __resource_id
           "key_vault_key_id";
       server_id =
         Prop.computed __resource_type __resource_id "server_id";
     }
      : t)
  in
  __resource_attributes
