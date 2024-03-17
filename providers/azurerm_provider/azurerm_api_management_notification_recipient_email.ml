(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_notification_recipient_email__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_api_management_notification_recipient_email__timeouts *)

type azurerm_api_management_notification_recipient_email = {
  api_management_id : string;  (** api_management_id *)
  email : string;  (** email *)
  id : string option; [@option]  (** id *)
  notification_type : string;  (** notification_type *)
  timeouts :
    azurerm_api_management_notification_recipient_email__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_api_management_notification_recipient_email *)

let azurerm_api_management_notification_recipient_email ?id ?timeouts
    ~api_management_id ~email ~notification_type __resource_id =
  let __resource_type =
    "azurerm_api_management_notification_recipient_email"
  in
  let __resource =
    { api_management_id; email; id; notification_type; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_notification_recipient_email
       __resource);
  ()
