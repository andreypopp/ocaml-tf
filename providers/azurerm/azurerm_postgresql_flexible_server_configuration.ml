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

type azurerm_postgresql_flexible_server_configuration = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  server_id : string prop;  (** server_id *)
  value : string prop;  (** value *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_postgresql_flexible_server_configuration *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_postgresql_flexible_server_configuration ?id ?timeouts
    ~name ~server_id ~value () :
    azurerm_postgresql_flexible_server_configuration =
  { id; name; server_id; value; timeouts }

type t = {
  id : string prop;
  name : string prop;
  server_id : string prop;
  value : string prop;
}

let register ?tf_module ?id ?timeouts ~name ~server_id ~value
    __resource_id =
  let __resource_type =
    "azurerm_postgresql_flexible_server_configuration"
  in
  let __resource =
    azurerm_postgresql_flexible_server_configuration ?id ?timeouts
      ~name ~server_id ~value ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_postgresql_flexible_server_configuration
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       server_id =
         Prop.computed __resource_type __resource_id "server_id";
       value = Prop.computed __resource_type __resource_id "value";
     }
      : t)
  in
  __resource_attributes
