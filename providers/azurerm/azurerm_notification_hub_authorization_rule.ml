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

type azurerm_notification_hub_authorization_rule = {
  id : string prop option; [@option]  (** id *)
  listen : bool prop option; [@option]  (** listen *)
  manage : bool prop option; [@option]  (** manage *)
  name : string prop;  (** name *)
  namespace_name : string prop;  (** namespace_name *)
  notification_hub_name : string prop;  (** notification_hub_name *)
  resource_group_name : string prop;  (** resource_group_name *)
  send : bool prop option; [@option]  (** send *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_notification_hub_authorization_rule *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_notification_hub_authorization_rule ?id ?listen ?manage
    ?send ?timeouts ~name ~namespace_name ~notification_hub_name
    ~resource_group_name () :
    azurerm_notification_hub_authorization_rule =
  {
    id;
    listen;
    manage;
    name;
    namespace_name;
    notification_hub_name;
    resource_group_name;
    send;
    timeouts;
  }

type t = {
  id : string prop;
  listen : bool prop;
  manage : bool prop;
  name : string prop;
  namespace_name : string prop;
  notification_hub_name : string prop;
  primary_access_key : string prop;
  resource_group_name : string prop;
  secondary_access_key : string prop;
  send : bool prop;
}

let make ?id ?listen ?manage ?send ?timeouts ~name ~namespace_name
    ~notification_hub_name ~resource_group_name __id =
  let __type = "azurerm_notification_hub_authorization_rule" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       listen = Prop.computed __type __id "listen";
       manage = Prop.computed __type __id "manage";
       name = Prop.computed __type __id "name";
       namespace_name = Prop.computed __type __id "namespace_name";
       notification_hub_name =
         Prop.computed __type __id "notification_hub_name";
       primary_access_key =
         Prop.computed __type __id "primary_access_key";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       secondary_access_key =
         Prop.computed __type __id "secondary_access_key";
       send = Prop.computed __type __id "send";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_notification_hub_authorization_rule
        (azurerm_notification_hub_authorization_rule ?id ?listen
           ?manage ?send ?timeouts ~name ~namespace_name
           ~notification_hub_name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?listen ?manage ?send ?timeouts ~name
    ~namespace_name ~notification_hub_name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?listen ?manage ?send ?timeouts ~name ~namespace_name
      ~notification_hub_name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
