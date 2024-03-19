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

let register ?tf_module ?id ?listen ?manage ?send ?timeouts ~name
    ~namespace_name ~notification_hub_name ~resource_group_name
    __resource_id =
  let __resource_type =
    "azurerm_notification_hub_authorization_rule"
  in
  let __resource =
    azurerm_notification_hub_authorization_rule ?id ?listen ?manage
      ?send ?timeouts ~name ~namespace_name ~notification_hub_name
      ~resource_group_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_notification_hub_authorization_rule __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       listen = Prop.computed __resource_type __resource_id "listen";
       manage = Prop.computed __resource_type __resource_id "manage";
       name = Prop.computed __resource_type __resource_id "name";
       namespace_name =
         Prop.computed __resource_type __resource_id "namespace_name";
       notification_hub_name =
         Prop.computed __resource_type __resource_id
           "notification_hub_name";
       primary_access_key =
         Prop.computed __resource_type __resource_id
           "primary_access_key";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       secondary_access_key =
         Prop.computed __resource_type __resource_id
           "secondary_access_key";
       send = Prop.computed __resource_type __resource_id "send";
     }
      : t)
  in
  __resource_attributes
