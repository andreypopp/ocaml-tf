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

let register ?tf_module ?id ?name ?phone ?timeouts
    ~alert_notifications ~alerts_to_admins ~email __resource_id =
  let __resource_type = "azurerm_security_center_contact" in
  let __resource =
    azurerm_security_center_contact ?id ?name ?phone ?timeouts
      ~alert_notifications ~alerts_to_admins ~email ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_security_center_contact __resource);
  let __resource_attributes =
    ({
       alert_notifications =
         Prop.computed __resource_type __resource_id
           "alert_notifications";
       alerts_to_admins =
         Prop.computed __resource_type __resource_id
           "alerts_to_admins";
       email = Prop.computed __resource_type __resource_id "email";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       phone = Prop.computed __resource_type __resource_id "phone";
     }
      : t)
  in
  __resource_attributes
