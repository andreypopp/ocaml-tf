(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_storage_notification = {
  bucket : string;  (** The name of the bucket. *)
  custom_attributes : (string * string) list option; [@option]
      (**  A set of key/value attribute pairs to attach to each Cloud Pub/Sub message published for this notification subscription *)
  event_types : string list option; [@option]
      (** List of event type filters for this notification config. If not specified, Cloud Storage will send notifications for all event types. The valid types are: OBJECT_FINALIZE, OBJECT_METADATA_UPDATE, OBJECT_DELETE, OBJECT_ARCHIVE *)
  object_name_prefix : string option; [@option]
      (** Specifies a prefix path filter for this notification config. Cloud Storage will only send notifications for objects in this bucket whose names begin with the specified prefix. *)
  payload_format : string;
      (** The desired content of the Payload. One of JSON_API_V1 or NONE. *)
  topic : string;
      (** The Cloud Pub/Sub topic to which this subscription publishes. Expects either the  topic name, assumed to belong to the default GCP provider project, or the project-level name,  i.e. projects/my-gcp-project/topics/my-topic or my-topic. If the project is not set in the provider, you will need to use the project-level name. *)
}
[@@deriving yojson_of]
(** google_storage_notification *)

let google_storage_notification ?custom_attributes ?event_types
    ?object_name_prefix ~bucket ~payload_format ~topic __resource_id
    =
  let __resource_type = "google_storage_notification" in
  let __resource =
    {
      bucket;
      custom_attributes;
      event_types;
      object_name_prefix;
      payload_format;
      topic;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_storage_notification __resource);
  ()
