(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_orbital_contact__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_orbital_contact__timeouts *)

type azurerm_orbital_contact = {
  contact_profile_id : string prop;  (** contact_profile_id *)
  ground_station_name : string prop;  (** ground_station_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  reservation_end_time : string prop;  (** reservation_end_time *)
  reservation_start_time : string prop;
      (** reservation_start_time *)
  spacecraft_id : string prop;  (** spacecraft_id *)
  timeouts : azurerm_orbital_contact__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_orbital_contact *)

let azurerm_orbital_contact ?id ?timeouts ~contact_profile_id
    ~ground_station_name ~name ~reservation_end_time
    ~reservation_start_time ~spacecraft_id __resource_id =
  let __resource_type = "azurerm_orbital_contact" in
  let __resource =
    {
      contact_profile_id;
      ground_station_name;
      id;
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
