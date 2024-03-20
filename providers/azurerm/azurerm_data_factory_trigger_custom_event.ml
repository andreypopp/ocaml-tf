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

type azurerm_data_factory_trigger_custom_event = {
  activated : bool prop option; [@option]
  additional_properties : (string * string prop) list option;
      [@option]
  annotations : string prop list option; [@option]
  data_factory_id : string prop;
  description : string prop option; [@option]
  eventgrid_topic_id : string prop;
  events : string prop list;
  id : string prop option; [@option]
  name : string prop;
  subject_begins_with : string prop option; [@option]
  subject_ends_with : string prop option; [@option]
  pipeline : pipeline list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_data_factory_trigger_custom_event) -> ()

let yojson_of_azurerm_data_factory_trigger_custom_event =
  (function
   | {
       activated = v_activated;
       additional_properties = v_additional_properties;
       annotations = v_annotations;
       data_factory_id = v_data_factory_id;
       description = v_description;
       eventgrid_topic_id = v_eventgrid_topic_id;
       events = v_events;
       id = v_id;
       name = v_name;
       subject_begins_with = v_subject_begins_with;
       subject_ends_with = v_subject_ends_with;
       pipeline = v_pipeline;
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
         let arg = yojson_of_list yojson_of_pipeline v_pipeline in
         ("pipeline", arg) :: bnds
       in
       let bnds =
         match v_subject_ends_with with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subject_ends_with", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subject_begins_with with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subject_begins_with", arg in
             bnd :: bnds
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
           yojson_of_list (yojson_of_prop yojson_of_string) v_events
         in
         ("events", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_eventgrid_topic_id
         in
         ("eventgrid_topic_id", arg) :: bnds
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
    : azurerm_data_factory_trigger_custom_event ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_data_factory_trigger_custom_event

[@@@deriving.end]

let pipeline ?parameters ~name () : pipeline = { name; parameters }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_data_factory_trigger_custom_event ?activated
    ?additional_properties ?annotations ?description ?id
    ?subject_begins_with ?subject_ends_with ?timeouts
    ~data_factory_id ~eventgrid_topic_id ~events ~name ~pipeline () :
    azurerm_data_factory_trigger_custom_event =
  {
    activated;
    additional_properties;
    annotations;
    data_factory_id;
    description;
    eventgrid_topic_id;
    events;
    id;
    name;
    subject_begins_with;
    subject_ends_with;
    pipeline;
    timeouts;
  }

type t = {
  activated : bool prop;
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  data_factory_id : string prop;
  description : string prop;
  eventgrid_topic_id : string prop;
  events : string list prop;
  id : string prop;
  name : string prop;
  subject_begins_with : string prop;
  subject_ends_with : string prop;
}

let make ?activated ?additional_properties ?annotations ?description
    ?id ?subject_begins_with ?subject_ends_with ?timeouts
    ~data_factory_id ~eventgrid_topic_id ~events ~name ~pipeline __id
    =
  let __type = "azurerm_data_factory_trigger_custom_event" in
  let __attrs =
    ({
       activated = Prop.computed __type __id "activated";
       additional_properties =
         Prop.computed __type __id "additional_properties";
       annotations = Prop.computed __type __id "annotations";
       data_factory_id = Prop.computed __type __id "data_factory_id";
       description = Prop.computed __type __id "description";
       eventgrid_topic_id =
         Prop.computed __type __id "eventgrid_topic_id";
       events = Prop.computed __type __id "events";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       subject_begins_with =
         Prop.computed __type __id "subject_begins_with";
       subject_ends_with =
         Prop.computed __type __id "subject_ends_with";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_factory_trigger_custom_event
        (azurerm_data_factory_trigger_custom_event ?activated
           ?additional_properties ?annotations ?description ?id
           ?subject_begins_with ?subject_ends_with ?timeouts
           ~data_factory_id ~eventgrid_topic_id ~events ~name
           ~pipeline ());
    attrs = __attrs;
  }

let register ?tf_module ?activated ?additional_properties
    ?annotations ?description ?id ?subject_begins_with
    ?subject_ends_with ?timeouts ~data_factory_id ~eventgrid_topic_id
    ~events ~name ~pipeline __id =
  let (r : _ Tf_core.resource) =
    make ?activated ?additional_properties ?annotations ?description
      ?id ?subject_begins_with ?subject_ends_with ?timeouts
      ~data_factory_id ~eventgrid_topic_id ~events ~name ~pipeline
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
