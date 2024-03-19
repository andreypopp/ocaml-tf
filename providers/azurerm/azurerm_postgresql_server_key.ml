(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_postgresql_server_key = {
  id : string prop option; [@option]  (** id *)
  key_vault_key_id : string prop;  (** key_vault_key_id *)
  server_id : string prop;  (** server_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_postgresql_server_key *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_postgresql_server_key ?id ?timeouts ~key_vault_key_id
    ~server_id () : azurerm_postgresql_server_key =
  { id; key_vault_key_id; server_id; timeouts }

type t = {
  id : string prop;
  key_vault_key_id : string prop;
  server_id : string prop;
}

let register ?tf_module ?id ?timeouts ~key_vault_key_id ~server_id
    __resource_id =
  let __resource_type = "azurerm_postgresql_server_key" in
  let __resource =
    azurerm_postgresql_server_key ?id ?timeouts ~key_vault_key_id
      ~server_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
