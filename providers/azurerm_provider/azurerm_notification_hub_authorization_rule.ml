(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_notification_hub_authorization_rule__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_notification_hub_authorization_rule__timeouts *)

type azurerm_notification_hub_authorization_rule = {
  listen : bool option; [@option]  (** listen *)
  manage : bool option; [@option]  (** manage *)
  name : string;  (** name *)
  namespace_name : string;  (** namespace_name *)
  notification_hub_name : string;  (** notification_hub_name *)
  resource_group_name : string;  (** resource_group_name *)
  send : bool option; [@option]  (** send *)
  timeouts :
    azurerm_notification_hub_authorization_rule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_notification_hub_authorization_rule *)

let azurerm_notification_hub_authorization_rule ?listen ?manage ?send
    ?timeouts ~name ~namespace_name ~notification_hub_name
    ~resource_group_name __resource_id =
  let __resource_type =
    "azurerm_notification_hub_authorization_rule"
  in
  let __resource =
    {
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
