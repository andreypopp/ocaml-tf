(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_pubsub_schema = {
  definition : string prop option; [@option]
      (** The definition of the schema.
This should contain a string representing the full definition of the schema
that is a valid schema definition of the type specified in type. Changes
to the definition commit new [schema revisions](https://cloud.google.com/pubsub/docs/commit-schema-revision).
A schema can only have up to 20 revisions, so updates that fail with an
error indicating that the limit has been reached require manually
[deleting old revisions](https://cloud.google.com/pubsub/docs/delete-schema-revision). *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** The ID to use for the schema, which will become the final component of the schema's resource name. *)
  project : string prop option; [@option]  (** project *)
  type_ : string prop option; [@option] [@key "type"]
      (** The type of the schema definition Default value: TYPE_UNSPECIFIED Possible values: [TYPE_UNSPECIFIED, PROTOCOL_BUFFER, AVRO] *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_pubsub_schema *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_pubsub_schema ?definition ?id ?project ?type_ ?timeouts
    ~name () : google_pubsub_schema =
  { definition; id; name; project; type_; timeouts }

type t = {
  definition : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  type_ : string prop;
}

let make ?definition ?id ?project ?type_ ?timeouts ~name __id =
  let __type = "google_pubsub_schema" in
  let __attrs =
    ({
       definition = Prop.computed __type __id "definition";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_pubsub_schema
        (google_pubsub_schema ?definition ?id ?project ?type_
           ?timeouts ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?definition ?id ?project ?type_ ?timeouts
    ~name __id =
  let (r : _ Tf_core.resource) =
    make ?definition ?id ?project ?type_ ?timeouts ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
