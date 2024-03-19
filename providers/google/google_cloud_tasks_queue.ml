(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type app_engine_routing_override = {
  instance : string prop option; [@option]
      (** App instance.

By default, the task is sent to an instance which is available when the task is attempted. *)
  service : string prop option; [@option]
      (** App service.

By default, the task is sent to the service which is the default service when the task is attempted. *)
  version : string prop option; [@option]
      (** App version.

By default, the task is sent to the version which is the default version when the task is attempted. *)
}
[@@deriving yojson_of]
(** Overrides for task-level appEngineRouting. These settings apply only
to App Engine tasks in this queue *)

type rate_limits = {
  max_concurrent_dispatches : float prop option; [@option]
      (** The maximum number of concurrent tasks that Cloud Tasks allows to
be dispatched for this queue. After this threshold has been
reached, Cloud Tasks stops dispatching tasks until the number of
concurrent requests decreases. *)
  max_dispatches_per_second : float prop option; [@option]
      (** The maximum rate at which tasks are dispatched from this queue.

If unspecified when the queue is created, Cloud Tasks will pick the default. *)
}
[@@deriving yojson_of]
(** Rate limits for task dispatches.

The queue's actual dispatch rate is the result of:

* Number of tasks in the queue
* User-specified throttling: rateLimits, retryConfig, and the queue's state.
* System throttling due to 429 (Too Many Requests) or 503 (Service
  Unavailable) responses from the worker, high error rates, or to
  smooth sudden large traffic spikes. *)

type retry_config = {
  max_attempts : float prop option; [@option]
      (** Number of attempts per task.

Cloud Tasks will attempt the task maxAttempts times (that is, if
the first attempt fails, then there will be maxAttempts - 1
retries). Must be >= -1.

If unspecified when the queue is created, Cloud Tasks will pick
the default.

-1 indicates unlimited attempts. *)
  max_backoff : string prop option; [@option]
      (** A task will be scheduled for retry between minBackoff and
maxBackoff duration after it fails, if the queue's RetryConfig
specifies that the task should be retried. *)
  max_doublings : float prop option; [@option]
      (** The time between retries will double maxDoublings times.

A task's retry interval starts at minBackoff, then doubles maxDoublings times,
then increases linearly, and finally retries retries at intervals of maxBackoff
up to maxAttempts times. *)
  max_retry_duration : string prop option; [@option]
      (** If positive, maxRetryDuration specifies the time limit for
retrying a failed task, measured from when the task was first
attempted. Once maxRetryDuration time has passed and the task has
been attempted maxAttempts times, no further attempts will be
made and the task will be deleted.

If zero, then the task age is unlimited. *)
  min_backoff : string prop option; [@option]
      (** A task will be scheduled for retry between minBackoff and
maxBackoff duration after it fails, if the queue's RetryConfig
specifies that the task should be retried. *)
}
[@@deriving yojson_of]
(** Settings that determine the retry behavior. *)

type stackdriver_logging_config = {
  sampling_ratio : float prop;
      (** Specifies the fraction of operations to write to Stackdriver Logging.
This field may contain any value between 0.0 and 1.0, inclusive. 0.0 is the
default and means that no operations are logged. *)
}
[@@deriving yojson_of]
(** Configuration options for writing logs to Stackdriver Logging. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_cloud_tasks_queue = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** The location of the queue *)
  name : string prop option; [@option]  (** The queue name. *)
  project : string prop option; [@option]  (** project *)
  app_engine_routing_override : app_engine_routing_override list;
  rate_limits : rate_limits list;
  retry_config : retry_config list;
  stackdriver_logging_config : stackdriver_logging_config list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_cloud_tasks_queue *)

let app_engine_routing_override ?instance ?service ?version () :
    app_engine_routing_override =
  { instance; service; version }

let rate_limits ?max_concurrent_dispatches ?max_dispatches_per_second
    () : rate_limits =
  { max_concurrent_dispatches; max_dispatches_per_second }

let retry_config ?max_attempts ?max_backoff ?max_doublings
    ?max_retry_duration ?min_backoff () : retry_config =
  {
    max_attempts;
    max_backoff;
    max_doublings;
    max_retry_duration;
    min_backoff;
  }

let stackdriver_logging_config ~sampling_ratio () :
    stackdriver_logging_config =
  { sampling_ratio }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_cloud_tasks_queue ?id ?name ?project ?timeouts ~location
    ~app_engine_routing_override ~rate_limits ~retry_config
    ~stackdriver_logging_config () : google_cloud_tasks_queue =
  {
    id;
    location;
    name;
    project;
    app_engine_routing_override;
    rate_limits;
    retry_config;
    stackdriver_logging_config;
    timeouts;
  }

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
}

let register ?tf_module ?id ?name ?project ?timeouts ~location
    ~app_engine_routing_override ~rate_limits ~retry_config
    ~stackdriver_logging_config __resource_id =
  let __resource_type = "google_cloud_tasks_queue" in
  let __resource =
    google_cloud_tasks_queue ?id ?name ?project ?timeouts ~location
      ~app_engine_routing_override ~rate_limits ~retry_config
      ~stackdriver_logging_config ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_cloud_tasks_queue __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
     }
      : t)
  in
  __resource_attributes
