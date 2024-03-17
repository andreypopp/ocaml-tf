(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_firestore_field__index_config__indexes = {
  array_config : string prop option; [@option]
      (** Indicates that this field supports operations on arrayValues. Only one of 'order' and 'arrayConfig' can
be specified. Possible values: [CONTAINS] *)
  order : string prop option; [@option]
      (** Indicates that this field supports ordering by the specified order or comparing using =, <, <=, >, >=, !=.
Only one of 'order' and 'arrayConfig' can be specified. Possible values: [ASCENDING, DESCENDING] *)
  query_scope : string prop option; [@option]
      (** The scope at which a query is run. Collection scoped queries require you specify
the collection at query time. Collection group scope allows queries across all
collections with the same id. Default value: COLLECTION Possible values: [COLLECTION, COLLECTION_GROUP] *)
}
[@@deriving yojson_of]
(** The indexes to configure on the field. Order or array contains must be specified. *)

type google_firestore_field__index_config = {
  indexes : google_firestore_field__index_config__indexes list;
}
[@@deriving yojson_of]
(** The single field index configuration for this field.
Creating an index configuration for this field will override any inherited configuration with the
indexes specified. Configuring the index configuration with an empty block disables all indexes on
the field. *)

type google_firestore_field__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_firestore_field__timeouts *)

type google_firestore_field__ttl_config = {
  state : string prop;
      (** The state of TTL (time-to-live) configuration for documents that have this Field set. *)
}
[@@deriving yojson_of]
(** The TTL configuration for this Field. If set to an empty block (i.e. 'ttl_config {}'), a TTL policy is configured based on the field. If unset, a TTL policy is not configured (or will be disabled upon updating the resource). *)

type google_firestore_field = {
  collection : string prop;
      (** The id of the collection group to configure. *)
  database : string prop option; [@option]
      (** The Firestore database id. Defaults to '(default)'. *)
  field : string prop;  (** The id of the field to configure. *)
  id : string prop option; [@option]  (** id *)
  project : string prop option; [@option]  (** project *)
  index_config : google_firestore_field__index_config list;
  timeouts : google_firestore_field__timeouts option;
  ttl_config : google_firestore_field__ttl_config list;
}
[@@deriving yojson_of]
(** google_firestore_field *)

let google_firestore_field ?database ?id ?project ?timeouts
    ~collection ~field ~index_config ~ttl_config __resource_id =
  let __resource_type = "google_firestore_field" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_firestore_field __resource);
  ()
