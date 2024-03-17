(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_notification_recipient_user__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_api_management_notification_recipient_user__timeouts *)

type azurerm_api_management_notification_recipient_user = {
  api_management_id : string prop;  (** api_management_id *)
  id : string prop option; [@option]  (** id *)
  notification_type : string prop;  (** notification_type *)
  user_id : string prop;  (** user_id *)
  timeouts :
    azurerm_api_management_notification_recipient_user__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_api_management_notification_recipient_user *)

type t = {
  api_management_id : string prop;
  id : string prop;
  notification_type : string prop;
  user_id : string prop;
}

let azurerm_api_management_notification_recipient_user ?id ?timeouts
    ~api_management_id ~notification_type ~user_id __resource_id =
  let __resource_type =
    "azurerm_api_management_notification_recipient_user"
  in
  let __resource =
    ({ api_management_id; id; notification_type; user_id; timeouts }
      : azurerm_api_management_notification_recipient_user)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_notification_recipient_user
       __resource);
  let __resource_attributes =
    ({
       api_management_id =
         Prop.computed __resource_type __resource_id
           "api_management_id";
       id = Prop.computed __resource_type __resource_id "id";
       notification_type =
         Prop.computed __resource_type __resource_id
           "notification_type";
       user_id =
         Prop.computed __resource_type __resource_id "user_id";
     }
      : t)
  in
  __resource_attributes
