(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_storage_bucket__autoclass = {
  enabled : bool prop;
      (** While set to true, autoclass automatically transitions objects in your bucket to appropriate storage classes based on each object's access pattern. *)
  terminal_storage_class : string prop option; [@option]
      (** The storage class that objects in the bucket eventually transition to if they are not read for a certain length of time. Supported values include: NEARLINE, ARCHIVE. *)
}
[@@deriving yojson_of]
(** The bucket's autoclass configuration. *)

type google_storage_bucket__cors = {
  max_age_seconds : float prop option; [@option]
      (** The value, in seconds, to return in the Access-Control-Max-Age header used in preflight responses. *)
  method_ : string prop list option; [@option] [@key "method"]
      (** The list of HTTP methods on which to include CORS response headers, (GET, OPTIONS, POST, etc) Note: * is permitted in the list of methods, and means any method. *)
  origin : string prop list option; [@option]
      (** The list of Origins eligible to receive CORS response headers. Note: * is permitted in the list of origins, and means any Origin. *)
  response_header : string prop list option; [@option]
      (** The list of HTTP headers other than the simple response headers to give permission for the user-agent to share across domains. *)
}
[@@deriving yojson_of]
(** The bucket's Cross-Origin Resource Sharing (CORS) configuration. *)

type google_storage_bucket__custom_placement_config = {
  data_locations : string prop list;
      (** The list of individual regions that comprise a dual-region bucket. See the docs for a list of acceptable regions. Note: If any of the data_locations changes, it will recreate the bucket. *)
}
[@@deriving yojson_of]
(** The bucket's custom location configuration, which specifies the individual regions that comprise a dual-region bucket. If the bucket is designated a single or multi-region, the parameters are empty. *)

type google_storage_bucket__encryption = {
  default_kms_key_name : string prop;
      (** A Cloud KMS key that will be used to encrypt objects inserted into this bucket, if no encryption method is specified. You must pay attention to whether the crypto key is available in the location that this bucket is created in. See the docs for more details. *)
}
[@@deriving yojson_of]
(** The bucket's encryption configuration. *)

type google_storage_bucket__lifecycle_rule__action = {
  storage_class : string prop option; [@option]
      (** The target Storage Class of objects affected by this Lifecycle Rule. Supported values include: MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE. *)
  type_ : string prop; [@key "type"]
      (** The type of the action of this Lifecycle Rule. Supported values include: Delete, SetStorageClass and AbortIncompleteMultipartUpload. *)
}
[@@deriving yojson_of]
(** The Lifecycle Rule's action configuration. A single block of this type is supported. *)

type google_storage_bucket__lifecycle_rule__condition = {
  age : float prop option; [@option]
      (** Minimum age of an object in days to satisfy this condition. *)
  created_before : string prop option; [@option]
      (** Creation date of an object in RFC 3339 (e.g. 2017-06-13) to satisfy this condition. *)
  custom_time_before : string prop option; [@option]
      (** Creation date of an object in RFC 3339 (e.g. 2017-06-13) to satisfy this condition. *)
  days_since_custom_time : float prop option; [@option]
      (** Number of days elapsed since the user-specified timestamp set on an object. *)
  days_since_noncurrent_time : float prop option; [@option]
      (** Number of days elapsed since the noncurrent timestamp of an object. This
										condition is relevant only for versioned objects. *)
  matches_prefix : string prop list option; [@option]
      (** One or more matching name prefixes to satisfy this condition. *)
  matches_storage_class : string prop list option; [@option]
      (** Storage Class of objects to satisfy this condition. Supported values include: MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE, STANDARD, DURABLE_REDUCED_AVAILABILITY. *)
  matches_suffix : string prop list option; [@option]
      (** One or more matching name suffixes to satisfy this condition. *)
  no_age : bool prop option; [@option]
      (** While set true, age value will be omitted.Required to set true when age is unset in the config file. *)
  noncurrent_time_before : string prop option; [@option]
      (** Creation date of an object in RFC 3339 (e.g. 2017-06-13) to satisfy this condition. *)
  num_newer_versions : float prop option; [@option]
      (** Relevant only for versioned objects. The number of newer versions of an object to satisfy this condition. *)
  with_state : string prop option; [@option]
      (** Match to live and/or archived objects. Unversioned buckets have only live objects. Supported values include: LIVE, ARCHIVED, ANY. *)
}
[@@deriving yojson_of]
(** The Lifecycle Rule's condition configuration. *)

type google_storage_bucket__lifecycle_rule = {
  action : google_storage_bucket__lifecycle_rule__action list;
  condition : google_storage_bucket__lifecycle_rule__condition list;
}
[@@deriving yojson_of]
(** The bucket's Lifecycle Rules configuration. *)

type google_storage_bucket__logging = {
  log_bucket : string prop;
      (** The bucket that will receive log objects. *)
  log_object_prefix : string prop option; [@option]
      (** The object prefix for log objects. If it's not provided, by default Google Cloud Storage sets this to this bucket's name. *)
}
[@@deriving yojson_of]
(** The bucket's Access & Storage Logs configuration. *)

type google_storage_bucket__retention_policy = {
  is_locked : bool prop option; [@option]
      (** If set to true, the bucket will be locked and permanently restrict edits to the bucket's retention policy.  Caution: Locking a bucket is an irreversible action. *)
  retention_period : float prop;
      (** The period of time, in seconds, that objects in the bucket must be retained and cannot be deleted, overwritten, or archived. The value must be less than 3,155,760,000 seconds. *)
}
[@@deriving yojson_of]
(** Configuration of the bucket's data retention policy for how long objects in the bucket should be retained. *)

type google_storage_bucket__timeouts = {
  create : string prop option; [@option]  (** create *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_storage_bucket__timeouts *)

type google_storage_bucket__versioning = {
  enabled : bool prop;
      (** While set to true, versioning is fully enabled for this bucket. *)
}
[@@deriving yojson_of]
(** The bucket's Versioning configuration. *)

type google_storage_bucket__website = {
  main_page_suffix : string prop option; [@option]
      (** Behaves as the bucket's directory index where missing objects are treated as potential directories. *)
  not_found_page : string prop option; [@option]
      (** The custom object to return when a requested resource is not found. *)
}
[@@deriving yojson_of]
(** Configuration if the bucket acts as a website. *)

type google_storage_bucket = {
  default_event_based_hold : bool prop option; [@option]
      (** Whether or not to automatically apply an eventBasedHold to new objects added to the bucket. *)
  enable_object_retention : bool prop option; [@option]
      (** Enables each object in the bucket to have its own retention policy, which prevents deletion until stored for a specific length of time. *)
  force_destroy : bool prop option; [@option]
      (** When deleting a bucket, this boolean option will delete all contained objects. If you try to delete a bucket that contains objects, Terraform will fail that run. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** A set of key/value label pairs to assign to the bucket. *)
  location : string prop;  (** The Google Cloud Storage location *)
  name : string prop;  (** The name of the bucket. *)
  project : string prop option; [@option]
      (** The ID of the project in which the resource belongs. If it is not provided, the provider project is used. *)
  public_access_prevention : string prop option; [@option]
      (** Prevents public access to a bucket. *)
  requester_pays : bool prop option; [@option]
      (** Enables Requester Pays on a storage bucket. *)
  rpo : string prop option; [@option]
      (** Specifies the RPO setting of bucket. If set 'ASYNC_TURBO', The Turbo Replication will be enabled for the dual-region bucket. Value 'DEFAULT' will set RPO setting to default. Turbo Replication is only for buckets in dual-regions.See the docs for more details. *)
  storage_class : string prop option; [@option]
      (** The Storage Class of the new bucket. Supported values include: STANDARD, MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE. *)
  uniform_bucket_level_access : bool prop option; [@option]
      (** Enables uniform bucket-level access on a bucket. *)
  autoclass : google_storage_bucket__autoclass list;
  cors : google_storage_bucket__cors list;
  custom_placement_config :
    google_storage_bucket__custom_placement_config list;
  encryption : google_storage_bucket__encryption list;
  lifecycle_rule : google_storage_bucket__lifecycle_rule list;
  logging : google_storage_bucket__logging list;
  retention_policy : google_storage_bucket__retention_policy list;
  timeouts : google_storage_bucket__timeouts option;
  versioning : google_storage_bucket__versioning list;
  website : google_storage_bucket__website list;
}
[@@deriving yojson_of]
(** google_storage_bucket *)

type t = {
  default_event_based_hold : bool prop;
  effective_labels : (string * string) list prop;
  enable_object_retention : bool prop;
  force_destroy : bool prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  public_access_prevention : string prop;
  requester_pays : bool prop;
  rpo : string prop;
  self_link : string prop;
  storage_class : string prop;
  terraform_labels : (string * string) list prop;
  uniform_bucket_level_access : bool prop;
  url : string prop;
}

let google_storage_bucket ?default_event_based_hold
    ?enable_object_retention ?force_destroy ?id ?labels ?project
    ?public_access_prevention ?requester_pays ?rpo ?storage_class
    ?uniform_bucket_level_access ?timeouts ~location ~name ~autoclass
    ~cors ~custom_placement_config ~encryption ~lifecycle_rule
    ~logging ~retention_policy ~versioning ~website __resource_id =
  let __resource_type = "google_storage_bucket" in
  let __resource =
    ({
       default_event_based_hold;
       enable_object_retention;
       force_destroy;
       id;
       labels;
       location;
       name;
       project;
       public_access_prevention;
       requester_pays;
       rpo;
       storage_class;
       uniform_bucket_level_access;
       autoclass;
       cors;
       custom_placement_config;
       encryption;
       lifecycle_rule;
       logging;
       retention_policy;
       timeouts;
       versioning;
       website;
     }
      : google_storage_bucket)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_storage_bucket __resource);
  let __resource_attributes =
    ({
       default_event_based_hold =
         Prop.computed __resource_type __resource_id
           "default_event_based_hold";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       enable_object_retention =
         Prop.computed __resource_type __resource_id
           "enable_object_retention";
       force_destroy =
         Prop.computed __resource_type __resource_id "force_destroy";
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       public_access_prevention =
         Prop.computed __resource_type __resource_id
           "public_access_prevention";
       requester_pays =
         Prop.computed __resource_type __resource_id "requester_pays";
       rpo = Prop.computed __resource_type __resource_id "rpo";
       self_link =
         Prop.computed __resource_type __resource_id "self_link";
       storage_class =
         Prop.computed __resource_type __resource_id "storage_class";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
       uniform_bucket_level_access =
         Prop.computed __resource_type __resource_id
           "uniform_bucket_level_access";
       url = Prop.computed __resource_type __resource_id "url";
     }
      : t)
  in
  __resource_attributes
