(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?timeouts ~contact_profile_id ~ground_station_name ~name
    ~reservation_end_time ~reservation_start_time ~spacecraft_id __id
    =
  let __type = "azurerm_orbital_contact" in
  let __attrs =
    ({
       contact_profile_id =
         Prop.computed __type __id "contact_profile_id";
       ground_station_name =
         Prop.computed __type __id "ground_station_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       reservation_end_time =
         Prop.computed __type __id "reservation_end_time";
       reservation_start_time =
         Prop.computed __type __id "reservation_start_time";
       spacecraft_id = Prop.computed __type __id "spacecraft_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_orbital_contact
        (azurerm_orbital_contact ?id ?timeouts ~contact_profile_id
           ~ground_station_name ~name ~reservation_end_time
           ~reservation_start_time ~spacecraft_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~contact_profile_id
    ~ground_station_name ~name ~reservation_end_time
    ~reservation_start_time ~spacecraft_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~contact_profile_id ~ground_station_name ~name
      ~reservation_end_time ~reservation_start_time ~spacecraft_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
