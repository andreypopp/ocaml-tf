(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type execution_spec = {
  args : (string * string prop) list option; [@option]
      (** The arguments to pass to the task. The args can use placeholders of the format ${placeholder} as part of key/value string. These will be interpolated before passing the args to the driver. Currently supported placeholders: - ${taskId} - ${job_time} To pass positional args, set the key as TASK_ARGS. The value should be a comma-separated string of all the positional arguments. To use a delimiter other than comma, refer to https://cloud.google.com/sdk/gcloud/reference/topic/escaping. In case of other keys being present in the args, then TASK_ARGS will be passed as the last argument. An object containing a list of 'key': value pairs. Example: { 'name': 'wrench', 'mass': '1.3kg', 'count': '3' }. *)
  kms_key : string prop option; [@option]
      (** The Cloud KMS key to use for encryption, of the form: projects/{project_number}/locations/{locationId}/keyRings/{key-ring-name}/cryptoKeys/{key-name}. *)
  max_job_execution_lifetime : string prop option; [@option]
      (** The maximum duration after which the job execution is expired. A duration in seconds with up to nine fractional digits, ending with 's'. Example: '3.5s'. *)
  project : string prop option; [@option]
      (** The project in which jobs are run. By default, the project containing the Lake is used. If a project is provided, the ExecutionSpec.service_account must belong to this project. *)
  service_account : string prop;
      (** Service account to use to execute a task. If not provided, the default Compute service account for the project is used. *)
}
[@@deriving yojson_of]
(** Configuration for the cluster *)

type notebook__infrastructure_spec__batch = {
  executors_count : float prop option; [@option]
      (** Total number of job executors. Executor Count should be between 2 and 100. [Default=2] *)
  max_executors_count : float prop option; [@option]
      (** Max configurable executors. If maxExecutorsCount > executorsCount, then auto-scaling is enabled. Max Executor Count should be between 2 and 1000. [Default=1000] *)
}
[@@deriving yojson_of]
(** Compute resources needed for a Task when using Dataproc Serverless. *)

type notebook__infrastructure_spec__container_image = {
  image : string prop option; [@option]
      (** Container image to use. *)
  java_jars : string prop list option; [@option]
      (** A list of Java JARS to add to the classpath. Valid input includes Cloud Storage URIs to Jar binaries. For example, gs://bucket-name/my/path/to/file.jar *)
  properties : (string * string prop) list option; [@option]
      (** Override to common configuration of open source components installed on the Dataproc cluster. The properties to set on daemon config files. Property keys are specified in prefix:property format, for example core:hadoop.tmp.dir. For more information, see Cluster properties. *)
  python_packages : string prop list option; [@option]
      (** A list of python packages to be installed. Valid formats include Cloud Storage URI to a PIP installable library. For example, gs://bucket-name/my/path/to/lib.tar.gz *)
}
[@@deriving yojson_of]
(** Container Image Runtime Configuration. *)

type notebook__infrastructure_spec__vpc_network = {
  network : string prop option; [@option]
      (** The Cloud VPC network in which the job is run. By default, the Cloud VPC network named Default within the project is used. *)
  network_tags : string prop list option; [@option]
      (** List of network tags to apply to the job. *)
  sub_network : string prop option; [@option]
      (** The Cloud VPC sub-network in which the job is run. *)
}
[@@deriving yojson_of]
(** Vpc network. *)

type notebook__infrastructure_spec = {
  batch : notebook__infrastructure_spec__batch list;
  container_image :
    notebook__infrastructure_spec__container_image list;
  vpc_network : notebook__infrastructure_spec__vpc_network list;
}
[@@deriving yojson_of]
(** Infrastructure specification for the execution. *)

type notebook = {
  archive_uris : string prop list option; [@option]
      (** Cloud Storage URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip. *)
  file_uris : string prop list option; [@option]
      (** Cloud Storage URIs of files to be placed in the working directory of each executor. *)
  notebook : string prop;
      (** Path to input notebook. This can be the Cloud Storage URI of the notebook file or the path to a Notebook Content. The execution args are accessible as environment variables (TASK_key=value). *)
  infrastructure_spec : notebook__infrastructure_spec list;
}
[@@deriving yojson_of]
(** A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time. *)

type spark__infrastructure_spec__batch = {
  executors_count : float prop option; [@option]
      (** Total number of job executors. Executor Count should be between 2 and 100. [Default=2] *)
  max_executors_count : float prop option; [@option]
      (** Max configurable executors. If maxExecutorsCount > executorsCount, then auto-scaling is enabled. Max Executor Count should be between 2 and 1000. [Default=1000] *)
}
[@@deriving yojson_of]
(** Compute resources needed for a Task when using Dataproc Serverless. *)

type spark__infrastructure_spec__container_image = {
  image : string prop option; [@option]
      (** Container image to use. *)
  java_jars : string prop list option; [@option]
      (** A list of Java JARS to add to the classpath. Valid input includes Cloud Storage URIs to Jar binaries. For example, gs://bucket-name/my/path/to/file.jar *)
  properties : (string * string prop) list option; [@option]
      (** Override to common configuration of open source components installed on the Dataproc cluster. The properties to set on daemon config files. Property keys are specified in prefix:property format, for example core:hadoop.tmp.dir. For more information, see Cluster properties. *)
  python_packages : string prop list option; [@option]
      (** A list of python packages to be installed. Valid formats include Cloud Storage URI to a PIP installable library. For example, gs://bucket-name/my/path/to/lib.tar.gz *)
}
[@@deriving yojson_of]
(** Container Image Runtime Configuration. *)

type spark__infrastructure_spec__vpc_network = {
  network : string prop option; [@option]
      (** The Cloud VPC network in which the job is run. By default, the Cloud VPC network named Default within the project is used. *)
  network_tags : string prop list option; [@option]
      (** List of network tags to apply to the job. *)
  sub_network : string prop option; [@option]
      (** The Cloud VPC sub-network in which the job is run. *)
}
[@@deriving yojson_of]
(** Vpc network. *)

type spark__infrastructure_spec = {
  batch : spark__infrastructure_spec__batch list;
  container_image : spark__infrastructure_spec__container_image list;
  vpc_network : spark__infrastructure_spec__vpc_network list;
}
[@@deriving yojson_of]
(** Infrastructure specification for the execution. *)

type spark = {
  archive_uris : string prop list option; [@option]
      (** Cloud Storage URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip. *)
  file_uris : string prop list option; [@option]
      (** Cloud Storage URIs of files to be placed in the working directory of each executor. *)
  main_class : string prop option; [@option]
      (** The name of the driver's main class. The jar file that contains the class must be in the default CLASSPATH or specified in jar_file_uris. The execution args are passed in as a sequence of named process arguments (--key=value). *)
  main_jar_file_uri : string prop option; [@option]
      (** The Cloud Storage URI of the jar file that contains the main class. The execution args are passed in as a sequence of named process arguments (--key=value). *)
  python_script_file : string prop option; [@option]
      (** The Gcloud Storage URI of the main Python file to use as the driver. Must be a .py file. The execution args are passed in as a sequence of named process arguments (--key=value). *)
  sql_script : string prop option; [@option]
      (** The query text. The execution args are used to declare a set of script variables (set key='value';). *)
  sql_script_file : string prop option; [@option]
      (** A reference to a query file. This can be the Cloud Storage URI of the query file or it can the path to a SqlScript Content. The execution args are used to declare a set of script variables (set key='value';). *)
  infrastructure_spec : spark__infrastructure_spec list;
}
[@@deriving yojson_of]
(** A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type trigger_spec = {
  disabled : bool prop option; [@option]
      (** Prevent the task from executing. This does not cancel already running tasks. It is intended to temporarily disable RECURRING tasks. *)
  max_retries : float prop option; [@option]
      (** Number of retry attempts before aborting. Set to zero to never attempt to retry a failed task. *)
  schedule : string prop option; [@option]
      (** Cron schedule (https://en.wikipedia.org/wiki/Cron) for running tasks periodically. To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: 'CRON_TZ=${IANA_TIME_ZONE}' or 'TZ=${IANA_TIME_ZONE}'. The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database. For example, CRON_TZ=America/New_York 1 * * * *, or TZ=America/New_York 1 * * * *. This field is required for RECURRING tasks. *)
  start_time : string prop option; [@option]
      (** The first run of the task will be after this time. If not specified, the task will run shortly after being submitted if ON_DEMAND and based on the schedule if RECURRING. *)
  type_ : string prop; [@key "type"]
      (** Trigger type of the user-specified Task Possible values: [ON_DEMAND, RECURRING] *)
}
[@@deriving yojson_of]
(** Configuration for the cluster *)

type execution_status__latest_job = {
  end_time : string prop;  (** end_time *)
  message : string prop;  (** message *)
  name : string prop;  (** name *)
  retry_count : float prop;  (** retry_count *)
  service : string prop;  (** service *)
  service_job : string prop;  (** service_job *)
  start_time : string prop;  (** start_time *)
  state : string prop;  (** state *)
  uid : string prop;  (** uid *)
}
[@@deriving yojson_of]

type execution_status = {
  latest_job : execution_status__latest_job list;  (** latest_job *)
  update_time : string prop;  (** update_time *)
}
[@@deriving yojson_of]

type google_dataplex_task = {
  description : string prop option; [@option]
      (** User-provided description of the task. *)
  display_name : string prop option; [@option]
      (** User friendly display name. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** User-defined labels for the task.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  lake : string prop option; [@option]
      (** The lake in which the task will be created in. *)
  location : string prop option; [@option]
      (** The location in which the task will be created in. *)
  project : string prop option; [@option]  (** project *)
  task_id : string prop option; [@option]
      (** The task Id of the task. *)
  execution_spec : execution_spec list;
  notebook : notebook list;
  spark : spark list;
  timeouts : timeouts option;
  trigger_spec : trigger_spec list;
}
[@@deriving yojson_of]
(** google_dataplex_task *)

let execution_spec ?args ?kms_key ?max_job_execution_lifetime
    ?project ~service_account () : execution_spec =
  {
    args;
    kms_key;
    max_job_execution_lifetime;
    project;
    service_account;
  }

let notebook__infrastructure_spec__batch ?executors_count
    ?max_executors_count () : notebook__infrastructure_spec__batch =
  { executors_count; max_executors_count }

let notebook__infrastructure_spec__container_image ?image ?java_jars
    ?properties ?python_packages () :
    notebook__infrastructure_spec__container_image =
  { image; java_jars; properties; python_packages }

let notebook__infrastructure_spec__vpc_network ?network ?network_tags
    ?sub_network () : notebook__infrastructure_spec__vpc_network =
  { network; network_tags; sub_network }

let notebook__infrastructure_spec ~batch ~container_image
    ~vpc_network () : notebook__infrastructure_spec =
  { batch; container_image; vpc_network }

let notebook ?archive_uris ?file_uris ~notebook ~infrastructure_spec
    () : notebook =
  { archive_uris; file_uris; notebook; infrastructure_spec }

let spark__infrastructure_spec__batch ?executors_count
    ?max_executors_count () : spark__infrastructure_spec__batch =
  { executors_count; max_executors_count }

let spark__infrastructure_spec__container_image ?image ?java_jars
    ?properties ?python_packages () :
    spark__infrastructure_spec__container_image =
  { image; java_jars; properties; python_packages }

let spark__infrastructure_spec__vpc_network ?network ?network_tags
    ?sub_network () : spark__infrastructure_spec__vpc_network =
  { network; network_tags; sub_network }

let spark__infrastructure_spec ~batch ~container_image ~vpc_network
    () : spark__infrastructure_spec =
  { batch; container_image; vpc_network }

let spark ?archive_uris ?file_uris ?main_class ?main_jar_file_uri
    ?python_script_file ?sql_script ?sql_script_file
    ~infrastructure_spec () : spark =
  {
    archive_uris;
    file_uris;
    main_class;
    main_jar_file_uri;
    python_script_file;
    sql_script;
    sql_script_file;
    infrastructure_spec;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let trigger_spec ?disabled ?max_retries ?schedule ?start_time ~type_
    () : trigger_spec =
  { disabled; max_retries; schedule; start_time; type_ }

let google_dataplex_task ?description ?display_name ?id ?labels ?lake
    ?location ?project ?task_id ?timeouts ~execution_spec ~notebook
    ~spark ~trigger_spec () : google_dataplex_task =
  {
    description;
    display_name;
    id;
    labels;
    lake;
    location;
    project;
    task_id;
    execution_spec;
    notebook;
    spark;
    timeouts;
    trigger_spec;
  }

type t = {
  create_time : string prop;
  description : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  execution_status : execution_status list prop;
  id : string prop;
  labels : (string * string) list prop;
  lake : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  task_id : string prop;
  terraform_labels : (string * string) list prop;
  uid : string prop;
  update_time : string prop;
}

let register ?tf_module ?description ?display_name ?id ?labels ?lake
    ?location ?project ?task_id ?timeouts ~execution_spec ~notebook
    ~spark ~trigger_spec __resource_id =
  let __resource_type = "google_dataplex_task" in
  let __resource =
    google_dataplex_task ?description ?display_name ?id ?labels ?lake
      ?location ?project ?task_id ?timeouts ~execution_spec ~notebook
      ~spark ~trigger_spec ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dataplex_task __resource);
  let __resource_attributes =
    ({
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       description =
         Prop.computed __resource_type __resource_id "description";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       execution_status =
         Prop.computed __resource_type __resource_id
           "execution_status";
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       lake = Prop.computed __resource_type __resource_id "lake";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       state = Prop.computed __resource_type __resource_id "state";
       task_id =
         Prop.computed __resource_type __resource_id "task_id";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
       uid = Prop.computed __resource_type __resource_id "uid";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
     }
      : t)
  in
  __resource_attributes
