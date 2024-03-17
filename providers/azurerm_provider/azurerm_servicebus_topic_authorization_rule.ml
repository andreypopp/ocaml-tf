(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_servicebus_topic_authorization_rule__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_servicebus_topic_authorization_rule__timeouts *)

type azurerm_servicebus_topic_authorization_rule = {
  listen : bool option; [@option]  (** listen *)
  manage : bool option; [@option]  (** manage *)
  name : string;  (** name *)
  send : bool option; [@option]  (** send *)
  topic_id : string;  (** topic_id *)
  timeouts :
    azurerm_servicebus_topic_authorization_rule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_servicebus_topic_authorization_rule *)

let azurerm_servicebus_topic_authorization_rule ?listen ?manage ?send
    ?timeouts ~name ~topic_id __resource_id =
  let __resource_type =
    "azurerm_servicebus_topic_authorization_rule"
  in
  let __resource =
    { listen; manage; name; send; topic_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_servicebus_topic_authorization_rule __resource);
  ()
