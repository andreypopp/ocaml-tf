(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_api_management_notification_recipient_user = {
  api_management_id : string prop;  (** api_management_id *)
  id : string prop option; [@option]  (** id *)
  notification_type : string prop;  (** notification_type *)
  user_id : string prop;  (** user_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_notification_recipient_user *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_api_management_notification_recipient_user ?id ?timeouts
    ~api_management_id ~notification_type ~user_id () :
    azurerm_api_management_notification_recipient_user =
  { api_management_id; id; notification_type; user_id; timeouts }

type t = {
  api_management_id : string prop;
  id : string prop;
  notification_type : string prop;
  user_id : string prop;
}

let make ?id ?timeouts ~api_management_id ~notification_type ~user_id
    __id =
  let __type =
    "azurerm_api_management_notification_recipient_user"
  in
  let __attrs =
    ({
       api_management_id =
         Prop.computed __type __id "api_management_id";
       id = Prop.computed __type __id "id";
       notification_type =
         Prop.computed __type __id "notification_type";
       user_id = Prop.computed __type __id "user_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_notification_recipient_user
        (azurerm_api_management_notification_recipient_user ?id
           ?timeouts ~api_management_id ~notification_type ~user_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~api_management_id
    ~notification_type ~user_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~api_management_id ~notification_type ~user_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
