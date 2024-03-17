(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_data_pipeline_pipeline__schedule_info = {
  next_job_time : string;
      (** When the next Scheduler job is going to run.
A timestamp in RFC3339 UTC Zulu format, with nanosecond resolution and up to nine fractional digits. Examples: 2014-10-02T15:01:23Z and 2014-10-02T15:01:23.045123456Z. *)
  schedule : string option; [@option]
      (** Unix-cron format of the schedule. This information is retrieved from the linked Cloud Scheduler. *)
  time_zone : string option; [@option]
      (** Timezone ID. This matches the timezone IDs used by the Cloud Scheduler API. If empty, UTC time is assumed. *)
}
[@@deriving yojson_of]
(** Internal scheduling information for a pipeline. If this information is provided, periodic jobs will be created per the schedule. If not, users are responsible for creating jobs externally.
https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#schedulespec *)

type google_data_pipeline_pipeline__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_data_pipeline_pipeline__timeouts *)

type google_data_pipeline_pipeline__workload__dataflow_flex_template_request__launch_parameter__environment = {
  additional_experiments : string list option; [@option]
      (** Additional experiment flags for the job. *)
  additional_user_labels : (string * string) list option; [@option]
      (** Additional user labels to be specified for the job. Keys and values should follow the restrictions specified in the labeling restrictions page. An object containing a list of key/value pairs.
'Example: { name: wrench, mass: 1kg, count: 3 }.'
'An object containing a list of key: value pairs. Example: { name: wrench, mass: 1.3kg, count: 3 }.' *)
  enable_streaming_engine : bool option; [@option]
      (** Whether to enable Streaming Engine for the job. *)
  flexrs_goal : string option; [@option]
      (** Set FlexRS goal for the job. https://cloud.google.com/dataflow/docs/guides/flexrs
https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#FlexResourceSchedulingGoal Possible values: [FLEXRS_UNSPECIFIED, FLEXRS_SPEED_OPTIMIZED, FLEXRS_COST_OPTIMIZED] *)
  ip_configuration : string option; [@option]
      (** Configuration for VM IPs.
https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#WorkerIPAddressConfiguration Possible values: [WORKER_IP_UNSPECIFIED, WORKER_IP_PUBLIC, WORKER_IP_PRIVATE] *)
  kms_key_name : string option; [@option]
      (** 'Name for the Cloud KMS key for the job. The key format is: projects//locations//keyRings//cryptoKeys/' *)
  machine_type : string option; [@option]
      (** The machine type to use for the job. Defaults to the value from the template if not specified. *)
  max_workers : float option; [@option]
      (** The maximum number of Compute Engine instances to be made available to your pipeline during execution, from 1 to 1000. *)
  network : string option; [@option]
      (** Network to which VMs will be assigned. If empty or unspecified, the service will use the network default. *)
  num_workers : float option; [@option]
      (** The initial number of Compute Engine instances for the job. *)
  service_account_email : string option; [@option]
      (** The email address of the service account to run the job as. *)
  subnetwork : string option; [@option]
      (** Subnetwork to which VMs will be assigned, if desired. You can specify a subnetwork using either a complete URL or an abbreviated path. Expected to be of the form https://www.googleapis.com/compute/v1/projects/HOST_PROJECT_ID/regions/REGION/subnetworks/SUBNETWORK or regions/REGION/subnetworks/SUBNETWORK. If the subnetwork is located in a Shared VPC network, you must use the complete URL. *)
  temp_location : string option; [@option]
      (** The Cloud Storage path to use for temporary files. Must be a valid Cloud Storage URL, beginning with gs://. *)
  worker_region : string option; [@option]
      (** The Compute Engine region (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. us-west1. Mutually exclusive with workerZone. If neither workerRegion nor workerZone is specified, default to the control plane's region. *)
  worker_zone : string option; [@option]
      (** The Compute Engine zone (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. us-west1-a. Mutually exclusive with workerRegion. If neither workerRegion nor workerZone is specified, a zone in the control plane's region is chosen based on available capacity. If both workerZone and zone are set, workerZone takes precedence. *)
  zone : string option; [@option]
      (** The Compute Engine availability zone for launching worker instances to run your pipeline. In the future, workerZone will take precedence. *)
}
[@@deriving yojson_of]
(** The runtime environment for the Flex Template job.
https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#FlexTemplateRuntimeEnvironment *)

type google_data_pipeline_pipeline__workload__dataflow_flex_template_request__launch_parameter = {
  container_spec_gcs_path : string option; [@option]
      (** Cloud Storage path to a file with a JSON-serialized ContainerSpec as content. *)
  job_name : string;
      (** The job name to use for the created job. For an update job request, the job name should be the same as the existing running job. *)
  launch_options : (string * string) list option; [@option]
      (** Launch options for this Flex Template job. This is a common set of options across languages and templates. This should not be used to pass job parameters.
'An object containing a list of key: value pairs. Example: { name: wrench, mass: 1.3kg, count: 3 }.' *)
  parameters : (string * string) list option; [@option]
      (** 'The parameters for the Flex Template. Example: {numWorkers:5}'
'An object containing a list of key: value pairs. Example: { name: wrench, mass: 1.3kg, count: 3 }.' *)
  transform_name_mappings : (string * string) list option; [@option]
      (** 'Use this to pass transform name mappings for streaming update jobs. Example: {oldTransformName:newTransformName,...}'
'An object containing a list of key: value pairs. Example: { name: wrench, mass: 1.3kg, count: 3 }.' *)
  update : bool option; [@option]
      (** Set this to true if you are sending a request to update a running streaming job. When set, the job name should be the same as the running job. *)
  environment :
    google_data_pipeline_pipeline__workload__dataflow_flex_template_request__launch_parameter__environment
    list;
}
[@@deriving yojson_of]
(** Parameter to launch a job from a Flex Template.
https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#launchflextemplateparameter *)

type google_data_pipeline_pipeline__workload__dataflow_flex_template_request = {
  location : string;
      (** The regional endpoint to which to direct the request. For example, us-central1, us-west1. *)
  project_id : string;
      (** The ID of the Cloud Platform project that the job belongs to. *)
  validate_only : bool option; [@option]
      (** If true, the request is validated but not actually executed. Defaults to false. *)
  launch_parameter :
    google_data_pipeline_pipeline__workload__dataflow_flex_template_request__launch_parameter
    list;
}
[@@deriving yojson_of]
(** Template information and additional parameters needed to launch a Dataflow job using the flex launch API.
https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#launchflextemplaterequest *)

type google_data_pipeline_pipeline__workload__dataflow_launch_template_request__launch_parameters__environment = {
  additional_experiments : string list option; [@option]
      (** Additional experiment flags for the job. *)
  additional_user_labels : (string * string) list option; [@option]
      (** Additional user labels to be specified for the job. Keys and values should follow the restrictions specified in the labeling restrictions page. An object containing a list of key/value pairs.
'Example: { name: wrench, mass: 1kg, count: 3 }.'
'An object containing a list of key: value pairs. Example: { name: wrench, mass: 1.3kg, count: 3 }.' *)
  bypass_temp_dir_validation : bool option; [@option]
      (** Whether to bypass the safety checks for the job's temporary directory. Use with caution. *)
  enable_streaming_engine : bool option; [@option]
      (** Whether to enable Streaming Engine for the job. *)
  ip_configuration : string option; [@option]
      (** Configuration for VM IPs.
https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#WorkerIPAddressConfiguration Possible values: [WORKER_IP_UNSPECIFIED, WORKER_IP_PUBLIC, WORKER_IP_PRIVATE] *)
  kms_key_name : string option; [@option]
      (** 'Name for the Cloud KMS key for the job. The key format is: projects//locations//keyRings//cryptoKeys/' *)
  machine_type : string option; [@option]
      (** The machine type to use for the job. Defaults to the value from the template if not specified. *)
  max_workers : float option; [@option]
      (** The maximum number of Compute Engine instances to be made available to your pipeline during execution, from 1 to 1000. *)
  network : string option; [@option]
      (** Network to which VMs will be assigned. If empty or unspecified, the service will use the network default. *)
  num_workers : float option; [@option]
      (** The initial number of Compute Engine instances for the job. *)
  service_account_email : string option; [@option]
      (** The email address of the service account to run the job as. *)
  subnetwork : string option; [@option]
      (** Subnetwork to which VMs will be assigned, if desired. You can specify a subnetwork using either a complete URL or an abbreviated path. Expected to be of the form https://www.googleapis.com/compute/v1/projects/HOST_PROJECT_ID/regions/REGION/subnetworks/SUBNETWORK or regions/REGION/subnetworks/SUBNETWORK. If the subnetwork is located in a Shared VPC network, you must use the complete URL. *)
  temp_location : string option; [@option]
      (** The Cloud Storage path to use for temporary files. Must be a valid Cloud Storage URL, beginning with gs://. *)
  worker_region : string option; [@option]
      (** The Compute Engine region (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. us-west1. Mutually exclusive with workerZone. If neither workerRegion nor workerZone is specified, default to the control plane's region. *)
  worker_zone : string option; [@option]
      (** The Compute Engine zone (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. us-west1-a. Mutually exclusive with workerRegion. If neither workerRegion nor workerZone is specified, a zone in the control plane's region is chosen based on available capacity. If both workerZone and zone are set, workerZone takes precedence. *)
  zone : string option; [@option]
      (** The Compute Engine availability zone for launching worker instances to run your pipeline. In the future, workerZone will take precedence. *)
}
[@@deriving yojson_of]
(** The runtime environment for the job.
https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#RuntimeEnvironment *)

type google_data_pipeline_pipeline__workload__dataflow_launch_template_request__launch_parameters = {
  job_name : string;  (** The job name to use for the created job. *)
  parameters : (string * string) list option; [@option]
      (** The runtime parameters to pass to the job.
'An object containing a list of key: value pairs. Example: { name: wrench, mass: 1.3kg, count: 3 }.' *)
  transform_name_mapping : (string * string) list option; [@option]
      (** Map of transform name prefixes of the job to be replaced to the corresponding name prefixes of the new job. Only applicable when updating a pipeline.
'An object containing a list of key: value pairs. Example: { name: wrench, mass: 1.3kg, count: 3 }.' *)
  update : bool option; [@option]
      (** If set, replace the existing pipeline with the name specified by jobName with this pipeline, preserving state. *)
  environment :
    google_data_pipeline_pipeline__workload__dataflow_launch_template_request__launch_parameters__environment
    list;
}
[@@deriving yojson_of]
(** The parameters of the template to launch. This should be part of the body of the POST request.
https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#launchtemplateparameters *)

type google_data_pipeline_pipeline__workload__dataflow_launch_template_request = {
  gcs_path : string option; [@option]
      (** A Cloud Storage path to the template from which to create the job. Must be a valid Cloud Storage URL, beginning with 'gs://'. *)
  location : string option; [@option]
      (** The regional endpoint to which to direct the request. *)
  project_id : string;
      (** The ID of the Cloud Platform project that the job belongs to. *)
  validate_only : bool option; [@option]  (** validate_only *)
  launch_parameters :
    google_data_pipeline_pipeline__workload__dataflow_launch_template_request__launch_parameters
    list;
}
[@@deriving yojson_of]
(** Template information and additional parameters needed to launch a Dataflow job using the standard launch API.
https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#launchtemplaterequest *)

type google_data_pipeline_pipeline__workload = {
  dataflow_flex_template_request :
    google_data_pipeline_pipeline__workload__dataflow_flex_template_request
    list;
  dataflow_launch_template_request :
    google_data_pipeline_pipeline__workload__dataflow_launch_template_request
    list;
}
[@@deriving yojson_of]
(** Workload information for creating new jobs.
https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#workload *)

type google_data_pipeline_pipeline = {
  display_name : string option; [@option]
      (** The display name of the pipeline. It can contain only letters ([A-Za-z]), numbers ([0-9]), hyphens (-), and underscores (_). *)
  name : string;
      (** The pipeline name. For example': 'projects/PROJECT_ID/locations/LOCATION_ID/pipelines/PIPELINE_ID.
- PROJECT_ID can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), and periods (.). For more information, see Identifying projects.
LOCATION_ID is the canonical ID for the pipeline's location. The list of available locations can be obtained by calling google.cloud.location.Locations.ListLocations. Note that the Data Pipelines service is not available in all regions. It depends on Cloud Scheduler, an App Engine application, so it's only available in App Engine regions.
PIPELINE_ID is the ID of the pipeline. Must be unique for the selected project and location. *)
  pipeline_sources : (string * string) list option; [@option]
      (** The sources of the pipeline (for example, Dataplex). The keys and values are set by the corresponding sources during pipeline creation.
An object containing a list of key: value pairs. Example: { name: wrench, mass: 1.3kg, count: 3 }. *)
  region : string option; [@option]  (** A reference to the region *)
  state : string;
      (** The state of the pipeline. When the pipeline is created, the state is set to 'PIPELINE_STATE_ACTIVE' by default. State changes can be requested by setting the state to stopping, paused, or resuming. State cannot be changed through pipelines.patch requests.
https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#state Possible values: [STATE_UNSPECIFIED, STATE_RESUMING, STATE_ACTIVE, STATE_STOPPING, STATE_ARCHIVED, STATE_PAUSED] *)
  type_ : string; [@key "type"]
      (** The type of the pipeline. This field affects the scheduling of the pipeline and the type of metrics to show for the pipeline.
https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#pipelinetype Possible values: [PIPELINE_TYPE_UNSPECIFIED, PIPELINE_TYPE_BATCH, PIPELINE_TYPE_STREAMING] *)
  schedule_info : google_data_pipeline_pipeline__schedule_info list;
  timeouts : google_data_pipeline_pipeline__timeouts option;
  workload : google_data_pipeline_pipeline__workload list;
}
[@@deriving yojson_of]
(** google_data_pipeline_pipeline *)

let google_data_pipeline_pipeline ?display_name ?pipeline_sources
    ?region ?timeouts ~name ~state ~type_ ~schedule_info ~workload
    __resource_id =
  let __resource_type = "google_data_pipeline_pipeline" in
  let __resource =
    {
      display_name;
      name;
      pipeline_sources;
      region;
      state;
      type_;
      schedule_info;
      timeouts;
      workload;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_data_pipeline_pipeline __resource);
  ()
