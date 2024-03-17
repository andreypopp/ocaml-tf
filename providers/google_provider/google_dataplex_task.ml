(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_dataplex_task__execution_spec = {
  args : (string * string) list option; [@option]
      (** The arguments to pass to the task. The args can use placeholders of the format ${placeholder} as part of key/value string. These will be interpolated before passing the args to the driver. Currently supported placeholders: - ${taskId} - ${job_time} To pass positional args, set the key as TASK_ARGS. The value should be a comma-separated string of all the positional arguments. To use a delimiter other than comma, refer to https://cloud.google.com/sdk/gcloud/reference/topic/escaping. In case of other keys being present in the args, then TASK_ARGS will be passed as the last argument. An object containing a list of 'key': value pairs. Example: { 'name': 'wrench', 'mass': '1.3kg', 'count': '3' }. *)
  kms_key : string option; [@option]
      (** The Cloud KMS key to use for encryption, of the form: projects/{project_number}/locations/{locationId}/keyRings/{key-ring-name}/cryptoKeys/{key-name}. *)
  max_job_execution_lifetime : string option; [@option]
      (** The maximum duration after which the job execution is expired. A duration in seconds with up to nine fractional digits, ending with 's'. Example: '3.5s'. *)
  project : string option; [@option]
      (** The project in which jobs are run. By default, the project containing the Lake is used. If a project is provided, the ExecutionSpec.service_account must belong to this project. *)
  service_account : string;
      (** Service account to use to execute a task. If not provided, the default Compute service account for the project is used. *)
}
[@@deriving yojson_of]
(** Configuration for the cluster *)

type google_dataplex_task__notebook__infrastructure_spec__batch = {
  executors_count : float option; [@option]
      (** Total number of job executors. Executor Count should be between 2 and 100. [Default=2] *)
  max_executors_count : float option; [@option]
      (** Max configurable executors. If maxExecutorsCount > executorsCount, then auto-scaling is enabled. Max Executor Count should be between 2 and 1000. [Default=1000] *)
}
[@@deriving yojson_of]
(** Compute resources needed for a Task when using Dataproc Serverless. *)

type google_dataplex_task__notebook__infrastructure_spec__container_image = {
  image : string option; [@option]  (** Container image to use. *)
  java_jars : string list option; [@option]
      (** A list of Java JARS to add to the classpath. Valid input includes Cloud Storage URIs to Jar binaries. For example, gs://bucket-name/my/path/to/file.jar *)
  properties : (string * string) list option; [@option]
      (** Override to common configuration of open source components installed on the Dataproc cluster. The properties to set on daemon config files. Property keys are specified in prefix:property format, for example core:hadoop.tmp.dir. For more information, see Cluster properties. *)
  python_packages : string list option; [@option]
      (** A list of python packages to be installed. Valid formats include Cloud Storage URI to a PIP installable library. For example, gs://bucket-name/my/path/to/lib.tar.gz *)
}
[@@deriving yojson_of]
(** Container Image Runtime Configuration. *)

type google_dataplex_task__notebook__infrastructure_spec__vpc_network = {
  network : string option; [@option]
      (** The Cloud VPC network in which the job is run. By default, the Cloud VPC network named Default within the project is used. *)
  network_tags : string list option; [@option]
      (** List of network tags to apply to the job. *)
  sub_network : string option; [@option]
      (** The Cloud VPC sub-network in which the job is run. *)
}
[@@deriving yojson_of]
(** Vpc network. *)

type google_dataplex_task__notebook__infrastructure_spec = {
  batch :
    google_dataplex_task__notebook__infrastructure_spec__batch list;
  container_image :
    google_dataplex_task__notebook__infrastructure_spec__container_image
    list;
  vpc_network :
    google_dataplex_task__notebook__infrastructure_spec__vpc_network
    list;
}
[@@deriving yojson_of]
(** Infrastructure specification for the execution. *)

type google_dataplex_task__notebook = {
  archive_uris : string list option; [@option]
      (** Cloud Storage URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip. *)
  file_uris : string list option; [@option]
      (** Cloud Storage URIs of files to be placed in the working directory of each executor. *)
  notebook : string;
      (** Path to input notebook. This can be the Cloud Storage URI of the notebook file or the path to a Notebook Content. The execution args are accessible as environment variables (TASK_key=value). *)
  infrastructure_spec :
    google_dataplex_task__notebook__infrastructure_spec list;
}
[@@deriving yojson_of]
(** A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time. *)

type google_dataplex_task__spark__infrastructure_spec__batch = {
  executors_count : float option; [@option]
      (** Total number of job executors. Executor Count should be between 2 and 100. [Default=2] *)
  max_executors_count : float option; [@option]
      (** Max configurable executors. If maxExecutorsCount > executorsCount, then auto-scaling is enabled. Max Executor Count should be between 2 and 1000. [Default=1000] *)
}
[@@deriving yojson_of]
(** Compute resources needed for a Task when using Dataproc Serverless. *)

type google_dataplex_task__spark__infrastructure_spec__container_image = {
  image : string option; [@option]  (** Container image to use. *)
  java_jars : string list option; [@option]
      (** A list of Java JARS to add to the classpath. Valid input includes Cloud Storage URIs to Jar binaries. For example, gs://bucket-name/my/path/to/file.jar *)
  properties : (string * string) list option; [@option]
      (** Override to common configuration of open source components installed on the Dataproc cluster. The properties to set on daemon config files. Property keys are specified in prefix:property format, for example core:hadoop.tmp.dir. For more information, see Cluster properties. *)
  python_packages : string list option; [@option]
      (** A list of python packages to be installed. Valid formats include Cloud Storage URI to a PIP installable library. For example, gs://bucket-name/my/path/to/lib.tar.gz *)
}
[@@deriving yojson_of]
(** Container Image Runtime Configuration. *)

type google_dataplex_task__spark__infrastructure_spec__vpc_network = {
  network : string option; [@option]
      (** The Cloud VPC network in which the job is run. By default, the Cloud VPC network named Default within the project is used. *)
  network_tags : string list option; [@option]
      (** List of network tags to apply to the job. *)
  sub_network : string option; [@option]
      (** The Cloud VPC sub-network in which the job is run. *)
}
[@@deriving yojson_of]
(** Vpc network. *)

type google_dataplex_task__spark__infrastructure_spec = {
  batch :
    google_dataplex_task__spark__infrastructure_spec__batch list;
  container_image :
    google_dataplex_task__spark__infrastructure_spec__container_image
    list;
  vpc_network :
    google_dataplex_task__spark__infrastructure_spec__vpc_network
    list;
}
[@@deriving yojson_of]
(** Infrastructure specification for the execution. *)

type google_dataplex_task__spark = {
  archive_uris : string list option; [@option]
      (** Cloud Storage URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip. *)
  file_uris : string list option; [@option]
      (** Cloud Storage URIs of files to be placed in the working directory of each executor. *)
  main_class : string option; [@option]
      (** The name of the driver's main class. The jar file that contains the class must be in the default CLASSPATH or specified in jar_file_uris. The execution args are passed in as a sequence of named process arguments (--key=value). *)
  main_jar_file_uri : string option; [@option]
      (** The Cloud Storage URI of the jar file that contains the main class. The execution args are passed in as a sequence of named process arguments (--key=value). *)
  python_script_file : string option; [@option]
      (** The Gcloud Storage URI of the main Python file to use as the driver. Must be a .py file. The execution args are passed in as a sequence of named process arguments (--key=value). *)
  sql_script : string option; [@option]
      (** The query text. The execution args are used to declare a set of script variables (set key='value';). *)
  sql_script_file : string option; [@option]
      (** A reference to a query file. This can be the Cloud Storage URI of the query file or it can the path to a SqlScript Content. The execution args are used to declare a set of script variables (set key='value';). *)
  infrastructure_spec :
    google_dataplex_task__spark__infrastructure_spec list;
}
[@@deriving yojson_of]
(** A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time. *)

type google_dataplex_task__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_dataplex_task__timeouts *)

type google_dataplex_task__trigger_spec = {
  disabled : bool option; [@option]
      (** Prevent the task from executing. This does not cancel already running tasks. It is intended to temporarily disable RECURRING tasks. *)
  max_retries : float option; [@option]
      (** Number of retry attempts before aborting. Set to zero to never attempt to retry a failed task. *)
  schedule : string option; [@option]
      (** Cron schedule (https://en.wikipedia.org/wiki/Cron) for running tasks periodically. To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: 'CRON_TZ=${IANA_TIME_ZONE}' or 'TZ=${IANA_TIME_ZONE}'. The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database. For example, CRON_TZ=America/New_York 1 * * * *, or TZ=America/New_York 1 * * * *. This field is required for RECURRING tasks. *)
  start_time : string option; [@option]
      (** The first run of the task will be after this time. If not specified, the task will run shortly after being submitted if ON_DEMAND and based on the schedule if RECURRING. *)
  type_ : string; [@key "type"]
      (** Trigger type of the user-specified Task Possible values: [ON_DEMAND, RECURRING] *)
}
[@@deriving yojson_of]
(** Configuration for the cluster *)

type google_dataplex_task__execution_status__latest_job = {
  end_time : string;  (** end_time *)
  message : string;  (** message *)
  name : string;  (** name *)
  retry_count : float;  (** retry_count *)
  service : string;  (** service *)
  service_job : string;  (** service_job *)
  start_time : string;  (** start_time *)
  state : string;  (** state *)
  uid : string;  (** uid *)
}
[@@deriving yojson_of]

type google_dataplex_task__execution_status = {
  latest_job :
    google_dataplex_task__execution_status__latest_job list;
      (** latest_job *)
  update_time : string;  (** update_time *)
}
[@@deriving yojson_of]

type google_dataplex_task = {
  description : string option; [@option]
      (** User-provided description of the task. *)
  display_name : string option; [@option]
      (** User friendly display name. *)
  labels : (string * string) list option; [@option]
      (** User-defined labels for the task.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  lake : string option; [@option]
      (** The lake in which the task will be created in. *)
  location : string option; [@option]
      (** The location in which the task will be created in. *)
  task_id : string option; [@option]  (** The task Id of the task. *)
  execution_spec : google_dataplex_task__execution_spec list;
  notebook : google_dataplex_task__notebook list;
  spark : google_dataplex_task__spark list;
  timeouts : google_dataplex_task__timeouts option;
  trigger_spec : google_dataplex_task__trigger_spec list;
}
[@@deriving yojson_of]
(** google_dataplex_task *)

let google_dataplex_task ?description ?display_name ?labels ?lake
    ?location ?task_id ?timeouts ~execution_spec ~notebook ~spark
    ~trigger_spec __resource_id =
  let __resource_type = "google_dataplex_task" in
  let __resource =
    {
      description;
      display_name;
      labels;
      lake;
      location;
      task_id;
      execution_spec;
      notebook;
      spark;
      timeouts;
      trigger_spec;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dataplex_task __resource);
  ()
