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

type azurerm_eventhub_authorization_rule = {
  eventhub_name : string prop;  (** eventhub_name *)
  id : string prop option; [@option]  (** id *)
  listen : bool prop option; [@option]  (** listen *)
  manage : bool prop option; [@option]  (** manage *)
  name : string prop;  (** name *)
  namespace_name : string prop;  (** namespace_name *)
  resource_group_name : string prop;  (** resource_group_name *)
  send : bool prop option; [@option]  (** send *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_eventhub_authorization_rule *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_eventhub_authorization_rule ?id ?listen ?manage ?send
    ?timeouts ~eventhub_name ~name ~namespace_name
    ~resource_group_name () : azurerm_eventhub_authorization_rule =
  {
    eventhub_name;
    id;
    listen;
    manage;
    name;
    namespace_name;
    resource_group_name;
    send;
    timeouts;
  }

type t = {
  eventhub_name : string prop;
  id : string prop;
  listen : bool prop;
  manage : bool prop;
  name : string prop;
  namespace_name : string prop;
  primary_connection_string : string prop;
  primary_connection_string_alias : string prop;
  primary_key : string prop;
  resource_group_name : string prop;
  secondary_connection_string : string prop;
  secondary_connection_string_alias : string prop;
  secondary_key : string prop;
  send : bool prop;
}

let register ?tf_module ?id ?listen ?manage ?send ?timeouts
    ~eventhub_name ~name ~namespace_name ~resource_group_name
    __resource_id =
  let __resource_type = "azurerm_eventhub_authorization_rule" in
  let __resource =
    azurerm_eventhub_authorization_rule ?id ?listen ?manage ?send
      ?timeouts ~eventhub_name ~name ~namespace_name
      ~resource_group_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_eventhub_authorization_rule __resource);
  let __resource_attributes =
    ({
       eventhub_name =
         Prop.computed __resource_type __resource_id "eventhub_name";
       id = Prop.computed __resource_type __resource_id "id";
       listen = Prop.computed __resource_type __resource_id "listen";
       manage = Prop.computed __resource_type __resource_id "manage";
       name = Prop.computed __resource_type __resource_id "name";
       namespace_name =
         Prop.computed __resource_type __resource_id "namespace_name";
       primary_connection_string =
         Prop.computed __resource_type __resource_id
           "primary_connection_string";
       primary_connection_string_alias =
         Prop.computed __resource_type __resource_id
           "primary_connection_string_alias";
       primary_key =
         Prop.computed __resource_type __resource_id "primary_key";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
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
