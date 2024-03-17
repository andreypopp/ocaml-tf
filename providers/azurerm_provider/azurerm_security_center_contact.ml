(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_security_center_contact__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_security_center_contact__timeouts *)

type azurerm_security_center_contact = {
  alert_notifications : bool prop;  (** alert_notifications *)
  alerts_to_admins : bool prop;  (** alerts_to_admins *)
  email : string prop;  (** email *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  phone : string prop option; [@option]  (** phone *)
  timeouts : azurerm_security_center_contact__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_security_center_contact *)

let azurerm_security_center_contact ?id ?name ?phone ?timeouts
    ~alert_notifications ~alerts_to_admins ~email __resource_id =
  let __resource_type = "azurerm_security_center_contact" in
  let __resource =
    {
      alert_notifications;
      alerts_to_admins;
      email;
      id;
      name;
      phone;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_security_center_contact __resource);
  ()
