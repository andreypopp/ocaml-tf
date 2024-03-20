(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_storage_notification = {
  bucket : string prop;  (** The name of the bucket. *)
  custom_attributes : (string * string prop) list option; [@option]
      (**  A set of key/value attribute pairs to attach to each Cloud Pub/Sub message published for this notification subscription *)
  event_types : string prop list option; [@option]
      (** List of event type filters for this notification config. If not specified, Cloud Storage will send notifications for all event types. The valid types are: OBJECT_FINALIZE, OBJECT_METADATA_UPDATE, OBJECT_DELETE, OBJECT_ARCHIVE *)
  id : string prop option; [@option]  (** id *)
  object_name_prefix : string prop option; [@option]
      (** Specifies a prefix path filter for this notification config. Cloud Storage will only send notifications for objects in this bucket whose names begin with the specified prefix. *)
  payload_format : string prop;
      (** The desired content of the Payload. One of JSON_API_V1 or NONE. *)
  topic : string prop;
      (** The Cloud Pub/Sub topic to which this subscription publishes. Expects either the  topic name, assumed to belong to the default GCP provider project, or the project-level name,  i.e. projects/my-gcp-project/topics/my-topic or my-topic. If the project is not set in the provider, you will need to use the project-level name. *)
}
[@@deriving yojson_of]
(** google_storage_notification *)

let google_storage_notification ?custom_attributes ?event_types ?id
    ?object_name_prefix ~bucket ~payload_format ~topic () :
    google_storage_notification =
  {
    bucket;
    custom_attributes;
    event_types;
    id;
    object_name_prefix;
    payload_format;
    topic;
  }

type t = {
  bucket : string prop;
  custom_attributes : (string * string) list prop;
  event_types : string list prop;
  id : string prop;
  notification_id : string prop;
  object_name_prefix : string prop;
  payload_format : string prop;
  self_link : string prop;
  topic : string prop;
}

let make ?custom_attributes ?event_types ?id ?object_name_prefix
    ~bucket ~payload_format ~topic __id =
  let __type = "google_storage_notification" in
  let __attrs =
    ({
       bucket = Prop.computed __type __id "bucket";
       custom_attributes =
         Prop.computed __type __id "custom_attributes";
       event_types = Prop.computed __type __id "event_types";
       id = Prop.computed __type __id "id";
       notification_id = Prop.computed __type __id "notification_id";
       object_name_prefix =
         Prop.computed __type __id "object_name_prefix";
       payload_format = Prop.computed __type __id "payload_format";
       self_link = Prop.computed __type __id "self_link";
       topic = Prop.computed __type __id "topic";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_storage_notification
        (google_storage_notification ?custom_attributes ?event_types
           ?id ?object_name_prefix ~bucket ~payload_format ~topic ());
    attrs = __attrs;
  }

let register ?tf_module ?custom_attributes ?event_types ?id
    ?object_name_prefix ~bucket ~payload_format ~topic __id =
  let (r : _ Tf_core.resource) =
    make ?custom_attributes ?event_types ?id ?object_name_prefix
      ~bucket ~payload_format ~topic __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
