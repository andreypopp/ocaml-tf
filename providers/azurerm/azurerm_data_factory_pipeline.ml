(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type azurerm_data_factory_pipeline = {
  activities_json : string prop option; [@option]
  annotations : string prop list option; [@option]
  concurrency : float prop option; [@option]
  data_factory_id : string prop;
  description : string prop option; [@option]
  folder : string prop option; [@option]
  id : string prop option; [@option]
  moniter_metrics_after_duration : string prop option; [@option]
  name : string prop;
  parameters : string prop Tf_core.assoc option; [@option]
  variables : string prop Tf_core.assoc option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_data_factory_pipeline) -> ()

let yojson_of_azurerm_data_factory_pipeline =
  (function
   | {
       activities_json = v_activities_json;
       annotations = v_annotations;
       concurrency = v_concurrency;
       data_factory_id = v_data_factory_id;
       description = v_description;
       folder = v_folder;
       id = v_id;
       moniter_metrics_after_duration =
         v_moniter_metrics_after_duration;
       name = v_name;
       parameters = v_parameters;
       variables = v_variables;
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
         match v_variables with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "variables", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_moniter_metrics_after_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "moniter_metrics_after_duration", arg in
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
         match v_folder with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "folder", arg in
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
         match v_concurrency with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "concurrency", arg in
             bnd :: bnds
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
         match v_activities_json with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "activities_json", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_data_factory_pipeline ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_data_factory_pipeline

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_data_factory_pipeline ?activities_json ?annotations
    ?concurrency ?description ?folder ?id
    ?moniter_metrics_after_duration ?parameters ?variables ?timeouts
    ~data_factory_id ~name () : azurerm_data_factory_pipeline =
  {
    activities_json;
    annotations;
    concurrency;
    data_factory_id;
    description;
    folder;
    id;
    moniter_metrics_after_duration;
    name;
    parameters;
    variables;
    timeouts;
  }

type t = {
  tf_name : string;
  activities_json : string prop;
  annotations : string list prop;
  concurrency : float prop;
  data_factory_id : string prop;
  description : string prop;
  folder : string prop;
  id : string prop;
  moniter_metrics_after_duration : string prop;
  name : string prop;
  parameters : string Tf_core.assoc prop;
  variables : string Tf_core.assoc prop;
}

let make ?activities_json ?annotations ?concurrency ?description
    ?folder ?id ?moniter_metrics_after_duration ?parameters
    ?variables ?timeouts ~data_factory_id ~name __id =
  let __type = "azurerm_data_factory_pipeline" in
  let __attrs =
    ({
       tf_name = __id;
       activities_json = Prop.computed __type __id "activities_json";
       annotations = Prop.computed __type __id "annotations";
       concurrency = Prop.computed __type __id "concurrency";
       data_factory_id = Prop.computed __type __id "data_factory_id";
       description = Prop.computed __type __id "description";
       folder = Prop.computed __type __id "folder";
       id = Prop.computed __type __id "id";
       moniter_metrics_after_duration =
         Prop.computed __type __id "moniter_metrics_after_duration";
       name = Prop.computed __type __id "name";
       parameters = Prop.computed __type __id "parameters";
       variables = Prop.computed __type __id "variables";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_factory_pipeline
        (azurerm_data_factory_pipeline ?activities_json ?annotations
           ?concurrency ?description ?folder ?id
           ?moniter_metrics_after_duration ?parameters ?variables
           ?timeouts ~data_factory_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?activities_json ?annotations ?concurrency
    ?description ?folder ?id ?moniter_metrics_after_duration
    ?parameters ?variables ?timeouts ~data_factory_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?activities_json ?annotations ?concurrency ?description
      ?folder ?id ?moniter_metrics_after_duration ?parameters
      ?variables ?timeouts ~data_factory_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
