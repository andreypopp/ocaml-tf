(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type pipeline = {
  name : string prop;
  parameters : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : pipeline) -> ()

let yojson_of_pipeline =
  (function
   | { name = v_name; parameters = v_parameters } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : pipeline -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_pipeline

[@@@deriving.end]

type schedule__monthly = {
  week : float prop option; [@option]
  weekday : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : schedule__monthly) -> ()

let yojson_of_schedule__monthly =
  (function
   | { week = v_week; weekday = v_weekday } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_weekday in
         ("weekday", arg) :: bnds
       in
       let bnds =
         match v_week with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "week", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : schedule__monthly -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schedule__monthly

[@@@deriving.end]

type schedule = {
  days_of_month : float prop list option; [@option]
  days_of_week : string prop list option; [@option]
  hours : float prop list option; [@option]
  minutes : float prop list option; [@option]
  monthly : schedule__monthly list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : schedule) -> ()

let yojson_of_schedule =
  (function
   | {
       days_of_month = v_days_of_month;
       days_of_week = v_days_of_week;
       hours = v_hours;
       minutes = v_minutes;
       monthly = v_monthly;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_monthly then bnds
         else
           let arg =
             (yojson_of_list yojson_of_schedule__monthly) v_monthly
           in
           let bnd = "monthly", arg in
           bnd :: bnds
       in
       let bnds =
         match v_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "minutes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hours with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "hours", arg in
             bnd :: bnds
       in
       let bnds =
         match v_days_of_week with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "days_of_week", arg in
             bnd :: bnds
       in
       let bnds =
         match v_days_of_month with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "days_of_month", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : schedule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schedule

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
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

type azurerm_data_factory_trigger_schedule = {
  activated : bool prop option; [@option]
  annotations : string prop list option; [@option]
  data_factory_id : string prop;
  description : string prop option; [@option]
  end_time : string prop option; [@option]
  frequency : string prop option; [@option]
  id : string prop option; [@option]
  interval : float prop option; [@option]
  name : string prop;
  pipeline_name : string prop option; [@option]
  pipeline_parameters : (string * string prop) list option; [@option]
  start_time : string prop option; [@option]
  time_zone : string prop option; [@option]
  pipeline : pipeline list;
      [@default []] [@yojson_drop_default ( = )]
  schedule : schedule list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_data_factory_trigger_schedule) -> ()

let yojson_of_azurerm_data_factory_trigger_schedule =
  (function
   | {
       activated = v_activated;
       annotations = v_annotations;
       data_factory_id = v_data_factory_id;
       description = v_description;
       end_time = v_end_time;
       frequency = v_frequency;
       id = v_id;
       interval = v_interval;
       name = v_name;
       pipeline_name = v_pipeline_name;
       pipeline_parameters = v_pipeline_parameters;
       start_time = v_start_time;
       time_zone = v_time_zone;
       pipeline = v_pipeline;
       schedule = v_schedule;
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
         if [] = v_schedule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_schedule) v_schedule
           in
           let bnd = "schedule", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_pipeline then bnds
         else
           let arg =
             (yojson_of_list yojson_of_pipeline) v_pipeline
           in
           let bnd = "pipeline", arg in
           bnd :: bnds
       in
       let bnds =
         match v_time_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "time_zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_start_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pipeline_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "pipeline_parameters", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pipeline_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pipeline_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "interval", arg in
             bnd :: bnds
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
         match v_frequency with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "frequency", arg in
             bnd :: bnds
       in
       let bnds =
         match v_end_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "end_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_data_factory_id
         in
         ("data_factory_id", arg) :: bnds
       in
       let bnds =
         match v_annotations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "annotations", arg in
             bnd :: bnds
       in
       let bnds =
         match v_activated with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "activated", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_data_factory_trigger_schedule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_data_factory_trigger_schedule

[@@@deriving.end]

let pipeline ?parameters ~name () : pipeline = { name; parameters }

let schedule__monthly ?week ~weekday () : schedule__monthly =
  { week; weekday }

let schedule ?days_of_month ?days_of_week ?hours ?minutes
    ?(monthly = []) () : schedule =
  { days_of_month; days_of_week; hours; minutes; monthly }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_data_factory_trigger_schedule ?activated ?annotations
    ?description ?end_time ?frequency ?id ?interval ?pipeline_name
    ?pipeline_parameters ?start_time ?time_zone ?(pipeline = [])
    ?(schedule = []) ?timeouts ~data_factory_id ~name () :
    azurerm_data_factory_trigger_schedule =
  {
    activated;
    annotations;
    data_factory_id;
    description;
    end_time;
    frequency;
    id;
    interval;
    name;
    pipeline_name;
    pipeline_parameters;
    start_time;
    time_zone;
    pipeline;
    schedule;
    timeouts;
  }

type t = {
  tf_name : string;
  activated : bool prop;
  annotations : string list prop;
  data_factory_id : string prop;
  description : string prop;
  end_time : string prop;
  frequency : string prop;
  id : string prop;
  interval : float prop;
  name : string prop;
  pipeline_name : string prop;
  pipeline_parameters : (string * string) list prop;
  start_time : string prop;
  time_zone : string prop;
}

let make ?activated ?annotations ?description ?end_time ?frequency
    ?id ?interval ?pipeline_name ?pipeline_parameters ?start_time
    ?time_zone ?(pipeline = []) ?(schedule = []) ?timeouts
    ~data_factory_id ~name __id =
  let __type = "azurerm_data_factory_trigger_schedule" in
  let __attrs =
    ({
       tf_name = __id;
       activated = Prop.computed __type __id "activated";
       annotations = Prop.computed __type __id "annotations";
       data_factory_id = Prop.computed __type __id "data_factory_id";
       description = Prop.computed __type __id "description";
       end_time = Prop.computed __type __id "end_time";
       frequency = Prop.computed __type __id "frequency";
       id = Prop.computed __type __id "id";
       interval = Prop.computed __type __id "interval";
       name = Prop.computed __type __id "name";
       pipeline_name = Prop.computed __type __id "pipeline_name";
       pipeline_parameters =
         Prop.computed __type __id "pipeline_parameters";
       start_time = Prop.computed __type __id "start_time";
       time_zone = Prop.computed __type __id "time_zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_factory_trigger_schedule
        (azurerm_data_factory_trigger_schedule ?activated
           ?annotations ?description ?end_time ?frequency ?id
           ?interval ?pipeline_name ?pipeline_parameters ?start_time
           ?time_zone ~pipeline ~schedule ?timeouts ~data_factory_id
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?activated ?annotations ?description
    ?end_time ?frequency ?id ?interval ?pipeline_name
    ?pipeline_parameters ?start_time ?time_zone ?(pipeline = [])
    ?(schedule = []) ?timeouts ~data_factory_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?activated ?annotations ?description ?end_time ?frequency
      ?id ?interval ?pipeline_name ?pipeline_parameters ?start_time
      ?time_zone ~pipeline ~schedule ?timeouts ~data_factory_id ~name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
