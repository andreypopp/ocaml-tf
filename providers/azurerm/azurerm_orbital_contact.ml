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

type azurerm_orbital_contact = {
  contact_profile_id : string prop;  (** contact_profile_id *)
  ground_station_name : string prop;  (** ground_station_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  reservation_end_time : string prop;  (** reservation_end_time *)
  reservation_start_time : string prop;
      (** reservation_start_time *)
  spacecraft_id : string prop;  (** spacecraft_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_orbital_contact *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_orbital_contact ?id ?timeouts ~contact_profile_id
    ~ground_station_name ~name ~reservation_end_time
    ~reservation_start_time ~spacecraft_id () :
    azurerm_orbital_contact =
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

type t = {
  contact_profile_id : string prop;
  ground_station_name : string prop;
  id : string prop;
  name : string prop;
  reservation_end_time : string prop;
  reservation_start_time : string prop;
  spacecraft_id : string prop;
}

let register ?tf_module ?id ?timeouts ~contact_profile_id
    ~ground_station_name ~name ~reservation_end_time
    ~reservation_start_time ~spacecraft_id __resource_id =
  let __resource_type = "azurerm_orbital_contact" in
  let __resource =
    azurerm_orbital_contact ?id ?timeouts ~contact_profile_id
      ~ground_station_name ~name ~reservation_end_time
      ~reservation_start_time ~spacecraft_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_orbital_contact __resource);
  let __resource_attributes =
    ({
       contact_profile_id =
         Prop.computed __resource_type __resource_id
           "contact_profile_id";
       ground_station_name =
         Prop.computed __resource_type __resource_id
           "ground_station_name";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       reservation_end_time =
         Prop.computed __resource_type __resource_id
           "reservation_end_time";
       reservation_start_time =
         Prop.computed __resource_type __resource_id
           "reservation_start_time";
       spacecraft_id =
         Prop.computed __resource_type __resource_id "spacecraft_id";
     }
      : t)
  in
  __resource_attributes
