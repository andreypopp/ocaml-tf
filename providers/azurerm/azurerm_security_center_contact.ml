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

type azurerm_security_center_contact = {
  alert_notifications : bool prop;  (** alert_notifications *)
  alerts_to_admins : bool prop;  (** alerts_to_admins *)
  email : string prop;  (** email *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  phone : string prop option; [@option]  (** phone *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_security_center_contact *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_security_center_contact ?id ?name ?phone ?timeouts
    ~alert_notifications ~alerts_to_admins ~email () :
    azurerm_security_center_contact =
  {
    alert_notifications;
    alerts_to_admins;
    email;
    id;
    name;
    phone;
    timeouts;
  }

type t = {
  alert_notifications : bool prop;
  alerts_to_admins : bool prop;
  email : string prop;
  id : string prop;
  name : string prop;
  phone : string prop;
}

let make ?id ?name ?phone ?timeouts ~alert_notifications
    ~alerts_to_admins ~email __id =
  let __type = "azurerm_security_center_contact" in
  let __attrs =
    ({
       alert_notifications =
         Prop.computed __type __id "alert_notifications";
       alerts_to_admins =
         Prop.computed __type __id "alerts_to_admins";
       email = Prop.computed __type __id "email";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       phone = Prop.computed __type __id "phone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_security_center_contact
        (azurerm_security_center_contact ?id ?name ?phone ?timeouts
           ~alert_notifications ~alerts_to_admins ~email ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?phone ?timeouts
    ~alert_notifications ~alerts_to_admins ~email __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?phone ?timeouts ~alert_notifications
      ~alerts_to_admins ~email __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
