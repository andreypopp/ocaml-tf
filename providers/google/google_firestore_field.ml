(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type index_config__indexes = {
  array_config : string prop option; [@option]
  order : string prop option; [@option]
  query_scope : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : index_config__indexes) -> ()

let yojson_of_index_config__indexes =
  (function
   | {
       array_config = v_array_config;
       order = v_order;
       query_scope = v_query_scope;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_order with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "order", arg in
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
    : index_config__indexes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_index_config__indexes

[@@@deriving.end]

type index_config = { indexes : index_config__indexes list }
[@@deriving_inline yojson_of]

let _ = fun (_ : index_config) -> ()

let yojson_of_index_config =
  (function
   | { indexes = v_indexes } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_index_config__indexes v_indexes
         in
         ("indexes", arg) :: bnds
       in
       `Assoc bnds
    : index_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_index_config

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

type ttl_config = unit [@@deriving_inline yojson_of]

let _ = fun (_ : ttl_config) -> ()

let yojson_of_ttl_config =
  (yojson_of_unit : ttl_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ttl_config

[@@@deriving.end]

type google_firestore_field = {
  collection : string prop;
  database : string prop option; [@option]
  field : string prop;
  id : string prop option; [@option]
  project : string prop option; [@option]
  index_config : index_config list;
  timeouts : timeouts option;
  ttl_config : ttl_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_firestore_field) -> ()

let yojson_of_google_firestore_field =
  (function
   | {
       collection = v_collection;
       database = v_database;
       field = v_field;
       id = v_id;
       project = v_project;
       index_config = v_index_config;
       timeouts = v_timeouts;
       ttl_config = v_ttl_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_ttl_config v_ttl_config
         in
         ("ttl_config", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_index_config v_index_config
         in
         ("index_config", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_field in
         ("field", arg) :: bnds
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
       `Assoc bnds
    : google_firestore_field -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_firestore_field

[@@@deriving.end]

let index_config__indexes ?array_config ?order ?query_scope () :
    index_config__indexes =
  { array_config; order; query_scope }

let index_config ~indexes () : index_config = { indexes }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let ttl_config () = ()

let google_firestore_field ?database ?id ?project
    ?(index_config = []) ?timeouts ?(ttl_config = []) ~collection
    ~field () : google_firestore_field =
  {
    collection;
    database;
    field;
    id;
    project;
    index_config;
    timeouts;
    ttl_config;
  }

type t = {
  tf_name : string;
  collection : string prop;
  database : string prop;
  field : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
}

let make ?database ?id ?project ?(index_config = []) ?timeouts
    ?(ttl_config = []) ~collection ~field __id =
  let __type = "google_firestore_field" in
  let __attrs =
    ({
       tf_name = __id;
       collection = Prop.computed __type __id "collection";
       database = Prop.computed __type __id "database";
       field = Prop.computed __type __id "field";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_firestore_field
        (google_firestore_field ?database ?id ?project ~index_config
           ?timeouts ~ttl_config ~collection ~field ());
    attrs = __attrs;
  }

let register ?tf_module ?database ?id ?project ?(index_config = [])
    ?timeouts ?(ttl_config = []) ~collection ~field __id =
  let (r : _ Tf_core.resource) =
    make ?database ?id ?project ~index_config ?timeouts ~ttl_config
      ~collection ~field __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
