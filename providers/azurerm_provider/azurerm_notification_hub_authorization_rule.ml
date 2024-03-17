(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_notification_hub_authorization_rule__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_notification_hub_authorization_rule__timeouts *)

type azurerm_notification_hub_authorization_rule = {
  id : string prop option; [@option]  (** id *)
  listen : bool prop option; [@option]  (** listen *)
  manage : bool prop option; [@option]  (** manage *)
  name : string prop;  (** name *)
  namespace_name : string prop;  (** namespace_name *)
  notification_hub_name : string prop;  (** notification_hub_name *)
  resource_group_name : string prop;  (** resource_group_name *)
  send : bool prop option; [@option]  (** send *)
  timeouts :
    azurerm_notification_hub_authorization_rule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_notification_hub_authorization_rule *)

let azurerm_notification_hub_authorization_rule ?id ?listen ?manage
    ?send ?timeouts ~name ~namespace_name ~notification_hub_name
    ~resource_group_name __resource_id =
  let __resource_type =
    "azurerm_notification_hub_authorization_rule"
  in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_notification_hub_authorization_rule __resource);
  ()
