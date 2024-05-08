(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type monitoring_config__categorical_threshold_config = {
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : monitoring_config__categorical_threshold_config) -> ()

let yojson_of_monitoring_config__categorical_threshold_config =
  (function
   | { value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       `Assoc bnds
    : monitoring_config__categorical_threshold_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_monitoring_config__categorical_threshold_config

[@@@deriving.end]

type monitoring_config__import_features_analysis = {
  anomaly_detection_baseline : string prop option; [@option]
  state : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : monitoring_config__import_features_analysis) -> ()

let yojson_of_monitoring_config__import_features_analysis =
  (function
   | {
       anomaly_detection_baseline = v_anomaly_detection_baseline;
       state = v_state;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "state", arg in
             bnd :: bnds
       in
       let bnds =
         match v_anomaly_detection_baseline with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "anomaly_detection_baseline", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : monitoring_config__import_features_analysis ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_monitoring_config__import_features_analysis

[@@@deriving.end]

type monitoring_config__numerical_threshold_config = {
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : monitoring_config__numerical_threshold_config) -> ()

let yojson_of_monitoring_config__numerical_threshold_config =
  (function
   | { value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       `Assoc bnds
    : monitoring_config__numerical_threshold_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_monitoring_config__numerical_threshold_config

[@@@deriving.end]

type monitoring_config__snapshot_analysis = {
  disabled : bool prop option; [@option]
  monitoring_interval_days : float prop option; [@option]
  staleness_days : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : monitoring_config__snapshot_analysis) -> ()

let yojson_of_monitoring_config__snapshot_analysis =
  (function
   | {
       disabled = v_disabled;
       monitoring_interval_days = v_monitoring_interval_days;
       staleness_days = v_staleness_days;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_staleness_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "staleness_days", arg in
             bnd :: bnds
       in
       let bnds =
         match v_monitoring_interval_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "monitoring_interval_days", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : monitoring_config__snapshot_analysis ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_monitoring_config__snapshot_analysis

[@@@deriving.end]

type monitoring_config = {
  categorical_threshold_config :
    monitoring_config__categorical_threshold_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  import_features_analysis :
    monitoring_config__import_features_analysis list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  numerical_threshold_config :
    monitoring_config__numerical_threshold_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  snapshot_analysis : monitoring_config__snapshot_analysis list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : monitoring_config) -> ()

let yojson_of_monitoring_config =
  (function
   | {
       categorical_threshold_config = v_categorical_threshold_config;
       import_features_analysis = v_import_features_analysis;
       numerical_threshold_config = v_numerical_threshold_config;
       snapshot_analysis = v_snapshot_analysis;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_snapshot_analysis then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_monitoring_config__snapshot_analysis)
               v_snapshot_analysis
           in
           let bnd = "snapshot_analysis", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_numerical_threshold_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_monitoring_config__numerical_threshold_config)
               v_numerical_threshold_config
           in
           let bnd = "numerical_threshold_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_import_features_analysis then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_monitoring_config__import_features_analysis)
               v_import_features_analysis
           in
           let bnd = "import_features_analysis", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_categorical_threshold_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_monitoring_config__categorical_threshold_config)
               v_categorical_threshold_config
           in
           let bnd = "categorical_threshold_config", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : monitoring_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_monitoring_config

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

type google_vertex_ai_featurestore_entitytype = {
  description : string prop option; [@option]
  featurestore : string prop;
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  name : string prop option; [@option]
  monitoring_config : monitoring_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_vertex_ai_featurestore_entitytype) -> ()

let yojson_of_google_vertex_ai_featurestore_entitytype =
  (function
   | {
       description = v_description;
       featurestore = v_featurestore;
       id = v_id;
       labels = v_labels;
       name = v_name;
       monitoring_config = v_monitoring_config;
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
         if Stdlib.( = ) [] v_monitoring_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_monitoring_config)
               v_monitoring_config
           in
           let bnd = "monitoring_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_featurestore in
         ("featurestore", arg) :: bnds
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
    : google_vertex_ai_featurestore_entitytype ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_vertex_ai_featurestore_entitytype

[@@@deriving.end]

let monitoring_config__categorical_threshold_config ~value () :
    monitoring_config__categorical_threshold_config =
  { value }

let monitoring_config__import_features_analysis
    ?anomaly_detection_baseline ?state () :
    monitoring_config__import_features_analysis =
  { anomaly_detection_baseline; state }

let monitoring_config__numerical_threshold_config ~value () :
    monitoring_config__numerical_threshold_config =
  { value }

let monitoring_config__snapshot_analysis ?disabled
    ?monitoring_interval_days ?staleness_days () :
    monitoring_config__snapshot_analysis =
  { disabled; monitoring_interval_days; staleness_days }

let monitoring_config ?(categorical_threshold_config = [])
    ?(import_features_analysis = [])
    ?(numerical_threshold_config = []) ?(snapshot_analysis = []) () :
    monitoring_config =
  {
    categorical_threshold_config;
    import_features_analysis;
    numerical_threshold_config;
    snapshot_analysis;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_vertex_ai_featurestore_entitytype ?description ?id ?labels
    ?name ?(monitoring_config = []) ?timeouts ~featurestore () :
    google_vertex_ai_featurestore_entitytype =
  {
    description;
    featurestore;
    id;
    labels;
    name;
    monitoring_config;
    timeouts;
  }

type t = {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  etag : string prop;
  featurestore : string prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  region : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

let make ?description ?id ?labels ?name ?(monitoring_config = [])
    ?timeouts ~featurestore __id =
  let __type = "google_vertex_ai_featurestore_entitytype" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       etag = Prop.computed __type __id "etag";
       featurestore = Prop.computed __type __id "featurestore";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       region = Prop.computed __type __id "region";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_vertex_ai_featurestore_entitytype
        (google_vertex_ai_featurestore_entitytype ?description ?id
           ?labels ?name ~monitoring_config ?timeouts ~featurestore
           ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?labels ?name
    ?(monitoring_config = []) ?timeouts ~featurestore __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?labels ?name ~monitoring_config ?timeouts
      ~featurestore __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
