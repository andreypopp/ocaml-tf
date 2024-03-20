(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?timeouts ~api_management_id ~email ~notification_type
    __id =
  let __type =
    "azurerm_api_management_notification_recipient_email"
  in
  let __attrs =
    ({
       api_management_id =
         Prop.computed __type __id "api_management_id";
       email = Prop.computed __type __id "email";
       id = Prop.computed __type __id "id";
       notification_type =
         Prop.computed __type __id "notification_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_notification_recipient_email
        (azurerm_api_management_notification_recipient_email ?id
           ?timeouts ~api_management_id ~email ~notification_type ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~api_management_id ~email
    ~notification_type __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~api_management_id ~email ~notification_type
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
