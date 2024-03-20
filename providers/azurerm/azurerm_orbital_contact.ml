(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_orbital_contact = {
  contact_profile_id : string prop;
  ground_station_name : string prop;
  id : string prop option; [@option]
  name : string prop;
  reservation_end_time : string prop;
  reservation_start_time : string prop;
  spacecraft_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_orbital_contact) -> ()

let yojson_of_azurerm_orbital_contact =
  (function
   | {
       contact_profile_id = v_contact_profile_id;
       ground_station_name = v_ground_station_name;
       id = v_id;
       name = v_name;
       reservation_end_time = v_reservation_end_time;
       reservation_start_time = v_reservation_start_time;
       spacecraft_id = v_spacecraft_id;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_spacecraft_id in
         ("spacecraft_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_reservation_start_time
         in
         ("reservation_start_time", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_reservation_end_time
         in
         ("reservation_end_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ground_station_name
         in
         ("ground_station_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_contact_profile_id
         in
         ("contact_profile_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_orbital_contact -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_orbital_contact

[@@@deriving.end]

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
