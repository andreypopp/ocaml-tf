(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type google_vertex_ai_feature_group_feature = {
  description : string prop option; [@option]
  feature_group : string prop;
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  name : string prop;
  project : string prop option; [@option]
  region : string prop;
  version_column_name : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_vertex_ai_feature_group_feature) -> ()

let yojson_of_google_vertex_ai_feature_group_feature =
  (function
   | {
       description = v_description;
       feature_group = v_feature_group;
       id = v_id;
       labels = v_labels;
       name = v_name;
       project = v_project;
       region = v_region;
       version_column_name = v_version_column_name;
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
         match v_version_column_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version_column_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_feature_group in
         ("feature_group", arg) :: bnds
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
    : google_vertex_ai_feature_group_feature ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_vertex_ai_feature_group_feature

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_vertex_ai_feature_group_feature ?description ?id ?labels
    ?project ?version_column_name ?timeouts ~feature_group ~name
    ~region () : google_vertex_ai_feature_group_feature =
  {
    description;
    feature_group;
    id;
    labels;
    name;
    project;
    region;
    version_column_name;
    timeouts;
  }

type t = {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  feature_group : string prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  region : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
  version_column_name : string prop;
}

let make ?description ?id ?labels ?project ?version_column_name
    ?timeouts ~feature_group ~name ~region __id =
  let __type = "google_vertex_ai_feature_group_feature" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       feature_group = Prop.computed __type __id "feature_group";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       update_time = Prop.computed __type __id "update_time";
       version_column_name =
         Prop.computed __type __id "version_column_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_vertex_ai_feature_group_feature
        (google_vertex_ai_feature_group_feature ?description ?id
           ?labels ?project ?version_column_name ?timeouts
           ~feature_group ~name ~region ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?labels ?project
    ?version_column_name ?timeouts ~feature_group ~name ~region __id
    =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?labels ?project ?version_column_name
      ?timeouts ~feature_group ~name ~region __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
