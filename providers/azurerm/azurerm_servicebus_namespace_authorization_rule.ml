(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?listen ?manage ?send ?timeouts ~name ~namespace_id __id
    =
  let __type = "azurerm_servicebus_namespace_authorization_rule" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       listen = Prop.computed __type __id "listen";
       manage = Prop.computed __type __id "manage";
       name = Prop.computed __type __id "name";
       namespace_id = Prop.computed __type __id "namespace_id";
       primary_connection_string =
         Prop.computed __type __id "primary_connection_string";
       primary_connection_string_alias =
         Prop.computed __type __id "primary_connection_string_alias";
       primary_key = Prop.computed __type __id "primary_key";
       secondary_connection_string =
         Prop.computed __type __id "secondary_connection_string";
       secondary_connection_string_alias =
         Prop.computed __type __id
           "secondary_connection_string_alias";
       secondary_key = Prop.computed __type __id "secondary_key";
       send = Prop.computed __type __id "send";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_servicebus_namespace_authorization_rule
        (azurerm_servicebus_namespace_authorization_rule ?id ?listen
           ?manage ?send ?timeouts ~name ~namespace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?listen ?manage ?send ?timeouts ~name
    ~namespace_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?listen ?manage ?send ?timeouts ~name ~namespace_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
