(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type fields = {
  array_config : string prop option; [@option]
      (** Indicates that this field supports operations on arrayValues. Only one of 'order' and 'arrayConfig' can
be specified. Possible values: [CONTAINS] *)
  field_path : string prop option; [@option]
      (** Name of the field. *)
  order : string prop option; [@option]
      (** Indicates that this field supports ordering by the specified order or comparing using =, <, <=, >, >=.
Only one of 'order' and 'arrayConfig' can be specified. Possible values: [ASCENDING, DESCENDING] *)
}
[@@deriving yojson_of]
(** The fields supported by this index. The last field entry is always for
the field path '__name__'. If, on creation, '__name__' was not
specified as the last field, it will be added automatically with the
same direction as that of the last field defined. If the final field
in a composite index is not directional, the '__name__' will be
ordered 'ASCENDING' (unless explicitly specified otherwise). *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_firestore_index = {
  api_scope : string prop option; [@option]
      (** The API scope at which a query is run. Default value: ANY_API Possible values: [ANY_API, DATASTORE_MODE_API] *)
  collection : string prop;  (** The collection being indexed. *)
  database : string prop option; [@option]
      (** The Firestore database id. Defaults to '(default)'. *)
  id : string prop option; [@option]  (** id *)
  project : string prop option; [@option]  (** project *)
  query_scope : string prop option; [@option]
      (** The scope at which a query is run. Default value: COLLECTION Possible values: [COLLECTION, COLLECTION_GROUP, COLLECTION_RECURSIVE] *)
  fields : fields list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_firestore_index *)

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
