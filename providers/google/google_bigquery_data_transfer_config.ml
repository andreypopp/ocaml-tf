(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type email_preferences = {
  enable_failure_email : bool prop;
      (** If true, email notifications will be sent on transfer run failures. *)
}
[@@deriving yojson_of]
(** Email notifications will be sent according to these preferences to the
email address of the user who owns this transfer config. *)

type schedule_options = {
  disable_auto_scheduling : bool prop option; [@option]
      (** If true, automatic scheduling of data transfer runs for this
configuration will be disabled. The runs can be started on ad-hoc
basis using transferConfigs.startManualRuns API. When automatic
scheduling is disabled, the TransferConfig.schedule field will
be ignored. *)
  end_time : string prop option; [@option]
      (** Defines time to stop scheduling transfer runs. A transfer run cannot be
scheduled at or after the end time. The end time can be changed at any
moment. The time when a data transfer can be triggered manually is not
limited by this option. *)
  start_time : string prop option; [@option]
      (** Specifies time to start scheduling transfer runs. The first run will be
scheduled at or after the start time according to a recurrence pattern
defined in the schedule string. The start time can be changed at any
moment. The time when a data transfer can be triggered manually is not
limited by this option. *)
}
[@@deriving yojson_of]
(** Options customizing the data transfer schedule. *)

type sensitive_params = {
  secret_access_key : string prop;
      (** The Secret Access Key of the AWS account transferring data from. *)
}
[@@deriving yojson_of]
(** Different parameters are configured primarily using the the 'params' field on this
resource. This block contains the parameters which contain secrets or passwords so that they can be marked
sensitive and hidden from plan output. The name of the field, eg: secret_access_key, will be the key
in the 'params' map in the api request.

Credentials may not be specified in both locations and will cause an error. Changing from one location
to a different credential configuration in the config will require an apply to update state. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_bigquery_data_transfer_config = {
  data_refresh_window_days : float prop option; [@option]
      (** The number of days to look back to automatically refresh the data.
For example, if dataRefreshWindowDays = 10, then every day BigQuery
reingests data for [today-10, today-1], rather than ingesting data for
just [today-1]. Only valid if the data source supports the feature.
Set the value to 0 to use the default value. *)
  data_source_id : string prop;
      (** The data source id. Cannot be changed once the transfer config is created. *)
  destination_dataset_id : string prop option; [@option]
      (** The BigQuery target dataset id. *)
  disabled : bool prop option; [@option]
      (** When set to true, no runs are scheduled for a given transfer. *)
  display_name : string prop;
      (** The user specified display name for the transfer config. *)
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]
      (** The geographic location where the transfer config should reside.
Examples: US, EU, asia-northeast1. The default value is US. *)
  notification_pubsub_topic : string prop option; [@option]
      (** Pub/Sub topic where notifications will be sent after transfer runs
associated with this transfer config finish. *)
  params : (string * string prop) list;
      (** Parameters specific to each data source. For more information see the bq tab in the 'Setting up a data transfer'
section for each data source. For example the parameters for Cloud Storage transfers are listed here:
https://cloud.google.com/bigquery-transfer/docs/cloud-storage-transfer#bq

**NOTE** : If you are attempting to update a parameter that cannot be updated (due to api limitations) [please force recreation of the resource](https://www.terraform.io/cli/state/taint#forcing-re-creation-of-resources). *)
  project : string prop option; [@option]  (** project *)
  schedule : string prop option; [@option]
      (** Data transfer schedule. If the data source does not support a custom
schedule, this should be empty. If it is empty, the default value for
the data source will be used. The specified times are in UTC. Examples
of valid format: 1st,3rd monday of month 15:30, every wed,fri of jan,
jun 13:15, and first sunday of quarter 00:00. See more explanation
about the format here:
https://cloud.google.com/appengine/docs/flexible/python/scheduling-jobs-with-cron-yaml#the_schedule_format
NOTE: the granularity should be at least 8 hours, or less frequent. *)
  service_account_name : string prop option; [@option]
      (** Service account email. If this field is set, transfer config will
be created with this service account credentials. It requires that
requesting user calling this API has permissions to act as this service account. *)
  email_preferences : email_preferences list;
  schedule_options : schedule_options list;
  sensitive_params : sensitive_params list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_bigquery_data_transfer_config *)

let email_preferences ~enable_failure_email () : email_preferences =
  { enable_failure_email }

let schedule_options ?disable_auto_scheduling ?end_time ?start_time
    () : schedule_options =
  { disable_auto_scheduling; end_time; start_time }

let sensitive_params ~secret_access_key () : sensitive_params =
  { secret_access_key }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_bigquery_data_transfer_config ?data_refresh_window_days
    ?destination_dataset_id ?disabled ?id ?location
    ?notification_pubsub_topic ?project ?schedule
    ?service_account_name ?timeouts ~data_source_id ~display_name
    ~params ~email_preferences ~schedule_options ~sensitive_params ()
    : google_bigquery_data_transfer_config =
  {
    data_refresh_window_days;
    data_source_id;
    destination_dataset_id;
    disabled;
    display_name;
    id;
    location;
    notification_pubsub_topic;
    params;
    project;
    schedule;
    service_account_name;
    email_preferences;
    schedule_options;
    sensitive_params;
    timeouts;
  }

type t = {
  data_refresh_window_days : float prop;
  data_source_id : string prop;
  destination_dataset_id : string prop;
  disabled : bool prop;
  display_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  notification_pubsub_topic : string prop;
  params : (string * string) list prop;
  project : string prop;
  schedule : string prop;
  service_account_name : string prop;
}

let make ?data_refresh_window_days ?destination_dataset_id ?disabled
    ?id ?location ?notification_pubsub_topic ?project ?schedule
    ?service_account_name ?timeouts ~data_source_id ~display_name
    ~params ~email_preferences ~schedule_options ~sensitive_params
    __id =
  let __type = "google_bigquery_data_transfer_config" in
  let __attrs =
    ({
       data_refresh_window_days =
         Prop.computed __type __id "data_refresh_window_days";
       data_source_id = Prop.computed __type __id "data_source_id";
       destination_dataset_id =
         Prop.computed __type __id "destination_dataset_id";
       disabled = Prop.computed __type __id "disabled";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       notification_pubsub_topic =
         Prop.computed __type __id "notification_pubsub_topic";
       params = Prop.computed __type __id "params";
       project = Prop.computed __type __id "project";
       schedule = Prop.computed __type __id "schedule";
       service_account_name =
         Prop.computed __type __id "service_account_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_bigquery_data_transfer_config
        (google_bigquery_data_transfer_config
           ?data_refresh_window_days ?destination_dataset_id
           ?disabled ?id ?location ?notification_pubsub_topic
           ?project ?schedule ?service_account_name ?timeouts
           ~data_source_id ~display_name ~params ~email_preferences
           ~schedule_options ~sensitive_params ());
    attrs = __attrs;
  }

let register ?tf_module ?data_refresh_window_days
    ?destination_dataset_id ?disabled ?id ?location
    ?notification_pubsub_topic ?project ?schedule
    ?service_account_name ?timeouts ~data_source_id ~display_name
    ~params ~email_preferences ~schedule_options ~sensitive_params
    __id =
  let (r : _ Tf_core.resource) =
    make ?data_refresh_window_days ?destination_dataset_id ?disabled
      ?id ?location ?notification_pubsub_topic ?project ?schedule
      ?service_account_name ?timeouts ~data_source_id ~display_name
      ~params ~email_preferences ~schedule_options ~sensitive_params
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
