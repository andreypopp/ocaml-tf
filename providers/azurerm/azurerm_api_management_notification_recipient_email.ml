(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_api_management_notification_recipient_email = {
  api_management_id : string prop;  (** api_management_id *)
  email : string prop;  (** email *)
  id : string prop option; [@option]  (** id *)
  notification_type : string prop;  (** notification_type *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_notification_recipient_email *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_api_management_notification_recipient_email ?id ?timeouts
    ~api_management_id ~email ~notification_type () :
    azurerm_api_management_notification_recipient_email =
  { api_management_id; email; id; notification_type; timeouts }

type t = {
  api_management_id : string prop;
  email : string prop;
  id : string prop;
  notification_type : string prop;
}

let register ?tf_module ?id ?timeouts ~api_management_id ~email
    ~notification_type __resource_id =
  let __resource_type =
    "azurerm_api_management_notification_recipient_email"
  in
  let __resource =
    azurerm_api_management_notification_recipient_email ?id ?timeouts
      ~api_management_id ~email ~notification_type ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_notification_recipient_email
       __resource);
  let __resource_attributes =
    ({
       api_management_id =
         Prop.computed __resource_type __resource_id
           "api_management_id";
       email = Prop.computed __resource_type __resource_id "email";
       id = Prop.computed __resource_type __resource_id "id";
       notification_type =
         Prop.computed __resource_type __resource_id
           "notification_type";
     }
      : t)
  in
  __resource_attributes
