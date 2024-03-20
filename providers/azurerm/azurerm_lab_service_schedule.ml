(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type recurrence = {
  expiration_date : string prop;  (** expiration_date *)
  frequency : string prop;  (** frequency *)
  interval : float prop option; [@option]  (** interval *)
  week_days : string prop list option; [@option]  (** week_days *)
}
[@@deriving yojson_of]
(** recurrence *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_lab_service_schedule = {
  id : string prop option; [@option]  (** id *)
  lab_id : string prop;  (** lab_id *)
  name : string prop;  (** name *)
  notes : string prop option; [@option]  (** notes *)
  start_time : string prop option; [@option]  (** start_time *)
  stop_time : string prop;  (** stop_time *)
  time_zone : string prop;  (** time_zone *)
  recurrence : recurrence list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_lab_service_schedule *)

let recurrence ?interval ?week_days ~expiration_date ~frequency () :
    recurrence =
  { expiration_date; frequency; interval; week_days }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_lab_service_schedule ?id ?notes ?start_time ?timeouts
    ~lab_id ~name ~stop_time ~time_zone ~recurrence () :
    azurerm_lab_service_schedule =
  {
    id;
    lab_id;
    name;
    notes;
    start_time;
    stop_time;
    time_zone;
    recurrence;
    timeouts;
  }

type t = {
  id : string prop;
  lab_id : string prop;
  name : string prop;
  notes : string prop;
  start_time : string prop;
  stop_time : string prop;
  time_zone : string prop;
}

let make ?id ?notes ?start_time ?timeouts ~lab_id ~name ~stop_time
    ~time_zone ~recurrence __id =
  let __type = "azurerm_lab_service_schedule" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       lab_id = Prop.computed __type __id "lab_id";
       name = Prop.computed __type __id "name";
       notes = Prop.computed __type __id "notes";
       start_time = Prop.computed __type __id "start_time";
       stop_time = Prop.computed __type __id "stop_time";
       time_zone = Prop.computed __type __id "time_zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_lab_service_schedule
        (azurerm_lab_service_schedule ?id ?notes ?start_time
           ?timeouts ~lab_id ~name ~stop_time ~time_zone ~recurrence
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?notes ?start_time ?timeouts ~lab_id
    ~name ~stop_time ~time_zone ~recurrence __id =
  let (r : _ Tf_core.resource) =
    make ?id ?notes ?start_time ?timeouts ~lab_id ~name ~stop_time
      ~time_zone ~recurrence __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
