(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type event_stream = {
  event_stream_expiration_time : string prop option; [@option]
      (** Specifies the data and time at which Storage Transfer Service stops listening for events from this stream. After this time, any transfers in progress will complete, but no new transfers are initiated *)
  event_stream_start_time : string prop option; [@option]
      (** Specifies the date and time that Storage Transfer Service starts listening for events from this stream. If no start time is specified or start time is in the past, Storage Transfer Service starts listening immediately *)
  name : string prop;
      (** Specifies a unique name of the resource such as AWS SQS ARN in the form 'arn:aws:sqs:region:account_id:queue_name', or Pub/Sub subscription resource name in the form 'projects/{project}/subscriptions/{sub}' *)
}
[@@deriving yojson_of]
(** event_stream *)

type notification_config = {
  event_types : string prop list option; [@option]
      (** Event types for which a notification is desired. If empty, send notifications for all event types. The valid types are TRANSFER_OPERATION_SUCCESS, TRANSFER_OPERATION_FAILED, TRANSFER_OPERATION_ABORTED. *)
  payload_format : string prop;
      (** The desired format of the notification message payloads. One of NONE or JSON. *)
  pubsub_topic : string prop;
      (** The Topic.name of the Pub/Sub topic to which to publish notifications. *)
}
[@@deriving yojson_of]
(** Notification configuration. *)

type schedule__schedule_end_date = {
  day : float prop;
      (** Day of month. Must be from 1 to 31 and valid for the year and month. *)
  month : float prop;  (** Month of year. Must be from 1 to 12. *)
  year : float prop;  (** Year of date. Must be from 1 to 9999. *)
}
[@@deriving yojson_of]
(** The last day the recurring transfer will be run. If schedule_end_date is the same as schedule_start_date, the transfer will be executed only once. *)

type schedule__schedule_start_date = {
  day : float prop;
      (** Day of month. Must be from 1 to 31 and valid for the year and month. *)
  month : float prop;  (** Month of year. Must be from 1 to 12. *)
  year : float prop;  (** Year of date. Must be from 1 to 9999. *)
}
[@@deriving yojson_of]
(** The first day the recurring transfer is scheduled to run. If schedule_start_date is in the past, the transfer will run for the first time on the following day. *)

type schedule__start_time_of_day = {
  hours : float prop;
      (** Hours of day in 24 hour format. Should be from 0 to 23. *)
  minutes : float prop;
      (** Minutes of hour of day. Must be from 0 to 59. *)
  nanos : float prop;
      (** Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. *)
  seconds : float prop;
      (** Seconds of minutes of the time. Must normally be from 0 to 59. *)
}
[@@deriving yojson_of]
(** The time in UTC at which the transfer will be scheduled to start in a day. Transfers may start later than this time. If not specified, recurring and one-time transfers that are scheduled to run today will run immediately; recurring transfers that are scheduled to run on a future date will start at approximately midnight UTC on that date. Note that when configuring a transfer with the Cloud Platform Console, the transfer's start time in a day is specified in your local timezone. *)

type schedule = {
  repeat_interval : string prop option; [@option]
      (** Interval between the start of each scheduled transfer. If unspecified, the default value is 24 hours. This value may not be less than 1 hour. A duration in seconds with up to nine fractional digits, terminated by 's'. Example: 3.5s. *)
  schedule_end_date : schedule__schedule_end_date list;
  schedule_start_date : schedule__schedule_start_date list;
  start_time_of_day : schedule__start_time_of_day list;
}
[@@deriving yojson_of]
(** Schedule specification defining when the Transfer Job should be scheduled to start, end and what time to run. *)

type transfer_spec__aws_s3_data_source__aws_access_key = {
  access_key_id : string prop;  (** AWS Key ID. *)
  secret_access_key : string prop;  (** AWS Secret Access Key. *)
}
[@@deriving yojson_of]
(** AWS credentials block. *)

type transfer_spec__aws_s3_data_source = {
  bucket_name : string prop;  (** S3 Bucket name. *)
  path : string prop option; [@option]
      (** S3 Bucket path in bucket to transfer. *)
  role_arn : string prop option; [@option]
      (** The Amazon Resource Name (ARN) of the role to support temporary credentials via 'AssumeRoleWithWebIdentity'. For more information about ARNs, see [IAM ARNs](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns). When a role ARN is provided, Transfer Service fetches temporary credentials for the session using a 'AssumeRoleWithWebIdentity' call for the provided role using the [GoogleServiceAccount][] for this project. *)
  aws_access_key :
    transfer_spec__aws_s3_data_source__aws_access_key list;
}
[@@deriving yojson_of]
(** An AWS S3 data source. *)

type transfer_spec__azure_blob_storage_data_source__azure_credentials = {
  sas_token : string prop;  (** Azure shared access signature. *)
}
[@@deriving yojson_of]
(**  Credentials used to authenticate API requests to Azure. *)

type transfer_spec__azure_blob_storage_data_source = {
  container : string prop;
      (** The container to transfer from the Azure Storage account. *)
  path : string prop option; [@option]
      (** Root path to transfer objects. Must be an empty string or full path name that ends with a '/'. This field is treated as an object prefix. As such, it should generally not begin with a '/'. *)
  storage_account : string prop;
      (** The name of the Azure Storage account. *)
  azure_credentials :
    transfer_spec__azure_blob_storage_data_source__azure_credentials
    list;
}
[@@deriving yojson_of]
(** An Azure Blob Storage data source. *)

type transfer_spec__gcs_data_sink = {
  bucket_name : string prop;
      (** Google Cloud Storage bucket name. *)
  path : string prop option; [@option]
      (** Google Cloud Storage path in bucket to transfer *)
}
[@@deriving yojson_of]
(** A Google Cloud Storage data sink. *)

type transfer_spec__gcs_data_source = {
  bucket_name : string prop;
      (** Google Cloud Storage bucket name. *)
  path : string prop option; [@option]
      (** Google Cloud Storage path in bucket to transfer *)
}
[@@deriving yojson_of]
(** A Google Cloud Storage data source. *)

type transfer_spec__http_data_source = {
  list_url : string prop;
      (** The URL that points to the file that stores the object list entries. This file must allow public access. Currently, only URLs with HTTP and HTTPS schemes are supported. *)
}
[@@deriving yojson_of]
(** A HTTP URL data source. *)

type transfer_spec__object_conditions = {
  exclude_prefixes : string prop list option; [@option]
      (** exclude_prefixes must follow the requirements described for include_prefixes. *)
  include_prefixes : string prop list option; [@option]
      (** If include_refixes is specified, objects that satisfy the object conditions must have names that start with one of the include_prefixes and that do not start with any of the exclude_prefixes. If include_prefixes is not specified, all objects except those that have names starting with one of the exclude_prefixes must satisfy the object conditions. *)
  last_modified_before : string prop option; [@option]
      (** If specified, only objects with a last modification time before this timestamp and objects that don't have a last modification time are transferred. A timestamp in RFC3339 UTC Zulu format, with nanosecond resolution and up to nine fractional digits. Examples: 2014-10-02T15:01:23Z and 2014-10-02T15:01:23.045123456Z. *)
  last_modified_since : string prop option; [@option]
      (** If specified, only objects with a last modification time on or after this timestamp and objects that don't have a last modification time are transferred. A timestamp in RFC3339 UTC Zulu format, with nanosecond resolution and up to nine fractional digits. Examples: 2014-10-02T15:01:23Z and 2014-10-02T15:01:23.045123456Z. *)
  max_time_elapsed_since_last_modification : string prop option;
      [@option]
      (** A duration in seconds with up to nine fractional digits, terminated by 's'. Example: 3.5s. *)
  min_time_elapsed_since_last_modification : string prop option;
      [@option]
      (** A duration in seconds with up to nine fractional digits, terminated by 's'. Example: 3.5s. *)
}
[@@deriving yojson_of]
(** Only objects that satisfy these object conditions are included in the set of data source and data sink objects. Object conditions based on objects' last_modification_time do not exclude objects in a data sink. *)

type transfer_spec__posix_data_sink = {
  root_directory : string prop;
      (** Root directory path to the filesystem. *)
}
[@@deriving yojson_of]
(** A POSIX filesystem data sink. *)

type transfer_spec__posix_data_source = {
  root_directory : string prop;
      (** Root directory path to the filesystem. *)
}
[@@deriving yojson_of]
(** A POSIX filesystem data source. *)

type transfer_spec__transfer_options = {
  delete_objects_from_source_after_transfer : bool prop option;
      [@option]
      (** Whether objects should be deleted from the source after they are transferred to the sink. Note that this option and delete_objects_unique_in_sink are mutually exclusive. *)
  delete_objects_unique_in_sink : bool prop option; [@option]
      (** Whether objects that exist only in the sink should be deleted. Note that this option and delete_objects_from_source_after_transfer are mutually exclusive. *)
  overwrite_objects_already_existing_in_sink : bool prop option;
      [@option]
      (** Whether overwriting objects that already exist in the sink is allowed. *)
  overwrite_when : string prop option; [@option]
      (** When to overwrite objects that already exist in the sink. If not set, overwrite behavior is determined by overwriteObjectsAlreadyExistingInSink. *)
}
[@@deriving yojson_of]
(** Characteristics of how to treat files from datasource and sink during job. If the option delete_objects_unique_in_sink is true, object conditions based on objects' last_modification_time are ignored and do not exclude objects in a data source or a data sink. *)

type transfer_spec = {
  sink_agent_pool_name : string prop option; [@option]
      (** Specifies the agent pool name associated with the posix data source. When unspecified, the default name is used. *)
  source_agent_pool_name : string prop option; [@option]
      (** Specifies the agent pool name associated with the posix data source. When unspecified, the default name is used. *)
  aws_s3_data_source : transfer_spec__aws_s3_data_source list;
  azure_blob_storage_data_source :
    transfer_spec__azure_blob_storage_data_source list;
  gcs_data_sink : transfer_spec__gcs_data_sink list;
  gcs_data_source : transfer_spec__gcs_data_source list;
  http_data_source : transfer_spec__http_data_source list;
  object_conditions : transfer_spec__object_conditions list;
  posix_data_sink : transfer_spec__posix_data_sink list;
  posix_data_source : transfer_spec__posix_data_source list;
  transfer_options : transfer_spec__transfer_options list;
}
[@@deriving yojson_of]
(** Transfer specification. *)

type google_storage_transfer_job = {
  description : string prop;
      (** Unique description to identify the Transfer Job. *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]
      (** The name of the Transfer Job. *)
  project : string prop option; [@option]
      (** The project in which the resource belongs. If it is not provided, the provider project is used. *)
  status : string prop option; [@option]
      (** Status of the job. Default: ENABLED. NOTE: The effect of the new job status takes place during a subsequent job run. For example, if you change the job status from ENABLED to DISABLED, and an operation spawned by the transfer is running, the status change would not affect the current operation. *)
  event_stream : event_stream list;
  notification_config : notification_config list;
  schedule : schedule list;
  transfer_spec : transfer_spec list;
}
[@@deriving yojson_of]
(** google_storage_transfer_job *)

let event_stream ?event_stream_expiration_time
    ?event_stream_start_time ~name () : event_stream =
  { event_stream_expiration_time; event_stream_start_time; name }

let notification_config ?event_types ~payload_format ~pubsub_topic ()
    : notification_config =
  { event_types; payload_format; pubsub_topic }

let schedule__schedule_end_date ~day ~month ~year () :
    schedule__schedule_end_date =
  { day; month; year }

let schedule__schedule_start_date ~day ~month ~year () :
    schedule__schedule_start_date =
  { day; month; year }

let schedule__start_time_of_day ~hours ~minutes ~nanos ~seconds () :
    schedule__start_time_of_day =
  { hours; minutes; nanos; seconds }

let schedule ?repeat_interval ~schedule_end_date ~schedule_start_date
    ~start_time_of_day () : schedule =
  {
    repeat_interval;
    schedule_end_date;
    schedule_start_date;
    start_time_of_day;
  }

let transfer_spec__aws_s3_data_source__aws_access_key ~access_key_id
    ~secret_access_key () :
    transfer_spec__aws_s3_data_source__aws_access_key =
  { access_key_id; secret_access_key }

let transfer_spec__aws_s3_data_source ?path ?role_arn ~bucket_name
    ~aws_access_key () : transfer_spec__aws_s3_data_source =
  { bucket_name; path; role_arn; aws_access_key }

let transfer_spec__azure_blob_storage_data_source__azure_credentials
    ~sas_token () :
    transfer_spec__azure_blob_storage_data_source__azure_credentials
    =
  { sas_token }

let transfer_spec__azure_blob_storage_data_source ?path ~container
    ~storage_account ~azure_credentials () :
    transfer_spec__azure_blob_storage_data_source =
  { container; path; storage_account; azure_credentials }

let transfer_spec__gcs_data_sink ?path ~bucket_name () :
    transfer_spec__gcs_data_sink =
  { bucket_name; path }

let transfer_spec__gcs_data_source ?path ~bucket_name () :
    transfer_spec__gcs_data_source =
  { bucket_name; path }

let transfer_spec__http_data_source ~list_url () :
    transfer_spec__http_data_source =
  { list_url }

let transfer_spec__object_conditions ?exclude_prefixes
    ?include_prefixes ?last_modified_before ?last_modified_since
    ?max_time_elapsed_since_last_modification
    ?min_time_elapsed_since_last_modification () :
    transfer_spec__object_conditions =
  {
    exclude_prefixes;
    include_prefixes;
    last_modified_before;
    last_modified_since;
    max_time_elapsed_since_last_modification;
    min_time_elapsed_since_last_modification;
  }

let transfer_spec__posix_data_sink ~root_directory () :
    transfer_spec__posix_data_sink =
  { root_directory }

let transfer_spec__posix_data_source ~root_directory () :
    transfer_spec__posix_data_source =
  { root_directory }

let transfer_spec__transfer_options
    ?delete_objects_from_source_after_transfer
    ?delete_objects_unique_in_sink
    ?overwrite_objects_already_existing_in_sink ?overwrite_when () :
    transfer_spec__transfer_options =
  {
    delete_objects_from_source_after_transfer;
    delete_objects_unique_in_sink;
    overwrite_objects_already_existing_in_sink;
    overwrite_when;
  }

let transfer_spec ?sink_agent_pool_name ?source_agent_pool_name
    ~aws_s3_data_source ~azure_blob_storage_data_source
    ~gcs_data_sink ~gcs_data_source ~http_data_source
    ~object_conditions ~posix_data_sink ~posix_data_source
    ~transfer_options () : transfer_spec =
  {
    sink_agent_pool_name;
    source_agent_pool_name;
    aws_s3_data_source;
    azure_blob_storage_data_source;
    gcs_data_sink;
    gcs_data_source;
    http_data_source;
    object_conditions;
    posix_data_sink;
    posix_data_source;
    transfer_options;
  }

let google_storage_transfer_job ?id ?name ?project ?status
    ~description ~event_stream ~notification_config ~schedule
    ~transfer_spec () : google_storage_transfer_job =
  {
    description;
    id;
    name;
    project;
    status;
    event_stream;
    notification_config;
    schedule;
    transfer_spec;
  }

type t = {
  creation_time : string prop;
  deletion_time : string prop;
  description : string prop;
  id : string prop;
  last_modification_time : string prop;
  name : string prop;
  project : string prop;
  status : string prop;
}

let make ?id ?name ?project ?status ~description ~event_stream
    ~notification_config ~schedule ~transfer_spec __id =
  let __type = "google_storage_transfer_job" in
  let __attrs =
    ({
       creation_time = Prop.computed __type __id "creation_time";
       deletion_time = Prop.computed __type __id "deletion_time";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       last_modification_time =
         Prop.computed __type __id "last_modification_time";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_storage_transfer_job
        (google_storage_transfer_job ?id ?name ?project ?status
           ~description ~event_stream ~notification_config ~schedule
           ~transfer_spec ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?project ?status ~description
    ~event_stream ~notification_config ~schedule ~transfer_spec __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?project ?status ~description ~event_stream
      ~notification_config ~schedule ~transfer_spec __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
