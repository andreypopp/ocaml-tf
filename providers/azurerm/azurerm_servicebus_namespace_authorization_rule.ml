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

type azurerm_servicebus_namespace_authorization_rule = {
  id : string prop option; [@option]  (** id *)
  listen : bool prop option; [@option]  (** listen *)
  manage : bool prop option; [@option]  (** manage *)
  name : string prop;  (** name *)
  namespace_id : string prop;  (** namespace_id *)
  send : bool prop option; [@option]  (** send *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_servicebus_namespace_authorization_rule *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_servicebus_namespace_authorization_rule ?id ?listen
    ?manage ?send ?timeouts ~name ~namespace_id () :
    azurerm_servicebus_namespace_authorization_rule =
  { id; listen; manage; name; namespace_id; send; timeouts }

type t = {
  id : string prop;
  listen : bool prop;
  manage : bool prop;
  name : string prop;
  namespace_id : string prop;
  primary_connection_string : string prop;
  primary_connection_string_alias : string prop;
  primary_key : string prop;
  secondary_connection_string : string prop;
  secondary_connection_string_alias : string prop;
  secondary_key : string prop;
  send : bool prop;
}

let register ?tf_module ?id ?listen ?manage ?send ?timeouts ~name
    ~namespace_id __resource_id =
  let __resource_type =
    "azurerm_servicebus_namespace_authorization_rule"
  in
  let __resource =
    azurerm_servicebus_namespace_authorization_rule ?id ?listen
      ?manage ?send ?timeouts ~name ~namespace_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_servicebus_namespace_authorization_rule
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       listen = Prop.computed __resource_type __resource_id "listen";
       manage = Prop.computed __resource_type __resource_id "manage";
       name = Prop.computed __resource_type __resource_id "name";
       namespace_id =
         Prop.computed __resource_type __resource_id "namespace_id";
       primary_connection_string =
         Prop.computed __resource_type __resource_id
           "primary_connection_string";
       primary_connection_string_alias =
         Prop.computed __resource_type __resource_id
           "primary_connection_string_alias";
       primary_key =
         Prop.computed __resource_type __resource_id "primary_key";
       secondary_connection_string =
         Prop.computed __resource_type __resource_id
           "secondary_connection_string";
       secondary_connection_string_alias =
         Prop.computed __resource_type __resource_id
           "secondary_connection_string_alias";
       secondary_key =
         Prop.computed __resource_type __resource_id "secondary_key";
       send = Prop.computed __resource_type __resource_id "send";
     }
      : t)
  in
  __resource_attributes
