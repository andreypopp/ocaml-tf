(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?api_scope ?database ?id ?project
    ?query_scope ?timeouts ~collection ~fields __resource_id =
  let __resource_type = "google_firestore_index" in
  let __resource =
    google_firestore_index ?api_scope ?database ?id ?project
      ?query_scope ?timeouts ~collection ~fields ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_firestore_index __resource);
  let __resource_attributes =
    ({
       api_scope =
         Prop.computed __resource_type __resource_id "api_scope";
       collection =
         Prop.computed __resource_type __resource_id "collection";
       database =
         Prop.computed __resource_type __resource_id "database";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       query_scope =
         Prop.computed __resource_type __resource_id "query_scope";
     }
      : t)
  in
  __resource_attributes
