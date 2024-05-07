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

type retry = {
  count : float prop;
  interval : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : retry) -> ()

let yojson_of_retry =
  (function
   | { count = v_count; interval = v_interval } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_float v_count in
         ("count", arg) :: bnds
       in
       `Assoc bnds
    : retry -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_retry

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

type trigger_dependency = {
  offset : string prop option; [@option]
  size : string prop option; [@option]
  trigger_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : trigger_dependency) -> ()

let yojson_of_trigger_dependency =
  (function
   | {
       offset = v_offset;
       size = v_size;
       trigger_name = v_trigger_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_trigger_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "trigger_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_offset with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "offset", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : trigger_dependency -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_trigger_dependency

[@@@deriving.end]

type azurerm_data_factory_trigger_tumbling_window = {
  activated : bool prop option; [@option]
  additional_properties : (string * string prop) list option;
      [@option]
  annotations : string prop list option; [@option]
  data_factory_id : string prop;
  delay : string prop option; [@option]
  description : string prop option; [@option]
  end_time : string prop option; [@option]
  frequency : string prop;
  id : string prop option; [@option]
  interval : float prop;
  max_concurrency : float prop option; [@option]
  name : string prop;
  start_time : string prop;
  pipeline : pipeline list;
  retry : retry list;
  timeouts : timeouts option;
  trigger_dependency : trigger_dependency list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_data_factory_trigger_tumbling_window) -> ()

let yojson_of_azurerm_data_factory_trigger_tumbling_window =
  (function
   | {
       activated = v_activated;
       additional_properties = v_additional_properties;
       annotations = v_annotations;
       data_factory_id = v_data_factory_id;
       delay = v_delay;
       description = v_description;
       end_time = v_end_time;
       frequency = v_frequency;
       id = v_id;
       interval = v_interval;
       max_concurrency = v_max_concurrency;
       name = v_name;
       start_time = v_start_time;
       pipeline = v_pipeline;
       retry = v_retry;
       timeouts = v_timeouts;
       trigger_dependency = v_trigger_dependency;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_trigger_dependency
             v_trigger_dependency
         in
         ("trigger_dependency", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_retry v_retry in
         ("retry", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_pipeline v_pipeline in
         ("pipeline", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_start_time in
         ("start_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_max_concurrency with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_concurrency", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_interval in
         ("interval", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_frequency in
         ("frequency", arg) :: bnds
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
         match v_delay with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delay", arg in
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
         match v_additional_properties with
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
             let bnd = "additional_properties", arg in
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
    : azurerm_data_factory_trigger_tumbling_window ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_data_factory_trigger_tumbling_window

[@@@deriving.end]

let pipeline ?parameters ~name () : pipeline = { name; parameters }
let retry ?interval ~count () : retry = { count; interval }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let trigger_dependency ?offset ?size ?trigger_name () :
    trigger_dependency =
  { offset; size; trigger_name }

let azurerm_data_factory_trigger_tumbling_window ?activated
    ?additional_properties ?annotations ?delay ?description ?end_time
    ?id ?max_concurrency ?(retry = []) ?timeouts ~data_factory_id
    ~frequency ~interval ~name ~start_time ~pipeline
    ~trigger_dependency () :
    azurerm_data_factory_trigger_tumbling_window =
  {
    activated;
    additional_properties;
    annotations;
    data_factory_id;
    delay;
    description;
    end_time;
    frequency;
    id;
    interval;
    max_concurrency;
    name;
    start_time;
    pipeline;
    retry;
    timeouts;
    trigger_dependency;
  }

type t = {
  tf_name : string;
  activated : bool prop;
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  data_factory_id : string prop;
  delay : string prop;
  description : string prop;
  end_time : string prop;
  frequency : string prop;
  id : string prop;
  interval : float prop;
  max_concurrency : float prop;
  name : string prop;
  start_time : string prop;
}

let make ?activated ?additional_properties ?annotations ?delay
    ?description ?end_time ?id ?max_concurrency ?(retry = [])
    ?timeouts ~data_factory_id ~frequency ~interval ~name ~start_time
    ~pipeline ~trigger_dependency __id =
  let __type = "azurerm_data_factory_trigger_tumbling_window" in
  let __attrs =
    ({
       tf_name = __id;
       activated = Prop.computed __type __id "activated";
       additional_properties =
         Prop.computed __type __id "additional_properties";
       annotations = Prop.computed __type __id "annotations";
       data_factory_id = Prop.computed __type __id "data_factory_id";
       delay = Prop.computed __type __id "delay";
       description = Prop.computed __type __id "description";
       end_time = Prop.computed __type __id "end_time";
       frequency = Prop.computed __type __id "frequency";
       id = Prop.computed __type __id "id";
       interval = Prop.computed __type __id "interval";
       max_concurrency = Prop.computed __type __id "max_concurrency";
       name = Prop.computed __type __id "name";
       start_time = Prop.computed __type __id "start_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_factory_trigger_tumbling_window
        (azurerm_data_factory_trigger_tumbling_window ?activated
           ?additional_properties ?annotations ?delay ?description
           ?end_time ?id ?max_concurrency ~retry ?timeouts
           ~data_factory_id ~frequency ~interval ~name ~start_time
           ~pipeline ~trigger_dependency ());
    attrs = __attrs;
  }

let register ?tf_module ?activated ?additional_properties
    ?annotations ?delay ?description ?end_time ?id ?max_concurrency
    ?(retry = []) ?timeouts ~data_factory_id ~frequency ~interval
    ~name ~start_time ~pipeline ~trigger_dependency __id =
  let (r : _ Tf_core.resource) =
    make ?activated ?additional_properties ?annotations ?delay
      ?description ?end_time ?id ?max_concurrency ~retry ?timeouts
      ~data_factory_id ~frequency ~interval ~name ~start_time
      ~pipeline ~trigger_dependency __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
