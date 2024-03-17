(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_relay_hybrid_connection_authorization_rule__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_relay_hybrid_connection_authorization_rule__timeouts *)

type azurerm_relay_hybrid_connection_authorization_rule = {
  hybrid_connection_name : string prop;
      (** hybrid_connection_name *)
  id : string prop option; [@option]  (** id *)
  listen : bool prop option; [@option]  (** listen *)
  manage : bool prop option; [@option]  (** manage *)
  name : string prop;  (** name *)
  namespace_name : string prop;  (** namespace_name *)
  resource_group_name : string prop;  (** resource_group_name *)
  send : bool prop option; [@option]  (** send *)
  timeouts :
    azurerm_relay_hybrid_connection_authorization_rule__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_relay_hybrid_connection_authorization_rule *)

type t = {
  hybrid_connection_name : string prop;
  id : string prop;
  listen : bool prop;
  manage : bool prop;
  name : string prop;
  namespace_name : string prop;
  primary_connection_string : string prop;
  primary_key : string prop;
  resource_group_name : string prop;
  secondary_connection_string : string prop;
  secondary_key : string prop;
  send : bool prop;
}

let azurerm_relay_hybrid_connection_authorization_rule ?id ?listen
    ?manage ?send ?timeouts ~hybrid_connection_name ~name
    ~namespace_name ~resource_group_name __resource_id =
  let __resource_type =
    "azurerm_relay_hybrid_connection_authorization_rule"
  in
  let __resource =
    ({
       hybrid_connection_name;
       id;
       listen;
       manage;
       name;
       namespace_name;
       resource_group_name;
       send;
       timeouts;
     }
      : azurerm_relay_hybrid_connection_authorization_rule)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_relay_hybrid_connection_authorization_rule
       __resource);
  let __resource_attributes =
    ({
       hybrid_connection_name =
         Prop.computed __resource_type __resource_id
           "hybrid_connection_name";
       id = Prop.computed __resource_type __resource_id "id";
       listen = Prop.computed __resource_type __resource_id "listen";
       manage = Prop.computed __resource_type __resource_id "manage";
       name = Prop.computed __resource_type __resource_id "name";
       namespace_name =
         Prop.computed __resource_type __resource_id "namespace_name";
       primary_connection_string =
         Prop.computed __resource_type __resource_id
           "primary_connection_string";
       primary_key =
         Prop.computed __resource_type __resource_id "primary_key";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       secondary_connection_string =
         Prop.computed __resource_type __resource_id
           "secondary_connection_string";
       secondary_key =
         Prop.computed __resource_type __resource_id "secondary_key";
       send = Prop.computed __resource_type __resource_id "send";
     }
      : t)
  in
  __resource_attributes
