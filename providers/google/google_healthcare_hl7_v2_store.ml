(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_healthcare_hl7_v2_store__notification_config = {
  pubsub_topic : string prop;
      (** The Cloud Pub/Sub topic that notifications of changes are published on. Supplied by the client.
PubsubMessage.Data will contain the resource name. PubsubMessage.MessageId is the ID of this message.
It is guaranteed to be unique within the topic. PubsubMessage.PublishTime is the time at which the message
was published. Notifications are only sent if the topic is non-empty. Topic names must be scoped to a
project. service-PROJECT_NUMBER@gcp-sa-healthcare.iam.gserviceaccount.com must have publisher permissions on the given
Cloud Pub/Sub topic. Not having adequate permissions will cause the calls that send notifications to fail. *)
}
[@@deriving yojson_of]
(** A nested object resource *)

type google_healthcare_hl7_v2_store__notification_configs = {
  filter : string prop option; [@option]
      (** Restricts notifications sent for messages matching a filter. If this is empty, all messages
are matched. Syntax: https://cloud.google.com/appengine/docs/standard/python/search/query_strings

Fields/functions available for filtering are:

* messageType, from the MSH-9.1 field. For example, NOT messageType = ADT.
* send_date or sendDate, the YYYY-MM-DD date the message was sent in the dataset's timeZone, from the MSH-7 segment. For example, send_date < 2017-01-02.
* sendTime, the timestamp when the message was sent, using the RFC3339 time format for comparisons, from the MSH-7 segment. For example, sendTime < 2017-01-02T00:00:00-05:00.
* sendFacility, the care center that the message came from, from the MSH-4 segment. For example, sendFacility = ABC.
* PatientId(value, type), which matches if the message lists a patient having an ID of the given value and type in the PID-2, PID-3, or PID-4 segments. For example, PatientId(123456, MRN).
* labels.x, a string value of the label with key x as set using the Message.labels map. For example, labels.priority=high. The operator :* can be used to assert the existence of a label. For example, labels.priority:*. *)
  pubsub_topic : string prop;
      (** The Cloud Pub/Sub topic that notifications of changes are published on. Supplied by the client.
PubsubMessage.Data will contain the resource name. PubsubMessage.MessageId is the ID of this message.
It is guaranteed to be unique within the topic. PubsubMessage.PublishTime is the time at which the message
was published. Notifications are only sent if the topic is non-empty. Topic names must be scoped to a
project. service-PROJECT_NUMBER@gcp-sa-healthcare.iam.gserviceaccount.com must have publisher permissions on the given
Cloud Pub/Sub topic. Not having adequate permissions will cause the calls that send notifications to fail.

If a notification cannot be published to Cloud Pub/Sub, errors will be logged to Stackdriver *)
}
[@@deriving yojson_of]
(** A list of notification configs. Each configuration uses a filter to determine whether to publish a
message (both Ingest & Create) on the corresponding notification destination. Only the message name
is sent as part of the notification. Supplied by the client. *)

type google_healthcare_hl7_v2_store__parser_config = {
  allow_null_header : bool prop option; [@option]
      (** Determines whether messages with no header are allowed. *)
  schema : string prop option; [@option]
      (** JSON encoded string for schemas used to parse messages in this
store if schematized parsing is desired. *)
  segment_terminator : string prop option; [@option]
      (** Byte(s) to be used as the segment terminator. If this is unset, '\r' will be used as segment terminator.

A base64-encoded string. *)
  version : string prop option; [@option]
      (** The version of the unschematized parser to be used when a custom 'schema' is not set. Default value: V1 Possible values: [V1, V2, V3] *)
}
[@@deriving yojson_of]
(** A nested object resource *)

type google_healthcare_hl7_v2_store__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_healthcare_hl7_v2_store__timeouts *)

type google_healthcare_hl7_v2_store = {
  dataset : string prop;
      (** Identifies the dataset addressed by this request. Must be in the format
'projects/{project}/locations/{location}/datasets/{dataset}' *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** User-supplied key-value pairs used to organize HL7v2 stores.

Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must
conform to the following PCRE regular expression: [\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}

Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128
bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}

No more than 64 labels can be associated with a given store.

An object containing a list of key: value pairs.
Example: { name: wrench, mass: 1.3kg, count: 3 }.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string prop;
      (** The resource name for the Hl7V2Store.

** Changing this property may recreate the Hl7v2 store (removing all data) ** *)
  reject_duplicate_message : bool prop option; [@option]
      (** Determines whether duplicate messages are allowed. *)
  notification_config :
    google_healthcare_hl7_v2_store__notification_config list;
  notification_configs :
    google_healthcare_hl7_v2_store__notification_configs list;
  parser_config : google_healthcare_hl7_v2_store__parser_config list;
  timeouts : google_healthcare_hl7_v2_store__timeouts option;
}
[@@deriving yojson_of]
(** google_healthcare_hl7_v2_store *)

type t = {
  dataset : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  reject_duplicate_message : bool prop;
  self_link : string prop;
  terraform_labels : (string * string) list prop;
}

let google_healthcare_hl7_v2_store ?id ?labels
    ?reject_duplicate_message ?timeouts ~dataset ~name
    ~notification_config ~notification_configs ~parser_config
    __resource_id =
  let __resource_type = "google_healthcare_hl7_v2_store" in
  let __resource =
    ({
       dataset;
       id;
       labels;
       name;
       reject_duplicate_message;
       notification_config;
       notification_configs;
       parser_config;
       timeouts;
     }
      : google_healthcare_hl7_v2_store)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_healthcare_hl7_v2_store __resource);
  let __resource_attributes =
    ({
       dataset =
         Prop.computed __resource_type __resource_id "dataset";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       name = Prop.computed __resource_type __resource_id "name";
       reject_duplicate_message =
         Prop.computed __resource_type __resource_id
           "reject_duplicate_message";
       self_link =
         Prop.computed __resource_type __resource_id "self_link";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
     }
      : t)
  in
  __resource_attributes
