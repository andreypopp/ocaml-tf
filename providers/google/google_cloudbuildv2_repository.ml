(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type google_cloudbuildv2_repository = {
  annotations : (string * string prop) list option; [@option]
  id : string prop option; [@option]
  location : string prop option; [@option]
  name : string prop;
  parent_connection : string prop;
  project : string prop option; [@option]
  remote_uri : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_cloudbuildv2_repository) -> ()

let yojson_of_google_cloudbuildv2_repository =
  (function
   | {
       annotations = v_annotations;
       id = v_id;
       location = v_location;
       name = v_name;
       parent_connection = v_parent_connection;
       project = v_project;
       remote_uri = v_remote_uri;
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
         let arg = yojson_of_prop yojson_of_string v_remote_uri in
         ("remote_uri", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_parent_connection
         in
         ("parent_connection", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
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
         match v_annotations with
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
             let bnd = "annotations", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_cloudbuildv2_repository ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_cloudbuildv2_repository

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_cloudbuildv2_repository ?annotations ?id ?location
    ?project ?timeouts ~name ~parent_connection ~remote_uri () :
    google_cloudbuildv2_repository =
  {
    annotations;
    id;
    location;
    name;
    parent_connection;
    project;
    remote_uri;
    timeouts;
  }

type t = {
  annotations : (string * string) list prop;
  create_time : string prop;
  effective_annotations : (string * string) list prop;
  etag : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  parent_connection : string prop;
  project : string prop;
  remote_uri : string prop;
  update_time : string prop;
}

let make ?annotations ?id ?location ?project ?timeouts ~name
    ~parent_connection ~remote_uri __id =
  let __type = "google_cloudbuildv2_repository" in
  let __attrs =
    ({
       annotations = Prop.computed __type __id "annotations";
       create_time = Prop.computed __type __id "create_time";
       effective_annotations =
         Prop.computed __type __id "effective_annotations";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       parent_connection =
         Prop.computed __type __id "parent_connection";
       project = Prop.computed __type __id "project";
       remote_uri = Prop.computed __type __id "remote_uri";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_cloudbuildv2_repository
        (google_cloudbuildv2_repository ?annotations ?id ?location
           ?project ?timeouts ~name ~parent_connection ~remote_uri ());
    attrs = __attrs;
  }

let register ?tf_module ?annotations ?id ?location ?project ?timeouts
    ~name ~parent_connection ~remote_uri __id =
  let (r : _ Tf_core.resource) =
    make ?annotations ?id ?location ?project ?timeouts ~name
      ~parent_connection ~remote_uri __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
