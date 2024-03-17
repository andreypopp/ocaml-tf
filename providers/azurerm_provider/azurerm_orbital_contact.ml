(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_orbital_contact__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_orbital_contact__timeouts *)

type azurerm_orbital_contact = {
  contact_profile_id : string;  (** contact_profile_id *)
  ground_station_name : string;  (** ground_station_name *)
  name : string;  (** name *)
  reservation_end_time : string;  (** reservation_end_time *)
  reservation_start_time : string;  (** reservation_start_time *)
  spacecraft_id : string;  (** spacecraft_id *)
  timeouts : azurerm_orbital_contact__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_orbital_contact *)

let azurerm_orbital_contact ?timeouts ~contact_profile_id
    ~ground_station_name ~name ~reservation_end_time
    ~reservation_start_time ~spacecraft_id __resource_id =
  let __resource_type = "azurerm_orbital_contact" in
  let __resource =
    {
      contact_profile_id;
      ground_station_name;
      name;
      reservation_end_time;
      reservation_start_time;
      spacecraft_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_orbital_contact __resource);
  ()
