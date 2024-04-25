(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type default_version = { name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : default_version) -> ()

let yojson_of_default_version =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : default_version -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_version

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

type google_ml_engine_model = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  name : string prop;
  online_prediction_console_logging : bool prop option; [@option]
  online_prediction_logging : bool prop option; [@option]
  project : string prop option; [@option]
  regions : string prop list option; [@option]
  default_version : default_version list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_ml_engine_model) -> ()

let yojson_of_google_ml_engine_model =
  (function
   | {
       description = v_description;
       id = v_id;
       labels = v_labels;
       name = v_name;
       online_prediction_console_logging =
         v_online_prediction_console_logging;
       online_prediction_logging = v_online_prediction_logging;
       project = v_project;
       regions = v_regions;
       default_version = v_default_version;
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
         let arg =
           yojson_of_list yojson_of_default_version v_default_version
         in
         ("default_version", arg) :: bnds
       in
       let bnds =
         match v_regions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "regions", arg in
             bnd :: bnds
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
         match v_online_prediction_logging with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "online_prediction_logging", arg in
             bnd :: bnds
       in
       let bnds =
         match v_online_prediction_console_logging with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "online_prediction_console_logging", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_labels with
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
             let bnd = "labels", arg in
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_ml_engine_model -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_ml_engine_model

[@@@deriving.end]

let default_version ~name () : default_version = { name }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_ml_engine_model ?description ?id ?labels
    ?online_prediction_console_logging ?online_prediction_logging
    ?project ?regions ?(default_version = []) ?timeouts ~name () :
    google_ml_engine_model =
  {
    description;
    id;
    labels;
    name;
    online_prediction_console_logging;
    online_prediction_logging;
    project;
    regions;
    default_version;
    timeouts;
  }

type t = {
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  online_prediction_console_logging : bool prop;
  online_prediction_logging : bool prop;
  project : string prop;
  regions : string list prop;
  terraform_labels : (string * string) list prop;
}

let make ?description ?id ?labels ?online_prediction_console_logging
    ?online_prediction_logging ?project ?regions
    ?(default_version = []) ?timeouts ~name __id =
  let __type = "google_ml_engine_model" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       online_prediction_console_logging =
         Prop.computed __type __id
           "online_prediction_console_logging";
       online_prediction_logging =
         Prop.computed __type __id "online_prediction_logging";
       project = Prop.computed __type __id "project";
       regions = Prop.computed __type __id "regions";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_ml_engine_model
        (google_ml_engine_model ?description ?id ?labels
           ?online_prediction_console_logging
           ?online_prediction_logging ?project ?regions
           ~default_version ?timeouts ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?labels
    ?online_prediction_console_logging ?online_prediction_logging
    ?project ?regions ?(default_version = []) ?timeouts ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?labels ?online_prediction_console_logging
      ?online_prediction_logging ?project ?regions ~default_version
      ?timeouts ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
