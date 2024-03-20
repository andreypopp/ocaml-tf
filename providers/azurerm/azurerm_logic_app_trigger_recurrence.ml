(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type schedule = {
  at_these_hours : float prop list option; [@option]
      (** at_these_hours *)
  at_these_minutes : float prop list option; [@option]
      (** at_these_minutes *)
  on_these_days : string prop list option; [@option]
      (** on_these_days *)
}
[@@deriving yojson_of]
(** schedule *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_logic_app_trigger_recurrence = {
  frequency : string prop;  (** frequency *)
  id : string prop option; [@option]  (** id *)
  interval : float prop;  (** interval *)
  logic_app_id : string prop;  (** logic_app_id *)
  name : string prop;  (** name *)
  start_time : string prop option; [@option]  (** start_time *)
  time_zone : string prop option; [@option]  (** time_zone *)
  schedule : schedule list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_logic_app_trigger_recurrence *)

let schedule ?at_these_hours ?at_these_minutes ?on_these_days () :
    schedule =
  { at_these_hours; at_these_minutes; on_these_days }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_logic_app_trigger_recurrence ?id ?start_time ?time_zone
    ?timeouts ~frequency ~interval ~logic_app_id ~name ~schedule () :
    azurerm_logic_app_trigger_recurrence =
  {
    frequency;
    id;
    interval;
    logic_app_id;
    name;
    start_time;
    time_zone;
    schedule;
    timeouts;
  }

type t = {
  frequency : string prop;
  id : string prop;
  interval : float prop;
  logic_app_id : string prop;
  name : string prop;
  start_time : string prop;
  time_zone : string prop;
}

let make ?id ?start_time ?time_zone ?timeouts ~frequency ~interval
    ~logic_app_id ~name ~schedule __id =
  let __type = "azurerm_logic_app_trigger_recurrence" in
  let __attrs =
    ({
       frequency = Prop.computed __type __id "frequency";
       id = Prop.computed __type __id "id";
       interval = Prop.computed __type __id "interval";
       logic_app_id = Prop.computed __type __id "logic_app_id";
       name = Prop.computed __type __id "name";
       start_time = Prop.computed __type __id "start_time";
       time_zone = Prop.computed __type __id "time_zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_logic_app_trigger_recurrence
        (azurerm_logic_app_trigger_recurrence ?id ?start_time
           ?time_zone ?timeouts ~frequency ~interval ~logic_app_id
           ~name ~schedule ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?start_time ?time_zone ?timeouts
    ~frequency ~interval ~logic_app_id ~name ~schedule __id =
  let (r : _ Tf_core.resource) =
    make ?id ?start_time ?time_zone ?timeouts ~frequency ~interval
      ~logic_app_id ~name ~schedule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
