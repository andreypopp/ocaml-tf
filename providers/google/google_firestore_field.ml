(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type index_config__indexes = {
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

type index_config = { indexes : index_config__indexes list }
[@@deriving yojson_of]
(** The single field index configuration for this field.
Creating an index configuration for this field will override any inherited configuration with the
indexes specified. Configuring the index configuration with an empty block disables all indexes on
the field. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type ttl_config = unit [@@deriving yojson_of]

type google_firestore_field = {
  collection : string prop;
      (** The id of the collection group to configure. *)
  database : string prop option; [@option]
      (** The Firestore database id. Defaults to '(default)'. *)
  field : string prop;  (** The id of the field to configure. *)
  id : string prop option; [@option]  (** id *)
  project : string prop option; [@option]  (** project *)
  index_config : index_config list;
  timeouts : timeouts option;
  ttl_config : ttl_config list;
}
[@@deriving yojson_of]
(** google_firestore_field *)

let index_config__indexes ?array_config ?order ?query_scope () :
    index_config__indexes =
  { array_config; order; query_scope }

let index_config ~indexes () : index_config = { indexes }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let ttl_config () = ()

let google_firestore_field ?database ?id ?project ?timeouts
    ~collection ~field ~index_config ~ttl_config () :
    google_firestore_field =
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
  collection : string prop;
  database : string prop;
  field : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
}

let register ?tf_module ?database ?id ?project ?timeouts ~collection
    ~field ~index_config ~ttl_config __resource_id =
  let __resource_type = "google_firestore_field" in
  let __resource =
    google_firestore_field ?database ?id ?project ?timeouts
      ~collection ~field ~index_config ~ttl_config ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_firestore_field __resource);
  let __resource_attributes =
    ({
       collection =
         Prop.computed __resource_type __resource_id "collection";
       database =
         Prop.computed __resource_type __resource_id "database";
       field = Prop.computed __resource_type __resource_id "field";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
     }
      : t)
  in
  __resource_attributes
