(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type labels = {
  description : string prop option; [@option]
  key : string prop;
  value_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : labels) -> ()

let yojson_of_labels =
  (function
   | {
       description = v_description;
       key = v_key;
       value_type = v_value_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : labels -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_labels

[@@@deriving.end]

type metadata = {
  ingest_delay : string prop option; [@option]
  sample_period : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : metadata) -> ()

let yojson_of_metadata =
  (function
   | {
       ingest_delay = v_ingest_delay;
       sample_period = v_sample_period;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_sample_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sample_period", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ingest_delay with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ingest_delay", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : metadata -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metadata

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
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

type google_monitoring_metric_descriptor = {
  description : string prop;
  display_name : string prop;
  id : string prop option; [@option]
  launch_stage : string prop option; [@option]
  metric_kind : string prop;
  project : string prop option; [@option]
  type_ : string prop; [@key "type"]
  unit : string prop option; [@option]
  value_type : string prop;
  labels : labels list;
  metadata : metadata list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_monitoring_metric_descriptor) -> ()

let yojson_of_google_monitoring_metric_descriptor =
  (function
   | {
       description = v_description;
       display_name = v_display_name;
       id = v_id;
       launch_stage = v_launch_stage;
       metric_kind = v_metric_kind;
       project = v_project;
       type_ = v_type_;
       unit = v_unit;
       value_type = v_value_type;
       labels = v_labels;
       metadata = v_metadata;
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
         let arg = yojson_of_list yojson_of_metadata v_metadata in
         ("metadata", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_labels v_labels in
         ("labels", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value_type in
         ("value_type", arg) :: bnds
       in
       let bnds =
         match v_unit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "unit", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_metric_kind in
         ("metric_kind", arg) :: bnds
       in
       let bnds =
         match v_launch_stage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "launch_stage", arg in
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
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : google_monitoring_metric_descriptor ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_monitoring_metric_descriptor

[@@@deriving.end]

let labels ?description ?value_type ~key () : labels =
  { description; key; value_type }

let metadata ?ingest_delay ?sample_period () : metadata =
  { ingest_delay; sample_period }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_monitoring_metric_descriptor ?id ?launch_stage ?project
    ?unit ?(metadata = []) ?timeouts ~description ~display_name
    ~metric_kind ~type_ ~value_type ~labels () :
    google_monitoring_metric_descriptor =
  {
    description;
    display_name;
    id;
    launch_stage;
    metric_kind;
    project;
    type_;
    unit;
    value_type;
    labels;
    metadata;
    timeouts;
  }

type t = {
  description : string prop;
  display_name : string prop;
  id : string prop;
  launch_stage : string prop;
  metric_kind : string prop;
  monitored_resource_types : string list prop;
  name : string prop;
  project : string prop;
  type_ : string prop;
  unit : string prop;
  value_type : string prop;
}

let make ?id ?launch_stage ?project ?unit ?(metadata = []) ?timeouts
    ~description ~display_name ~metric_kind ~type_ ~value_type
    ~labels __id =
  let __type = "google_monitoring_metric_descriptor" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       launch_stage = Prop.computed __type __id "launch_stage";
       metric_kind = Prop.computed __type __id "metric_kind";
       monitored_resource_types =
         Prop.computed __type __id "monitored_resource_types";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       type_ = Prop.computed __type __id "type";
       unit = Prop.computed __type __id "unit";
       value_type = Prop.computed __type __id "value_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_monitoring_metric_descriptor
        (google_monitoring_metric_descriptor ?id ?launch_stage
           ?project ?unit ~metadata ?timeouts ~description
           ~display_name ~metric_kind ~type_ ~value_type ~labels ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?launch_stage ?project ?unit
    ?(metadata = []) ?timeouts ~description ~display_name
    ~metric_kind ~type_ ~value_type ~labels __id =
  let (r : _ Tf_core.resource) =
    make ?id ?launch_stage ?project ?unit ~metadata ?timeouts
      ~description ~display_name ~metric_kind ~type_ ~value_type
      ~labels __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
