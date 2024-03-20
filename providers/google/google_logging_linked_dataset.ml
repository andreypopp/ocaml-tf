(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type bigquery_dataset = unit [@@deriving yojson_of]

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_logging_linked_dataset = {
  bucket : string prop;
      (** The bucket to which the linked dataset is attached. *)
  description : string prop option; [@option]
      (** Describes this link. The maximum length of the description is 8000 characters. *)
  id : string prop option; [@option]  (** id *)
  link_id : string prop;  (** The id of the linked dataset. *)
  location : string prop option; [@option]
      (** The location of the linked dataset. *)
  parent : string prop option; [@option]
      (** The parent of the linked dataset. *)
  bigquery_dataset : bigquery_dataset list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_logging_linked_dataset *)

let bigquery_dataset () = ()
let timeouts ?create ?delete () : timeouts = { create; delete }

let google_logging_linked_dataset ?description ?id ?location ?parent
    ?timeouts ~bucket ~link_id ~bigquery_dataset () :
    google_logging_linked_dataset =
  {
    bucket;
    description;
    id;
    link_id;
    location;
    parent;
    bigquery_dataset;
    timeouts;
  }

type t = {
  bucket : string prop;
  create_time : string prop;
  description : string prop;
  id : string prop;
  lifecycle_state : string prop;
  link_id : string prop;
  location : string prop;
  name : string prop;
  parent : string prop;
}

let make ?description ?id ?location ?parent ?timeouts ~bucket
    ~link_id ~bigquery_dataset __id =
  let __type = "google_logging_linked_dataset" in
  let __attrs =
    ({
       bucket = Prop.computed __type __id "bucket";
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       lifecycle_state = Prop.computed __type __id "lifecycle_state";
       link_id = Prop.computed __type __id "link_id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_logging_linked_dataset
        (google_logging_linked_dataset ?description ?id ?location
           ?parent ?timeouts ~bucket ~link_id ~bigquery_dataset ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?location ?parent ?timeouts
    ~bucket ~link_id ~bigquery_dataset __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?location ?parent ?timeouts ~bucket
      ~link_id ~bigquery_dataset __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
