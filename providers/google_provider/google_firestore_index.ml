(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_firestore_index__fields = {
  array_config : string option; [@option]
      (** Indicates that this field supports operations on arrayValues. Only one of 'order' and 'arrayConfig' can
be specified. Possible values: [CONTAINS] *)
  field_path : string option; [@option]  (** Name of the field. *)
  order : string option; [@option]
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

type google_firestore_index__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_firestore_index__timeouts *)

type google_firestore_index = {
  api_scope : string option; [@option]
      (** The API scope at which a query is run. Default value: ANY_API Possible values: [ANY_API, DATASTORE_MODE_API] *)
  collection : string;  (** The collection being indexed. *)
  database : string option; [@option]
      (** The Firestore database id. Defaults to '(default)'. *)
  query_scope : string option; [@option]
      (** The scope at which a query is run. Default value: COLLECTION Possible values: [COLLECTION, COLLECTION_GROUP, COLLECTION_RECURSIVE] *)
  fields : google_firestore_index__fields list;
  timeouts : google_firestore_index__timeouts option;
}
[@@deriving yojson_of]
(** google_firestore_index *)

let google_firestore_index ?api_scope ?database ?query_scope
    ?timeouts ~collection ~fields __resource_id =
  let __resource_type = "google_firestore_index" in
  let __resource =
    {
      api_scope;
      collection;
      database;
      query_scope;
      fields;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_firestore_index __resource);
  ()
