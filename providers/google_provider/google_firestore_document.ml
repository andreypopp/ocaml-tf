(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_firestore_document__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_firestore_document__timeouts *)

type google_firestore_document = {
  collection : string;
      (** The collection ID, relative to database. For example: chatrooms or chatrooms/my-document/private-messages. *)
  database : string option; [@option]
      (** The Firestore database id. Defaults to '(default)'. *)
  document_id : string;
      (** The client-assigned document ID to use for this document during creation. *)
  fields : string;
      (** The document's [fields](https://cloud.google.com/firestore/docs/reference/rest/v1/projects.databases.documents) formated as a json string. *)
  timeouts : google_firestore_document__timeouts option;
}
[@@deriving yojson_of]
(** google_firestore_document *)

let google_firestore_document ?database ?timeouts ~collection
    ~document_id ~fields __resource_id =
  let __resource_type = "google_firestore_document" in
  let __resource =
    { collection; database; document_id; fields; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_firestore_document __resource);
  ()
