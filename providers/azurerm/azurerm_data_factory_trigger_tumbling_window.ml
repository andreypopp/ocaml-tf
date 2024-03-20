(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type pipeline = {
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
}
[@@deriving yojson_of]
(** pipeline *)

type retry = {
  count : float prop;  (** count *)
  interval : float prop option; [@option]  (** interval *)
}
[@@deriving yojson_of]
(** retry *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type trigger_dependency = {
  offset : string prop option; [@option]  (** offset *)
  size : string prop option; [@option]  (** size *)
  trigger_name : string prop option; [@option]  (** trigger_name *)
}
[@@deriving yojson_of]
(** trigger_dependency *)

type azurerm_data_factory_trigger_tumbling_window = {
  activated : bool prop option; [@option]  (** activated *)
  additional_properties : (string * string prop) list option;
      [@option]
      (** additional_properties *)
  annotations : string prop list option; [@option]
      (** annotations *)
  data_factory_id : string prop;  (** data_factory_id *)
  delay : string prop option; [@option]  (** delay *)
  description : string prop option; [@option]  (** description *)
  end_time : string prop option; [@option]  (** end_time *)
  frequency : string prop;  (** frequency *)
  id : string prop option; [@option]  (** id *)
  interval : float prop;  (** interval *)
  max_concurrency : float prop option; [@option]
      (** max_concurrency *)
  name : string prop;  (** name *)
  start_time : string prop;  (** start_time *)
  pipeline : pipeline list;
  retry : retry list;
  timeouts : timeouts option;
  trigger_dependency : trigger_dependency list;
}
[@@deriving yojson_of]
(** azurerm_data_factory_trigger_tumbling_window *)

let pipeline ?parameters ~name () : pipeline = { name; parameters }
let retry ?interval ~count () : retry = { count; interval }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let trigger_dependency ?offset ?size ?trigger_name () :
    trigger_dependency =
  { offset; size; trigger_name }

let azurerm_data_factory_trigger_tumbling_window ?activated
    ?additional_properties ?annotations ?delay ?description ?end_time
    ?id ?max_concurrency ?timeouts ~data_factory_id ~frequency
    ~interval ~name ~start_time ~pipeline ~retry ~trigger_dependency
    () : azurerm_data_factory_trigger_tumbling_window =
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
    ?description ?end_time ?id ?max_concurrency ?timeouts
    ~data_factory_id ~frequency ~interval ~name ~start_time ~pipeline
    ~retry ~trigger_dependency __id =
  let __type = "azurerm_data_factory_trigger_tumbling_window" in
  let __attrs =
    ({
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
           ?end_time ?id ?max_concurrency ?timeouts ~data_factory_id
           ~frequency ~interval ~name ~start_time ~pipeline ~retry
           ~trigger_dependency ());
    attrs = __attrs;
  }

let register ?tf_module ?activated ?additional_properties
    ?annotations ?delay ?description ?end_time ?id ?max_concurrency
    ?timeouts ~data_factory_id ~frequency ~interval ~name ~start_time
    ~pipeline ~retry ~trigger_dependency __id =
  let (r : _ Tf_core.resource) =
    make ?activated ?additional_properties ?annotations ?delay
      ?description ?end_time ?id ?max_concurrency ?timeouts
      ~data_factory_id ~frequency ~interval ~name ~start_time
      ~pipeline ~retry ~trigger_dependency __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
