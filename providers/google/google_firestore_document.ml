(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_firestore_document *)

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
