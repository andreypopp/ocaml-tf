(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_pubsub_subscription__bigquery_config = {
  drop_unknown_fields : bool option; [@option]
      (** When true and use_topic_schema or use_table_schema is true, any fields that are a part of the topic schema or message schema that
are not part of the BigQuery table schema are dropped when writing to BigQuery. Otherwise, the schemas must be kept in sync
and any messages with extra fields are not written and remain in the subscription's backlog. *)
  table : string;
      (** The name of the table to which to write data, of the form {projectId}:{datasetId}.{tableId} *)
  use_table_schema : bool option; [@option]
      (** When true, use the BigQuery table's schema as the columns to write to in BigQuery. Messages
must be published in JSON format. Only one of use_topic_schema and use_table_schema can be set. *)
  use_topic_schema : bool option; [@option]
      (** When true, use the topic's schema as the columns to write to in BigQuery, if it exists.
Only one of use_topic_schema and use_table_schema can be set. *)
  write_metadata : bool option; [@option]
      (** When true, write the subscription name, messageId, publishTime, attributes, and orderingKey to additional columns in the table.
The subscription name, messageId, and publishTime fields are put in their own columns while all other message properties (other than data) are written to a JSON object in the attributes column. *)
}
[@@deriving yojson_of]
(** If delivery to BigQuery is used with this subscription, this field is used to configure it.
Either pushConfig, bigQueryConfig or cloudStorageConfig can be set, but not combined.
If all three are empty, then the subscriber will pull and ack messages using API methods. *)

type google_pubsub_subscription__cloud_storage_config__avro_config = {
  write_metadata : bool option; [@option]
      (** When true, write the subscription name, messageId, publishTime, attributes, and orderingKey as additional fields in the output. *)
}
[@@deriving yojson_of]
(** If set, message data will be written to Cloud Storage in Avro format. *)

type google_pubsub_subscription__cloud_storage_config = {
  bucket : string;
      (** User-provided name for the Cloud Storage bucket. The bucket must be created by the user. The bucket name must be without any prefix like gs://. *)
  filename_prefix : string option; [@option]
      (** User-provided prefix for Cloud Storage filename. *)
  filename_suffix : string option; [@option]
      (** User-provided suffix for Cloud Storage filename. Must not end in /. *)
  max_bytes : float option; [@option]
      (** The maximum bytes that can be written to a Cloud Storage file before a new file is created. Min 1 KB, max 10 GiB.
The maxBytes limit may be exceeded in cases where messages are larger than the limit. *)
  max_duration : string option; [@option]
      (** The maximum duration that can elapse before a new Cloud Storage file is created. Min 1 minute, max 10 minutes, default 5 minutes.
May not exceed the subscription's acknowledgement deadline.
A duration in seconds with up to nine fractional digits, ending with 's'. Example: 3.5s. *)
  state : string;
      (** An output-only field that indicates whether or not the subscription can receive messages. *)
  avro_config :
    google_pubsub_subscription__cloud_storage_config__avro_config
    list;
}
[@@deriving yojson_of]
(** If delivery to Cloud Storage is used with this subscription, this field is used to configure it.
Either pushConfig, bigQueryConfig or cloudStorageConfig can be set, but not combined.
If all three are empty, then the subscriber will pull and ack messages using API methods. *)

type google_pubsub_subscription__dead_letter_policy = {
  dead_letter_topic : string option; [@option]
      (** The name of the topic to which dead letter messages should be published.
Format is 'projects/{project}/topics/{topic}'.

The Cloud Pub/Sub service account associated with the enclosing subscription's
parent project (i.e.,
service-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com) must have
permission to Publish() to this topic.

The operation will fail if the topic does not exist.
Users should ensure that there is a subscription attached to this topic
since messages published to a topic with no subscriptions are lost. *)
  max_delivery_attempts : float option; [@option]
      (** The maximum number of delivery attempts for any message. The value must be
between 5 and 100.

The number of delivery attempts is defined as 1 + (the sum of number of
NACKs and number of times the acknowledgement deadline has been exceeded for the message).

A NACK is any call to ModifyAckDeadline with a 0 deadline. Note that
client libraries may automatically extend ack_deadlines.

This field will be honored on a best effort basis.

If this parameter is 0, a default value of 5 is used. *)
}
[@@deriving yojson_of]
(** A policy that specifies the conditions for dead lettering messages in
this subscription. If dead_letter_policy is not set, dead lettering
is disabled.

The Cloud Pub/Sub service account associated with this subscription's
parent project (i.e.,
service-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com) must have
permission to Acknowledge() messages on this subscription. *)

type google_pubsub_subscription__expiration_policy = {
  ttl : string;
      (** Specifies the time-to-live duration for an associated resource. The
resource expires if it is not active for a period of ttl.
If ttl is set to , the associated resource never expires.
A duration in seconds with up to nine fractional digits, terminated by 's'.
Example - 3.5s. *)
}
[@@deriving yojson_of]
(** A policy that specifies the conditions for this subscription's expiration.
A subscription is considered active as long as any connected subscriber
is successfully consuming messages from the subscription or is issuing
operations on the subscription. If expirationPolicy is not set, a default
policy with ttl of 31 days will be used.  If it is set but ttl is , the
resource never expires.  The minimum allowed value for expirationPolicy.ttl
is 1 day. *)

type google_pubsub_subscription__push_config__no_wrapper = {
  write_metadata : bool;
      (** When true, writes the Pub/Sub message metadata to
'x-goog-pubsub-<KEY>:<VAL>' headers of the HTTP request. Writes the
Pub/Sub message attributes to '<KEY>:<VAL>' headers of the HTTP request. *)
}
[@@deriving yojson_of]
(** When set, the payload to the push endpoint is not wrapped.Sets the
'data' field as the HTTP body for delivery. *)

type google_pubsub_subscription__push_config__oidc_token = {
  audience : string option; [@option]
      (** Audience to be used when generating OIDC token. The audience claim
identifies the recipients that the JWT is intended for. The audience
value is a single case-sensitive string. Having multiple values (array)
for the audience field is not supported. More info about the OIDC JWT
token audience here: https://tools.ietf.org/html/rfc7519#section-4.1.3
Note: if not specified, the Push endpoint URL will be used. *)
  service_account_email : string;
      (** Service account email to be used for generating the OIDC token.
The caller (for subscriptions.create, subscriptions.patch, and
subscriptions.modifyPushConfig RPCs) must have the
iam.serviceAccounts.actAs permission for the service account. *)
}
[@@deriving yojson_of]
(** If specified, Pub/Sub will generate and attach an OIDC JWT token as
an Authorization header in the HTTP request for every pushed message. *)

type google_pubsub_subscription__push_config = {
  attributes : (string * string) list option; [@option]
      (** Endpoint configuration attributes.

Every endpoint has a set of API supported attributes that can
be used to control different aspects of the message delivery.

The currently supported attribute is x-goog-version, which you
can use to change the format of the pushed message. This
attribute indicates the version of the data expected by
the endpoint. This controls the shape of the pushed message
(i.e., its fields and metadata). The endpoint version is
based on the version of the Pub/Sub API.

If not present during the subscriptions.create call,
it will default to the version of the API used to make
such call. If not present during a subscriptions.modifyPushConfig
call, its value will not be changed. subscriptions.get
calls will always return a valid version, even if the
subscription was created without this attribute.

The possible values for this attribute are:

- v1beta1: uses the push format defined in the v1beta1 Pub/Sub API.
- v1 or v1beta2: uses the push format defined in the v1 Pub/Sub API. *)
  push_endpoint : string;
      (** A URL locating the endpoint to which messages should be pushed.
For example, a Webhook endpoint might use
https://example.com/push. *)
  no_wrapper :
    google_pubsub_subscription__push_config__no_wrapper list;
  oidc_token :
    google_pubsub_subscription__push_config__oidc_token list;
}
[@@deriving yojson_of]
(** If push delivery is used with this subscription, this field is used to
configure it. An empty pushConfig signifies that the subscriber will
pull and ack messages using API methods. *)

type google_pubsub_subscription__retry_policy = {
  maximum_backoff : string option; [@option]
      (** The maximum delay between consecutive deliveries of a given message. Value should be between 0 and 600 seconds. Defaults to 600 seconds.
A duration in seconds with up to nine fractional digits, terminated by 's'. Example: 3.5s. *)
  minimum_backoff : string option; [@option]
      (** The minimum delay between consecutive deliveries of a given message. Value should be between 0 and 600 seconds. Defaults to 10 seconds.
A duration in seconds with up to nine fractional digits, terminated by 's'. Example: 3.5s. *)
}
[@@deriving yojson_of]
(** A policy that specifies how Pub/Sub retries message delivery for this subscription.

If not set, the default retry policy is applied. This generally implies that messages will be retried as soon as possible for healthy subscribers.
RetryPolicy will be triggered on NACKs or acknowledgement deadline exceeded events for a given message *)

type google_pubsub_subscription__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_pubsub_subscription__timeouts *)

type google_pubsub_subscription = {
  enable_exactly_once_delivery : bool option; [@option]
      (** If 'true', Pub/Sub provides the following guarantees for the delivery
of a message with a given value of messageId on this Subscriptions':

- The message sent to a subscriber is guaranteed not to be resent before the message's acknowledgement deadline expires.

- An acknowledged message will not be resent to a subscriber.

Note that subscribers may still receive multiple copies of a message when 'enable_exactly_once_delivery'
is true if the message was published multiple times by a publisher client. These copies are considered distinct by Pub/Sub and have distinct messageId values *)
  enable_message_ordering : bool option; [@option]
      (** If 'true', messages published with the same orderingKey in PubsubMessage will be delivered to
the subscribers in the order in which they are received by the Pub/Sub system. Otherwise, they
may be delivered in any order. *)
  filter : string option; [@option]
      (** The subscription only delivers the messages that match the filter.
Pub/Sub automatically acknowledges the messages that don't match the filter. You can filter messages
by their attributes. The maximum length of a filter is 256 bytes. After creating the subscription,
you can't modify the filter. *)
  labels : (string * string) list option; [@option]
      (** A set of key/value label pairs to assign to this Subscription.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  message_retention_duration : string option; [@option]
      (** How long to retain unacknowledged messages in the subscription's
backlog, from the moment a message is published. If
retain_acked_messages is true, then this also configures the retention
of acknowledged messages, and thus configures how far back in time a
subscriptions.seek can be done. Defaults to 7 days. Cannot be more
than 7 days ('604800s') or less than 10 minutes ('600s').

A duration in seconds with up to nine fractional digits, terminated
by 's'. Example: '600.5s'. *)
  name : string;  (** Name of the subscription. *)
  retain_acked_messages : bool option; [@option]
      (** Indicates whether to retain acknowledged messages. If 'true', then
messages are not expunged from the subscription's backlog, even if
they are acknowledged, until they fall out of the
messageRetentionDuration window. *)
  topic : string;
      (** A reference to a Topic resource, of the form projects/{project}/topics/{{name}}
(as in the id property of a google_pubsub_topic), or just a topic name if
the topic is in the same project as the subscription. *)
  bigquery_config : google_pubsub_subscription__bigquery_config list;
  cloud_storage_config :
    google_pubsub_subscription__cloud_storage_config list;
  dead_letter_policy :
    google_pubsub_subscription__dead_letter_policy list;
  expiration_policy :
    google_pubsub_subscription__expiration_policy list;
  push_config : google_pubsub_subscription__push_config list;
  retry_policy : google_pubsub_subscription__retry_policy list;
  timeouts : google_pubsub_subscription__timeouts option;
}
[@@deriving yojson_of]
(** google_pubsub_subscription *)

let google_pubsub_subscription ?enable_exactly_once_delivery
    ?enable_message_ordering ?filter ?labels
    ?message_retention_duration ?retain_acked_messages ?timeouts
    ~name ~topic ~bigquery_config ~cloud_storage_config
    ~dead_letter_policy ~expiration_policy ~push_config ~retry_policy
    __resource_id =
  let __resource_type = "google_pubsub_subscription" in
  let __resource =
    {
      enable_exactly_once_delivery;
      enable_message_ordering;
      filter;
      labels;
      message_retention_duration;
      name;
      retain_acked_messages;
      topic;
      bigquery_config;
      cloud_storage_config;
      dead_letter_policy;
      expiration_policy;
      push_config;
      retry_policy;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_pubsub_subscription __resource);
  ()
