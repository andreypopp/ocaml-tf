(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_secret_manager_secret__replication__auto__customer_managed_encryption = {
  kms_key_name : string prop;
      (** The resource name of the Cloud KMS CryptoKey used to encrypt secret payloads. *)
}
[@@deriving yojson_of]
(** The customer-managed encryption configuration of the Secret.
If no configuration is provided, Google-managed default
encryption is used. *)

type google_secret_manager_secret__replication__auto = {
  customer_managed_encryption :
    google_secret_manager_secret__replication__auto__customer_managed_encryption
    list;
}
[@@deriving yojson_of]
(** The Secret will automatically be replicated without any restrictions. *)

type google_secret_manager_secret__replication__user_managed__replicas__customer_managed_encryption = {
  kms_key_name : string prop;
      (** Describes the Cloud KMS encryption key that will be used to protect destination secret. *)
}
[@@deriving yojson_of]
(** Customer Managed Encryption for the secret. *)

type google_secret_manager_secret__replication__user_managed__replicas = {
  location : string prop;
      (** The canonical IDs of the location to replicate data. For example: us-east1. *)
  customer_managed_encryption :
    google_secret_manager_secret__replication__user_managed__replicas__customer_managed_encryption
    list;
}
[@@deriving yojson_of]
(** The list of Replicas for this Secret. Cannot be empty. *)

type google_secret_manager_secret__replication__user_managed = {
  replicas :
    google_secret_manager_secret__replication__user_managed__replicas
    list;
}
[@@deriving yojson_of]
(** The Secret will be replicated to the regions specified by the user. *)

type google_secret_manager_secret__replication = {
  auto : google_secret_manager_secret__replication__auto list;
  user_managed :
    google_secret_manager_secret__replication__user_managed list;
}
[@@deriving yojson_of]
(** The replication policy of the secret data attached to the Secret. It cannot be changed
after the Secret has been created. *)

type google_secret_manager_secret__rotation = {
  next_rotation_time : string prop option; [@option]
      (** Timestamp in UTC at which the Secret is scheduled to rotate.
A timestamp in RFC3339 UTC Zulu format, with nanosecond resolution and up to nine fractional digits. Examples: 2014-10-02T15:01:23Z and 2014-10-02T15:01:23.045123456Z. *)
  rotation_period : string prop option; [@option]
      (** The Duration between rotation notifications. Must be in seconds and at least 3600s (1h) and at most 3153600000s (100 years).
If rotationPeriod is set, 'next_rotation_time' must be set. 'next_rotation_time' will be advanced by this period when the service automatically sends rotation notifications. *)
}
[@@deriving yojson_of]
(** The rotation time and period for a Secret. At 'next_rotation_time', Secret Manager will send a Pub/Sub notification to the topics configured on the Secret. 'topics' must be set to configure rotation. *)

type google_secret_manager_secret__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_secret_manager_secret__timeouts *)

type google_secret_manager_secret__topics = {
  name : string prop;
      (** The resource name of the Pub/Sub topic that will be published to, in the following format: projects/*/topics/*.
For publication to succeed, the Secret Manager Service Agent service account must have pubsub.publisher permissions on the topic. *)
}
[@@deriving yojson_of]
(** A list of up to 10 Pub/Sub topics to which messages are published when control plane operations are called on the secret or its versions. *)

type google_secret_manager_secret = {
  annotations : (string * string prop) list option; [@option]
      (** Custom metadata about the secret.

Annotations are distinct from various forms of labels. Annotations exist to allow
client tools to store their own state information without requiring a database.

Annotation keys must be between 1 and 63 characters long, have a UTF-8 encoding of
maximum 128 bytes, begin and end with an alphanumeric character ([a-z0-9A-Z]), and
may have dashes (-), underscores (_), dots (.), and alphanumerics in between these
symbols.

The total size of annotation keys and values must be less than 16KiB.

An object containing a list of key: value pairs. Example:
{ name: wrench, mass: 1.3kg, count: 3 }.


**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field 'effective_annotations' for all of the annotations present on the resource. *)
  expire_time : string prop option; [@option]
      (** Timestamp in UTC when the Secret is scheduled to expire. This is always provided on output, regardless of what was sent on input.
A timestamp in RFC3339 UTC Zulu format, with nanosecond resolution and up to nine fractional digits. Examples: 2014-10-02T15:01:23Z and 2014-10-02T15:01:23.045123456Z.
Only one of 'expire_time' or 'ttl' can be provided. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** The labels assigned to this Secret.

Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes,
and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}

Label values must be between 0 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes,
and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}

No more than 64 labels can be assigned to a given resource.

An object containing a list of key: value pairs. Example:
{ name: wrench, mass: 1.3kg, count: 3 }.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  project : string prop option; [@option]  (** project *)
  secret_id : string prop;
      (** This must be unique within the project. *)
  ttl : string prop option; [@option]
      (** The TTL for the Secret.
A duration in seconds with up to nine fractional digits, terminated by 's'. Example: 3.5s.
Only one of 'ttl' or 'expire_time' can be provided. *)
  version_aliases : (string * string prop) list option; [@option]
      (** Mapping from version alias to version name.

A version alias is a string with a maximum length of 63 characters and can contain
uppercase and lowercase letters, numerals, and the hyphen (-) and underscore ('_')
characters. An alias string must start with a letter and cannot be the string
'latest' or 'NEW'. No more than 50 aliases can be assigned to a given secret.

An object containing a list of key: value pairs. Example:
{ name: wrench, mass: 1.3kg, count: 3 }. *)
  replication : google_secret_manager_secret__replication list;
  rotation : google_secret_manager_secret__rotation list;
  timeouts : google_secret_manager_secret__timeouts option;
  topics : google_secret_manager_secret__topics list;
}
[@@deriving yojson_of]
(** google_secret_manager_secret *)

type t = {
  annotations : (string * string) list prop;
  create_time : string prop;
  effective_annotations : (string * string) list prop;
  effective_labels : (string * string) list prop;
  expire_time : string prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  secret_id : string prop;
  terraform_labels : (string * string) list prop;
  ttl : string prop;
  version_aliases : (string * string) list prop;
}

let google_secret_manager_secret ?annotations ?expire_time ?id
    ?labels ?project ?ttl ?version_aliases ?timeouts ~secret_id
    ~replication ~rotation ~topics __resource_id =
  let __resource_type = "google_secret_manager_secret" in
  let __resource =
    ({
       annotations;
       expire_time;
       id;
       labels;
       project;
       secret_id;
       ttl;
       version_aliases;
       replication;
       rotation;
       timeouts;
       topics;
     }
      : google_secret_manager_secret)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_secret_manager_secret __resource);
  let __resource_attributes =
    ({
       annotations =
         Prop.computed __resource_type __resource_id "annotations";
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       effective_annotations =
         Prop.computed __resource_type __resource_id
           "effective_annotations";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       expire_time =
         Prop.computed __resource_type __resource_id "expire_time";
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       secret_id =
         Prop.computed __resource_type __resource_id "secret_id";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
       ttl = Prop.computed __resource_type __resource_id "ttl";
       version_aliases =
         Prop.computed __resource_type __resource_id
           "version_aliases";
     }
      : t)
  in
  __resource_attributes
