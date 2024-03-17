(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_security_center_contact__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_security_center_contact__timeouts *)

type azurerm_security_center_contact = {
  alert_notifications : bool;  (** alert_notifications *)
  alerts_to_admins : bool;  (** alerts_to_admins *)
  email : string;  (** email *)
  name : string option; [@option]  (** name *)
  phone : string option; [@option]  (** phone *)
  timeouts : azurerm_security_center_contact__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_security_center_contact *)

let azurerm_security_center_contact ?name ?phone ?timeouts
    ~alert_notifications ~alerts_to_admins ~email __resource_id =
  let __resource_type = "azurerm_security_center_contact" in
  let __resource =
    {
      alert_notifications;
      alerts_to_admins;
      email;
      name;
      phone;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_security_center_contact __resource);
  ()
