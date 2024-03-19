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

type azurerm_relay_hybrid_connection = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  relay_namespace_name : string prop;  (** relay_namespace_name *)
  requires_client_authorization : bool prop option; [@option]
      (** requires_client_authorization *)
  resource_group_name : string prop;  (** resource_group_name *)
  user_metadata : string prop option; [@option]  (** user_metadata *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_relay_hybrid_connection *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_relay_hybrid_connection ?id
    ?requires_client_authorization ?user_metadata ?timeouts ~name
    ~relay_namespace_name ~resource_group_name () :
    azurerm_relay_hybrid_connection =
  {
    id;
    name;
    relay_namespace_name;
    requires_client_authorization;
    resource_group_name;
    user_metadata;
    timeouts;
  }

type t = {
  id : string prop;
  name : string prop;
  relay_namespace_name : string prop;
  requires_client_authorization : bool prop;
  resource_group_name : string prop;
  user_metadata : string prop;
}

let register ?tf_module ?id ?requires_client_authorization
    ?user_metadata ?timeouts ~name ~relay_namespace_name
    ~resource_group_name __resource_id =
  let __resource_type = "azurerm_relay_hybrid_connection" in
  let __resource =
    azurerm_relay_hybrid_connection ?id
      ?requires_client_authorization ?user_metadata ?timeouts ~name
      ~relay_namespace_name ~resource_group_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_relay_hybrid_connection __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       relay_namespace_name =
         Prop.computed __resource_type __resource_id
           "relay_namespace_name";
       requires_client_authorization =
         Prop.computed __resource_type __resource_id
           "requires_client_authorization";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       user_metadata =
         Prop.computed __resource_type __resource_id "user_metadata";
     }
      : t)
  in
  __resource_attributes
