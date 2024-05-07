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

type google_firestore_document = {
  collection : string prop;
  database : string prop option; [@option]
  document_id : string prop;
  fields : string prop;
  id : string prop option; [@option]
  project : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_firestore_document) -> ()

let yojson_of_google_firestore_document =
  (function
   | {
       collection = v_collection;
       database = v_database;
       document_id = v_document_id;
       fields = v_fields;
       id = v_id;
       project = v_project;
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
         let arg = yojson_of_prop yojson_of_string v_fields in
         ("fields", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_document_id in
         ("document_id", arg) :: bnds
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
    : google_firestore_document -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_firestore_document

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_firestore_document ?database ?id ?project ?timeouts
    ~collection ~document_id ~fields () : google_firestore_document =
  {
    collection;
    database;
    document_id;
    fields;
    id;
    project;
    timeouts;
  }

type t = {
  tf_name : string;
  collection : string prop;
  create_time : string prop;
  database : string prop;
  document_id : string prop;
  fields : string prop;
  id : string prop;
  name : string prop;
  path : string prop;
  project : string prop;
  update_time : string prop;
}

let make ?database ?id ?project ?timeouts ~collection ~document_id
    ~fields __id =
  let __type = "google_firestore_document" in
  let __attrs =
    ({
       tf_name = __id;
       collection = Prop.computed __type __id "collection";
       create_time = Prop.computed __type __id "create_time";
       database = Prop.computed __type __id "database";
       document_id = Prop.computed __type __id "document_id";
       fields = Prop.computed __type __id "fields";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       path = Prop.computed __type __id "path";
       project = Prop.computed __type __id "project";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_firestore_document
        (google_firestore_document ?database ?id ?project ?timeouts
           ~collection ~document_id ~fields ());
    attrs = __attrs;
  }

let register ?tf_module ?database ?id ?project ?timeouts ~collection
    ~document_id ~fields __id =
  let (r : _ Tf_core.resource) =
    make ?database ?id ?project ?timeouts ~collection ~document_id
      ~fields __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
