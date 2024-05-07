(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type fields = {
  array_config : string prop option; [@option]
  field_path : string prop option; [@option]
  order : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : fields) -> ()

let yojson_of_fields =
  (function
   | {
       array_config = v_array_config;
       field_path = v_field_path;
       order = v_order;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_order with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "order", arg in
             bnd :: bnds
       in
       let bnds =
         match v_field_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "field_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_array_config with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "array_config", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : fields -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_fields

[@@@deriving.end]

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

type google_firestore_index = {
  api_scope : string prop option; [@option]
  collection : string prop;
  database : string prop option; [@option]
  id : string prop option; [@option]
  project : string prop option; [@option]
  query_scope : string prop option; [@option]
  fields : fields list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_firestore_index) -> ()

let yojson_of_google_firestore_index =
  (function
   | {
       api_scope = v_api_scope;
       collection = v_collection;
       database = v_database;
       id = v_id;
       project = v_project;
       query_scope = v_query_scope;
       fields = v_fields;
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
         let arg = yojson_of_list yojson_of_fields v_fields in
         ("fields", arg) :: bnds
       in
       let bnds =
         match v_query_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "query_scope", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_database with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "database", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_collection in
         ("collection", arg) :: bnds
       in
       let bnds =
         match v_api_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "api_scope", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_firestore_index -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_firestore_index

[@@@deriving.end]

let fields ?array_config ?field_path ?order () : fields =
  { array_config; field_path; order }

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_firestore_index ?api_scope ?database ?id ?project
    ?query_scope ?timeouts ~collection ~fields () :
    google_firestore_index =
  {
    api_scope;
    collection;
    database;
    id;
    project;
    query_scope;
    fields;
    timeouts;
  }

type t = {
  tf_name : string;
  api_scope : string prop;
  collection : string prop;
  database : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  query_scope : string prop;
}

let make ?api_scope ?database ?id ?project ?query_scope ?timeouts
    ~collection ~fields __id =
  let __type = "google_firestore_index" in
  let __attrs =
    ({
       tf_name = __id;
       api_scope = Prop.computed __type __id "api_scope";
       collection = Prop.computed __type __id "collection";
       database = Prop.computed __type __id "database";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       query_scope = Prop.computed __type __id "query_scope";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_firestore_index
        (google_firestore_index ?api_scope ?database ?id ?project
           ?query_scope ?timeouts ~collection ~fields ());
    attrs = __attrs;
  }

let register ?tf_module ?api_scope ?database ?id ?project
    ?query_scope ?timeouts ~collection ~fields __id =
  let (r : _ Tf_core.resource) =
    make ?api_scope ?database ?id ?project ?query_scope ?timeouts
      ~collection ~fields __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
