(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_storage_transfer_job__event_stream = {
  event_stream_expiration_time : string option; [@option]
      (** Specifies the data and time at which Storage Transfer Service stops listening for events from this stream. After this time, any transfers in progress will complete, but no new transfers are initiated *)
  event_stream_start_time : string option; [@option]
      (** Specifies the date and time that Storage Transfer Service starts listening for events from this stream. If no start time is specified or start time is in the past, Storage Transfer Service starts listening immediately *)
  name : string;
      (** Specifies a unique name of the resource such as AWS SQS ARN in the form 'arn:aws:sqs:region:account_id:queue_name', or Pub/Sub subscription resource name in the form 'projects/{project}/subscriptions/{sub}' *)
}
[@@deriving yojson_of]
(** google_storage_transfer_job__event_stream *)

type google_storage_transfer_job__notification_config = {
  event_types : string list option; [@option]
      (** Event types for which a notification is desired. If empty, send notifications for all event types. The valid types are TRANSFER_OPERATION_SUCCESS, TRANSFER_OPERATION_FAILED, TRANSFER_OPERATION_ABORTED. *)
  payload_format : string;
      (** The desired format of the notification message payloads. One of NONE or JSON. *)
  pubsub_topic : string;
      (** The Topic.name of the Pub/Sub topic to which to publish notifications. *)
}
[@@deriving yojson_of]
(** Notification configuration. *)

type google_storage_transfer_job__schedule__schedule_end_date = {
  day : float;
      (** Day of month. Must be from 1 to 31 and valid for the year and month. *)
  month : float;  (** Month of year. Must be from 1 to 12. *)
  year : float;  (** Year of date. Must be from 1 to 9999. *)
}
[@@deriving yojson_of]
(** The last day the recurring transfer will be run. If schedule_end_date is the same as schedule_start_date, the transfer will be executed only once. *)

type google_storage_transfer_job__schedule__schedule_start_date = {
  day : float;
      (** Day of month. Must be from 1 to 31 and valid for the year and month. *)
  month : float;  (** Month of year. Must be from 1 to 12. *)
  year : float;  (** Year of date. Must be from 1 to 9999. *)
}
[@@deriving yojson_of]
(** The first day the recurring transfer is scheduled to run. If schedule_start_date is in the past, the transfer will run for the first time on the following day. *)

type google_storage_transfer_job__schedule__start_time_of_day = {
  hours : float;
      (** Hours of day in 24 hour format. Should be from 0 to 23. *)
  minutes : float;
      (** Minutes of hour of day. Must be from 0 to 59. *)
  nanos : float;
      (** Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. *)
  seconds : float;
      (** Seconds of minutes of the time. Must normally be from 0 to 59. *)
}
[@@deriving yojson_of]
(** The time in UTC at which the transfer will be scheduled to start in a day. Transfers may start later than this time. If not specified, recurring and one-time transfers that are scheduled to run today will run immediately; recurring transfers that are scheduled to run on a future date will start at approximately midnight UTC on that date. Note that when configuring a transfer with the Cloud Platform Console, the transfer's start time in a day is specified in your local timezone. *)

type google_storage_transfer_job__schedule = {
  repeat_interval : string option; [@option]
      (** Interval between the start of each scheduled transfer. If unspecified, the default value is 24 hours. This value may not be less than 1 hour. A duration in seconds with up to nine fractional digits, terminated by 's'. Example: 3.5s. *)
  schedule_end_date :
    google_storage_transfer_job__schedule__schedule_end_date list;
  schedule_start_date :
    google_storage_transfer_job__schedule__schedule_start_date list;
  start_time_of_day :
    google_storage_transfer_job__schedule__start_time_of_day list;
}
[@@deriving yojson_of]
(** Schedule specification defining when the Transfer Job should be scheduled to start, end and what time to run. *)

type google_storage_transfer_job__transfer_spec__aws_s3_data_source__aws_access_key = {
  access_key_id : string;  (** AWS Key ID. *)
  secret_access_key : string;  (** AWS Secret Access Key. *)
}
[@@deriving yojson_of]
(** AWS credentials block. *)

type google_storage_transfer_job__transfer_spec__aws_s3_data_source = {
  bucket_name : string;  (** S3 Bucket name. *)
  path : string option; [@option]
      (** S3 Bucket path in bucket to transfer. *)
  role_arn : string option; [@option]
      (** The Amazon Resource Name (ARN) of the role to support temporary credentials via 'AssumeRoleWithWebIdentity'. For more information about ARNs, see [IAM ARNs](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns). When a role ARN is provided, Transfer Service fetches temporary credentials for the session using a 'AssumeRoleWithWebIdentity' call for the provided role using the [GoogleServiceAccount][] for this project. *)
  aws_access_key :
    google_storage_transfer_job__transfer_spec__aws_s3_data_source__aws_access_key
    list;
}
[@@deriving yojson_of]
(** An AWS S3 data source. *)

type google_storage_transfer_job__transfer_spec__azure_blob_storage_data_source__azure_credentials = {
  sas_token : string;  (** Azure shared access signature. *)
}
[@@deriving yojson_of]
(**  Credentials used to authenticate API requests to Azure. *)

type google_storage_transfer_job__transfer_spec__azure_blob_storage_data_source = {
  container : string;
      (** The container to transfer from the Azure Storage account. *)
  path : string option; [@option]
      (** Root path to transfer objects. Must be an empty string or full path name that ends with a '/'. This field is treated as an object prefix. As such, it should generally not begin with a '/'. *)
  storage_account : string;
      (** The name of the Azure Storage account. *)
  azure_credentials :
    google_storage_transfer_job__transfer_spec__azure_blob_storage_data_source__azure_credentials
    list;
}
[@@deriving yojson_of]
(** An Azure Blob Storage data source. *)

type google_storage_transfer_job__transfer_spec__gcs_data_sink = {
  bucket_name : string;  (** Google Cloud Storage bucket name. *)
  path : string option; [@option]
      (** Google Cloud Storage path in bucket to transfer *)
}
[@@deriving yojson_of]
(** A Google Cloud Storage data sink. *)

type google_storage_transfer_job__transfer_spec__gcs_data_source = {
  bucket_name : string;  (** Google Cloud Storage bucket name. *)
  path : string option; [@option]
      (** Google Cloud Storage path in bucket to transfer *)
}
[@@deriving yojson_of]
(** A Google Cloud Storage data source. *)

type google_storage_transfer_job__transfer_spec__http_data_source = {
  list_url : string;
      (** The URL that points to the file that stores the object list entries. This file must allow public access. Currently, only URLs with HTTP and HTTPS schemes are supported. *)
}
[@@deriving yojson_of]
(** A HTTP URL data source. *)

type google_storage_transfer_job__transfer_spec__object_conditions = {
  exclude_prefixes : string list option; [@option]
      (** exclude_prefixes must follow the requirements described for include_prefixes. *)
  include_prefixes : string list option; [@option]
      (** If include_refixes is specified, objects that satisfy the object conditions must have names that start with one of the include_prefixes and that do not start with any of the exclude_prefixes. If include_prefixes is not specified, all objects except those that have names starting with one of the exclude_prefixes must satisfy the object conditions. *)
  last_modified_before : string option; [@option]
      (** If specified, only objects with a last modification time before this timestamp and objects that don't have a last modification time are transferred. A timestamp in RFC3339 UTC Zulu format, with nanosecond resolution and up to nine fractional digits. Examples: 2014-10-02T15:01:23Z and 2014-10-02T15:01:23.045123456Z. *)
  last_modified_since : string option; [@option]
      (** If specified, only objects with a last modification time on or after this timestamp and objects that don't have a last modification time are transferred. A timestamp in RFC3339 UTC Zulu format, with nanosecond resolution and up to nine fractional digits. Examples: 2014-10-02T15:01:23Z and 2014-10-02T15:01:23.045123456Z. *)
  max_time_elapsed_since_last_modification : string option; [@option]
      (** A duration in seconds with up to nine fractional digits, terminated by 's'. Example: 3.5s. *)
  min_time_elapsed_since_last_modification : string option; [@option]
      (** A duration in seconds with up to nine fractional digits, terminated by 's'. Example: 3.5s. *)
}
[@@deriving yojson_of]
(** Only objects that satisfy these object conditions are included in the set of data source and data sink objects. Object conditions based on objects' last_modification_time do not exclude objects in a data sink. *)

type google_storage_transfer_job__transfer_spec__posix_data_sink = {
  root_directory : string;
      (** Root directory path to the filesystem. *)
}
[@@deriving yojson_of]
(** A POSIX filesystem data sink. *)

type google_storage_transfer_job__transfer_spec__posix_data_source = {
  root_directory : string;
      (** Root directory path to the filesystem. *)
}
[@@deriving yojson_of]
(** A POSIX filesystem data source. *)

type google_storage_transfer_job__transfer_spec__transfer_options = {
  delete_objects_from_source_after_transfer : bool option; [@option]
      (** Whether objects should be deleted from the source after they are transferred to the sink. Note that this option and delete_objects_unique_in_sink are mutually exclusive. *)
  delete_objects_unique_in_sink : bool option; [@option]
      (** Whether objects that exist only in the sink should be deleted. Note that this option and delete_objects_from_source_after_transfer are mutually exclusive. *)
  overwrite_objects_already_existing_in_sink : bool option; [@option]
      (** Whether overwriting objects that already exist in the sink is allowed. *)
  overwrite_when : string option; [@option]
      (** When to overwrite objects that already exist in the sink. If not set, overwrite behavior is determined by overwriteObjectsAlreadyExistingInSink. *)
}
[@@deriving yojson_of]
(** Characteristics of how to treat files from datasource and sink during job. If the option delete_objects_unique_in_sink is true, object conditions based on objects' last_modification_time are ignored and do not exclude objects in a data source or a data sink. *)

type google_storage_transfer_job__transfer_spec = {
  sink_agent_pool_name : string option; [@option]
      (** Specifies the agent pool name associated with the posix data source. When unspecified, the default name is used. *)
  source_agent_pool_name : string option; [@option]
      (** Specifies the agent pool name associated with the posix data source. When unspecified, the default name is used. *)
  aws_s3_data_source :
    google_storage_transfer_job__transfer_spec__aws_s3_data_source
    list;
  azure_blob_storage_data_source :
    google_storage_transfer_job__transfer_spec__azure_blob_storage_data_source
    list;
  gcs_data_sink :
    google_storage_transfer_job__transfer_spec__gcs_data_sink list;
  gcs_data_source :
    google_storage_transfer_job__transfer_spec__gcs_data_source list;
  http_data_source :
    google_storage_transfer_job__transfer_spec__http_data_source list;
  object_conditions :
    google_storage_transfer_job__transfer_spec__object_conditions
    list;
  posix_data_sink :
    google_storage_transfer_job__transfer_spec__posix_data_sink list;
  posix_data_source :
    google_storage_transfer_job__transfer_spec__posix_data_source
    list;
  transfer_options :
    google_storage_transfer_job__transfer_spec__transfer_options list;
}
[@@deriving yojson_of]
(** Transfer specification. *)

type google_storage_transfer_job = {
  description : string;
      (** Unique description to identify the Transfer Job. *)
  status : string option; [@option]
      (** Status of the job. Default: ENABLED. NOTE: The effect of the new job status takes place during a subsequent job run. For example, if you change the job status from ENABLED to DISABLED, and an operation spawned by the transfer is running, the status change would not affect the current operation. *)
  event_stream : google_storage_transfer_job__event_stream list;
  notification_config :
    google_storage_transfer_job__notification_config list;
  schedule : google_storage_transfer_job__schedule list;
  transfer_spec : google_storage_transfer_job__transfer_spec list;
}
[@@deriving yojson_of]
(** google_storage_transfer_job *)

let google_storage_transfer_job ?status ~description ~event_stream
    ~notification_config ~schedule ~transfer_spec __resource_id =
  let __resource_type = "google_storage_transfer_job" in
  let __resource =
    {
      description;
      status;
      event_stream;
      notification_config;
      schedule;
      transfer_spec;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_storage_transfer_job __resource);
  ()
