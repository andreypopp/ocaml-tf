(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type encryption_spec = { kms_key_name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption_spec) -> ()

let yojson_of_encryption_spec =
  (function
   | { kms_key_name = v_kms_key_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kms_key_name in
         ("kms_key_name", arg) :: bnds
       in
       `Assoc bnds
    : encryption_spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption_spec

[@@@deriving.end]

type online_serving_config__scaling = {
  max_node_count : float prop;
  min_node_count : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : online_serving_config__scaling) -> ()

let yojson_of_online_serving_config__scaling =
  (function
   | {
       max_node_count = v_max_node_count;
       min_node_count = v_min_node_count;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_min_node_count in
         ("min_node_count", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_node_count in
         ("max_node_count", arg) :: bnds
       in
       `Assoc bnds
    : online_serving_config__scaling ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_online_serving_config__scaling

[@@@deriving.end]

type online_serving_config = {
  fixed_node_count : float prop option; [@option]
  scaling : online_serving_config__scaling list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : online_serving_config) -> ()

let yojson_of_online_serving_config =
  (function
   | { fixed_node_count = v_fixed_node_count; scaling = v_scaling }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_online_serving_config__scaling
             v_scaling
         in
         ("scaling", arg) :: bnds
       in
       let bnds =
         match v_fixed_node_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "fixed_node_count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : online_serving_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_online_serving_config

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

type google_vertex_ai_featurestore = {
  force_destroy : bool prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  name : string prop option; [@option]
  project : string prop option; [@option]
  region : string prop option; [@option]
  encryption_spec : encryption_spec list;
  online_serving_config : online_serving_config list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_vertex_ai_featurestore) -> ()

let yojson_of_google_vertex_ai_featurestore =
  (function
   | {
       force_destroy = v_force_destroy;
       id = v_id;
       labels = v_labels;
       name = v_name;
       project = v_project;
       region = v_region;
       encryption_spec = v_encryption_spec;
       online_serving_config = v_online_serving_config;
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
           yojson_of_list yojson_of_online_serving_config
             v_online_serving_config
         in
         ("online_serving_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_encryption_spec v_encryption_spec
         in
         ("encryption_spec", arg) :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
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
         match v_force_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_destroy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_vertex_ai_featurestore ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_vertex_ai_featurestore

[@@@deriving.end]

let encryption_spec ~kms_key_name () : encryption_spec =
  { kms_key_name }

let online_serving_config__scaling ~max_node_count ~min_node_count ()
    : online_serving_config__scaling =
  { max_node_count; min_node_count }

let online_serving_config ?fixed_node_count ?(scaling = []) () :
    online_serving_config =
  { fixed_node_count; scaling }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_vertex_ai_featurestore ?force_destroy ?id ?labels ?name
    ?project ?region ?(encryption_spec = [])
    ?(online_serving_config = []) ?timeouts () :
    google_vertex_ai_featurestore =
  {
    force_destroy;
    id;
    labels;
    name;
    project;
    region;
    encryption_spec;
    online_serving_config;
    timeouts;
  }

type t = {
  tf_name : string;
  create_time : string prop;
  effective_labels : (string * string) list prop;
  etag : string prop;
  force_destroy : bool prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  region : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

let make ?force_destroy ?id ?labels ?name ?project ?region
    ?(encryption_spec = []) ?(online_serving_config = []) ?timeouts
    __id =
  let __type = "google_vertex_ai_featurestore" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       etag = Prop.computed __type __id "etag";
       force_destroy = Prop.computed __type __id "force_destroy";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
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
      yojson_of_google_vertex_ai_featurestore
        (google_vertex_ai_featurestore ?force_destroy ?id ?labels
           ?name ?project ?region ~encryption_spec
           ~online_serving_config ?timeouts ());
    attrs = __attrs;
  }

let register ?tf_module ?force_destroy ?id ?labels ?name ?project
    ?region ?(encryption_spec = []) ?(online_serving_config = [])
    ?timeouts __id =
  let (r : _ Tf_core.resource) =
    make ?force_destroy ?id ?labels ?name ?project ?region
      ~encryption_spec ~online_serving_config ?timeouts __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
