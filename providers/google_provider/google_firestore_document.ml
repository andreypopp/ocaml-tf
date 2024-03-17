(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_firestore_document__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_firestore_document__timeouts *)

type google_firestore_document = {
  collection : string prop;
      (** The collection ID, relative to database. For example: chatrooms or chatrooms/my-document/private-messages. *)
  database : string prop option; [@option]
      (** The Firestore database id. Defaults to '(default)'. *)
  document_id : string prop;
      (** The client-assigned document ID to use for this document during creation. *)
  fields : string prop;
      (** The document's [fields](https://cloud.google.com/firestore/docs/reference/rest/v1/projects.databases.documents) formated as a json string. *)
  id : string prop option; [@option]  (** id *)
  project : string prop option; [@option]  (** project *)
  timeouts : google_firestore_document__timeouts option;
}
[@@deriving yojson_of]
(** google_firestore_document *)

let google_firestore_document ?database ?id ?project ?timeouts
    ~collection ~document_id ~fields __resource_id =
  let __resource_type = "google_firestore_document" in
  let __resource =
    {
      collection;
      database;
      document_id;
      fields;
      id;
      project;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_firestore_document __resource);
  ()
