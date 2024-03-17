(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_pubsub_schema__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_pubsub_schema__timeouts *)

type google_pubsub_schema = {
  definition : string option; [@option]
      (** The definition of the schema.
This should contain a string representing the full definition of the schema
that is a valid schema definition of the type specified in type. Changes
to the definition commit new [schema revisions](https://cloud.google.com/pubsub/docs/commit-schema-revision).
A schema can only have up to 20 revisions, so updates that fail with an
error indicating that the limit has been reached require manually
[deleting old revisions](https://cloud.google.com/pubsub/docs/delete-schema-revision). *)
  id : string option; [@option]  (** id *)
  name : string;
      (** The ID to use for the schema, which will become the final component of the schema's resource name. *)
  project : string option; [@option]  (** project *)
  type_ : string option; [@option] [@key "type"]
      (** The type of the schema definition Default value: TYPE_UNSPECIFIED Possible values: [TYPE_UNSPECIFIED, PROTOCOL_BUFFER, AVRO] *)
  timeouts : google_pubsub_schema__timeouts option;
}
[@@deriving yojson_of]
(** google_pubsub_schema *)

let google_pubsub_schema ?definition ?id ?project ?type_ ?timeouts
    ~name __resource_id =
  let __resource_type = "google_pubsub_schema" in
  let __resource =
    { definition; id; name; project; type_; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_pubsub_schema __resource);
  ()
