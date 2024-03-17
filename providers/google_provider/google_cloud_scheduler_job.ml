(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_cloud_scheduler_job__app_engine_http_target__app_engine_routing = {
  instance : string option; [@option]
      (** App instance.
By default, the job is sent to an instance which is available when the job is attempted. *)
  service : string option; [@option]
      (** App service.
By default, the job is sent to the service which is the default service when the job is attempted. *)
  version : string option; [@option]
      (** App version.
By default, the job is sent to the version which is the default version when the job is attempted. *)
}
[@@deriving yojson_of]
(** App Engine Routing setting for the job. *)

type google_cloud_scheduler_job__app_engine_http_target = {
  body : string option; [@option]
      (** HTTP request body.
A request body is allowed only if the HTTP method is POST or PUT.
It will result in invalid argument error to set a body on a job with an incompatible HttpMethod.

A base64-encoded string. *)
  headers : (string * string) list option; [@option]
      (** HTTP request headers.
This map contains the header field names and values.
Headers can be set when the job is created. *)
  http_method : string option; [@option]
      (** Which HTTP method to use for the request. *)
  relative_uri : string;
      (** The relative URI.
The relative URL must begin with / and must be a valid HTTP relative URL.
It can contain a path, query string arguments, and \# fragments.
If the relative URL is empty, then the root path / will be used.
No spaces are allowed, and the maximum length allowed is 2083 characters *)
  app_engine_routing :
    google_cloud_scheduler_job__app_engine_http_target__app_engine_routing
    list;
}
[@@deriving yojson_of]
(** App Engine HTTP target.
If the job providers a App Engine HTTP target the cron will
send a request to the service instance *)

type google_cloud_scheduler_job__http_target__oauth_token = {
  scope : string option; [@option]
      (** OAuth scope to be used for generating OAuth access token. If not specified,
https://www.googleapis.com/auth/cloud-platform will be used. *)
  service_account_email : string;
      (** Service account email to be used for generating OAuth token.
The service account must be within the same project as the job. *)
}
[@@deriving yojson_of]
(** Contains information needed for generating an OAuth token.
This type of authorization should be used when sending requests to a GCP endpoint. *)

type google_cloud_scheduler_job__http_target__oidc_token = {
  audience : string option; [@option]
      (** Audience to be used when generating OIDC token. If not specified,
the URI specified in target will be used. *)
  service_account_email : string;
      (** Service account email to be used for generating OAuth token.
The service account must be within the same project as the job. *)
}
[@@deriving yojson_of]
(** Contains information needed for generating an OpenID Connect token.
This type of authorization should be used when sending requests to third party endpoints or Cloud Run. *)

type google_cloud_scheduler_job__http_target = {
  body : string option; [@option]
      (** HTTP request body.
A request body is allowed only if the HTTP method is POST, PUT, or PATCH.
It is an error to set body on a job with an incompatible HttpMethod.

A base64-encoded string. *)
  headers : (string * string) list option; [@option]
      (** This map contains the header field names and values.
Repeated headers are not supported, but a header value can contain commas. *)
  http_method : string option; [@option]
      (** Which HTTP method to use for the request. *)
  uri : string;
      (** The full URI path that the request will be sent to. *)
  oauth_token :
    google_cloud_scheduler_job__http_target__oauth_token list;
  oidc_token :
    google_cloud_scheduler_job__http_target__oidc_token list;
}
[@@deriving yojson_of]
(** HTTP target.
If the job providers a http_target the cron will
send a request to the targeted url *)

type google_cloud_scheduler_job__pubsub_target = {
  attributes : (string * string) list option; [@option]
      (** Attributes for PubsubMessage.
Pubsub message must contain either non-empty data, or at least one attribute. *)
  data : string option; [@option]
      (** The message payload for PubsubMessage.
Pubsub message must contain either non-empty data, or at least one attribute.

 A base64-encoded string. *)
  topic_name : string;
      (** The full resource name for the Cloud Pub/Sub topic to which
messages will be published when a job is delivered. ~>**NOTE:**
The topic name must be in the same format as required by PubSub's
PublishRequest.name, e.g. 'projects/my-project/topics/my-topic'. *)
}
[@@deriving yojson_of]
(** Pub/Sub target
If the job providers a Pub/Sub target the cron will publish
a message to the provided topic *)

type google_cloud_scheduler_job__retry_config = {
  max_backoff_duration : string option; [@option]
      (** The maximum amount of time to wait before retrying a job after it fails.
A duration in seconds with up to nine fractional digits, terminated by 's'. *)
  max_doublings : float option; [@option]
      (** The time between retries will double maxDoublings times.
A job's retry interval starts at minBackoffDuration,
then doubles maxDoublings times, then increases linearly,
and finally retries retries at intervals of maxBackoffDuration up to retryCount times. *)
  max_retry_duration : string option; [@option]
      (** The time limit for retrying a failed job, measured from time when an execution was first attempted.
If specified with retryCount, the job will be retried until both limits are reached.
A duration in seconds with up to nine fractional digits, terminated by 's'. *)
  min_backoff_duration : string option; [@option]
      (** The minimum amount of time to wait before retrying a job after it fails.
A duration in seconds with up to nine fractional digits, terminated by 's'. *)
  retry_count : float option; [@option]
      (** The number of attempts that the system will make to run a
job using the exponential backoff procedure described by maxDoublings.
Values greater than 5 and negative values are not allowed. *)
}
[@@deriving yojson_of]
(** By default, if a job does not complete successfully,
meaning that an acknowledgement is not received from the handler,
then it will be retried with exponential backoff according to the settings *)

type google_cloud_scheduler_job__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_cloud_scheduler_job__timeouts *)

type google_cloud_scheduler_job = {
  attempt_deadline : string option; [@option]
      (** The deadline for job attempts. If the request handler does not respond by this deadline then the request is
cancelled and the attempt is marked as a DEADLINE_EXCEEDED failure. The failed attempt can be viewed in
execution logs. Cloud Scheduler will retry the job according to the RetryConfig.
The allowed duration for this deadline is:
* For HTTP targets, between 15 seconds and 30 minutes.
* For App Engine HTTP targets, between 15 seconds and 24 hours.
* **Note**: For PubSub targets, this field is ignored - setting it will introduce an unresolvable diff.
A duration in seconds with up to nine fractional digits, terminated by 's'. Example: 3.5s *)
  description : string option; [@option]
      (** A human-readable description for the job.
This string must not contain more than 500 characters. *)
  name : string;  (** The name of the job. *)
  schedule : string option; [@option]
      (** Describes the schedule on which the job will be executed. *)
  time_zone : string option; [@option]
      (** Specifies the time zone to be used in interpreting schedule.
The value of this field must be a time zone name from the tz database. *)
  app_engine_http_target :
    google_cloud_scheduler_job__app_engine_http_target list;
  http_target : google_cloud_scheduler_job__http_target list;
  pubsub_target : google_cloud_scheduler_job__pubsub_target list;
  retry_config : google_cloud_scheduler_job__retry_config list;
  timeouts : google_cloud_scheduler_job__timeouts option;
}
[@@deriving yojson_of]
(** google_cloud_scheduler_job *)

let google_cloud_scheduler_job ?attempt_deadline ?description
    ?schedule ?time_zone ?timeouts ~name ~app_engine_http_target
    ~http_target ~pubsub_target ~retry_config __resource_id =
  let __resource_type = "google_cloud_scheduler_job" in
  let __resource =
    {
      attempt_deadline;
      description;
      name;
      schedule;
      time_zone;
      app_engine_http_target;
      http_target;
      pubsub_target;
      retry_config;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_cloud_scheduler_job __resource);
  ()
