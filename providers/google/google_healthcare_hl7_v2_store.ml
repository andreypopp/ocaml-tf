(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type notification_config = {
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

type notification_configs = {
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

type parser_config = {
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

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  notification_config : notification_config list;
  notification_configs : notification_configs list;
  parser_config : parser_config list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_healthcare_hl7_v2_store *)

let notification_config ~pubsub_topic () : notification_config =
  { pubsub_topic }

let notification_configs ?filter ~pubsub_topic () :
    notification_configs =
  { filter; pubsub_topic }

let parser_config ?allow_null_header ?schema ?segment_terminator
    ?version () : parser_config =
  { allow_null_header; schema; segment_terminator; version }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_healthcare_hl7_v2_store ?id ?labels
    ?reject_duplicate_message ?timeouts ~dataset ~name
    ~notification_config ~notification_configs ~parser_config () :
    google_healthcare_hl7_v2_store =
  {
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

let make ?id ?labels ?reject_duplicate_message ?timeouts ~dataset
    ~name ~notification_config ~notification_configs ~parser_config
    __id =
  let __type = "google_healthcare_hl7_v2_store" in
  let __attrs =
    ({
       dataset = Prop.computed __type __id "dataset";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       reject_duplicate_message =
         Prop.computed __type __id "reject_duplicate_message";
       self_link = Prop.computed __type __id "self_link";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_healthcare_hl7_v2_store
        (google_healthcare_hl7_v2_store ?id ?labels
           ?reject_duplicate_message ?timeouts ~dataset ~name
           ~notification_config ~notification_configs ~parser_config
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?labels ?reject_duplicate_message
    ?timeouts ~dataset ~name ~notification_config
    ~notification_configs ~parser_config __id =
  let (r : _ Tf_core.resource) =
    make ?id ?labels ?reject_duplicate_message ?timeouts ~dataset
      ~name ~notification_config ~notification_configs ~parser_config
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
