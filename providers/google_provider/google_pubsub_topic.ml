(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_pubsub_topic__message_storage_policy = {
  allowed_persistence_regions : string list;
      (** A list of IDs of GCP regions where messages that are published to
the topic may be persisted in storage. Messages published by
publishers running in non-allowed GCP regions (or running outside
of GCP altogether) will be routed for storage in one of the
allowed regions. An empty list means that no regions are allowed,
and is not a valid configuration. *)
}
[@@deriving yojson_of]
(** Policy constraining the set of Google Cloud Platform regions where
messages published to the topic may be stored. If not present, then no
constraints are in effect. *)

type google_pubsub_topic__schema_settings = {
  encoding : string option; [@option]
      (** The encoding of messages validated against schema. Default value: ENCODING_UNSPECIFIED Possible values: [ENCODING_UNSPECIFIED, JSON, BINARY] *)
  schema : string;
      (** The name of the schema that messages published should be
validated against. Format is projects/{project}/schemas/{schema}.
The value of this field will be _deleted-schema_
if the schema has been deleted. *)
}
[@@deriving yojson_of]
(** Settings for validating messages published against a schema. *)

type google_pubsub_topic__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_pubsub_topic__timeouts *)

type google_pubsub_topic = {
  kms_key_name : string option; [@option]
      (** The resource name of the Cloud KMS CryptoKey to be used to protect access
to messages published on this topic. Your project's PubSub service account
('service-{{PROJECT_NUMBER}}@gcp-sa-pubsub.iam.gserviceaccount.com') must have
'roles/cloudkms.cryptoKeyEncrypterDecrypter' to use this feature.
The expected format is 'projects/*/locations/*/keyRings/*/cryptoKeys/*' *)
  labels : (string * string) list option; [@option]
      (** A set of key/value label pairs to assign to this Topic.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  message_retention_duration : string option; [@option]
      (** Indicates the minimum duration to retain a message after it is published
to the topic. If this field is set, messages published to the topic in
the last messageRetentionDuration are always available to subscribers.
For instance, it allows any attached subscription to seek to a timestamp
that is up to messageRetentionDuration in the past. If this field is not
set, message retention is controlled by settings on individual subscriptions.
The rotation period has the format of a decimal number, followed by the
letter 's' (seconds). Cannot be more than 31 days or less than 10 minutes. *)
  name : string;  (** Name of the topic. *)
  message_storage_policy :
    google_pubsub_topic__message_storage_policy list;
  schema_settings : google_pubsub_topic__schema_settings list;
  timeouts : google_pubsub_topic__timeouts option;
}
[@@deriving yojson_of]
(** google_pubsub_topic *)

let google_pubsub_topic ?kms_key_name ?labels
    ?message_retention_duration ?timeouts ~name
    ~message_storage_policy ~schema_settings __resource_id =
  let __resource_type = "google_pubsub_topic" in
  let __resource =
    {
      kms_key_name;
      labels;
      message_retention_duration;
      name;
      message_storage_policy;
      schema_settings;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_pubsub_topic __resource);
  ()
