(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_dataproc_workflow_template__jobs__hadoop_job__logging_config = {
  driver_log_levels : (string * string) list option; [@option]
      (** The per-package log levels for the driver. This may include root package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG' *)
}
[@@deriving yojson_of]
(** Optional. The runtime log config for job execution. *)

type google_dataproc_workflow_template__jobs__hadoop_job = {
  archive_uris : string list option; [@option]
      (** Optional. HCFS URIs of archives to be extracted in the working directory of Hadoop drivers and tasks. Supported file types: .jar, .tar, .tar.gz, .tgz, or .zip. *)
  args : string list option; [@option]
      (** Optional. The arguments to pass to the driver. Do not include arguments, such as `-libjars` or `-Dfoo=bar`, that can be set as job properties, since a collision may occur that causes an incorrect job submission. *)
  file_uris : string list option; [@option]
      (** Optional. HCFS (Hadoop Compatible Filesystem) URIs of files to be copied to the working directory of Hadoop drivers and distributed tasks. Useful for naively parallel tasks. *)
  jar_file_uris : string list option; [@option]
      (** Optional. Jar file URIs to add to the CLASSPATHs of the Hadoop driver and tasks. *)
  main_class : string option; [@option]
      (** The name of the driver's main class. The jar file containing the class must be in the default CLASSPATH or specified in `jar_file_uris`. *)
  main_jar_file_uri : string option; [@option]
      (** The HCFS URI of the jar file containing the main class. Examples: 'gs://foo-bucket/analytics-binaries/extract-useful-metrics-mr.jar' 'hdfs:/tmp/test-samples/custom-wordcount.jar' 'file:///home/usr/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar' *)
  properties : (string * string) list option; [@option]
      (** Optional. A mapping of property names to values, used to configure Hadoop. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in /etc/hadoop/conf/*-site and classes in user code. *)
  logging_config :
    google_dataproc_workflow_template__jobs__hadoop_job__logging_config
    list;
}
[@@deriving yojson_of]
(** Optional. Job is a Hadoop job. *)

type google_dataproc_workflow_template__jobs__hive_job__query_list = {
  queries : string list;
      (** Required. The queries to execute. You do not need to end a query expression with a semicolon. Multiple queries can be specified in one string by separating each with a semicolon. Here is an example of a Dataproc API snippet that uses a QueryList to specify a HiveJob: hiveJob: { queryList: { queries: [ query1, query2, query3;query4, ] } } *)
}
[@@deriving yojson_of]
(** A list of queries. *)

type google_dataproc_workflow_template__jobs__hive_job = {
  continue_on_failure : bool option; [@option]
      (** Optional. Whether to continue executing queries if a query fails. The default value is `false`. Setting to `true` can be useful when executing independent parallel queries. *)
  jar_file_uris : string list option; [@option]
      (** Optional. HCFS URIs of jar files to add to the CLASSPATH of the Hive server and Hadoop MapReduce (MR) tasks. Can contain Hive SerDes and UDFs. *)
  properties : (string * string) list option; [@option]
      (** Optional. A mapping of property names and values, used to configure Hive. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in /etc/hadoop/conf/*-site.xml, /etc/hive/conf/hive-site.xml, and classes in user code. *)
  query_file_uri : string option; [@option]
      (** The HCFS URI of the script that contains Hive queries. *)
  script_variables : (string * string) list option; [@option]
      (** Optional. Mapping of query variable names to values (equivalent to the Hive command: `SET name=value;`). *)
  query_list :
    google_dataproc_workflow_template__jobs__hive_job__query_list
    list;
}
[@@deriving yojson_of]
(** Optional. Job is a Hive job. *)

type google_dataproc_workflow_template__jobs__pig_job__logging_config = {
  driver_log_levels : (string * string) list option; [@option]
      (** The per-package log levels for the driver. This may include root package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG' *)
}
[@@deriving yojson_of]
(** Optional. The runtime log config for job execution. *)

type google_dataproc_workflow_template__jobs__pig_job__query_list = {
  queries : string list;
      (** Required. The queries to execute. You do not need to end a query expression with a semicolon. Multiple queries can be specified in one string by separating each with a semicolon. Here is an example of a Dataproc API snippet that uses a QueryList to specify a HiveJob: hiveJob: { queryList: { queries: [ query1, query2, query3;query4, ] } } *)
}
[@@deriving yojson_of]
(** A list of queries. *)

type google_dataproc_workflow_template__jobs__pig_job = {
  continue_on_failure : bool option; [@option]
      (** Optional. Whether to continue executing queries if a query fails. The default value is `false`. Setting to `true` can be useful when executing independent parallel queries. *)
  jar_file_uris : string list option; [@option]
      (** Optional. HCFS URIs of jar files to add to the CLASSPATH of the Pig Client and Hadoop MapReduce (MR) tasks. Can contain Pig UDFs. *)
  properties : (string * string) list option; [@option]
      (** Optional. A mapping of property names to values, used to configure Pig. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in /etc/hadoop/conf/*-site.xml, /etc/pig/conf/pig.properties, and classes in user code. *)
  query_file_uri : string option; [@option]
      (** The HCFS URI of the script that contains the Pig queries. *)
  script_variables : (string * string) list option; [@option]
      (** Optional. Mapping of query variable names to values (equivalent to the Pig command: `name=[value]`). *)
  logging_config :
    google_dataproc_workflow_template__jobs__pig_job__logging_config
    list;
  query_list :
    google_dataproc_workflow_template__jobs__pig_job__query_list list;
}
[@@deriving yojson_of]
(** Optional. Job is a Pig job. *)

type google_dataproc_workflow_template__jobs__presto_job__logging_config = {
  driver_log_levels : (string * string) list option; [@option]
      (** The per-package log levels for the driver. This may include root package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG' *)
}
[@@deriving yojson_of]
(** Optional. The runtime log config for job execution. *)

type google_dataproc_workflow_template__jobs__presto_job__query_list = {
  queries : string list;
      (** Required. The queries to execute. You do not need to end a query expression with a semicolon. Multiple queries can be specified in one string by separating each with a semicolon. Here is an example of a Dataproc API snippet that uses a QueryList to specify a HiveJob: hiveJob: { queryList: { queries: [ query1, query2, query3;query4, ] } } *)
}
[@@deriving yojson_of]
(** A list of queries. *)

type google_dataproc_workflow_template__jobs__presto_job = {
  client_tags : string list option; [@option]
      (** Optional. Presto client tags to attach to this query *)
  continue_on_failure : bool option; [@option]
      (** Optional. Whether to continue executing queries if a query fails. The default value is `false`. Setting to `true` can be useful when executing independent parallel queries. *)
  output_format : string option; [@option]
      (** Optional. The format in which query output will be displayed. See the Presto documentation for supported output formats *)
  properties : (string * string) list option; [@option]
      (** Optional. A mapping of property names to values. Used to set Presto [session properties](https://prestodb.io/docs/current/sql/set-session.html) Equivalent to using the --session flag in the Presto CLI *)
  query_file_uri : string option; [@option]
      (** The HCFS URI of the script that contains SQL queries. *)
  logging_config :
    google_dataproc_workflow_template__jobs__presto_job__logging_config
    list;
  query_list :
    google_dataproc_workflow_template__jobs__presto_job__query_list
    list;
}
[@@deriving yojson_of]
(** Optional. Job is a Presto job. *)

type google_dataproc_workflow_template__jobs__pyspark_job__logging_config = {
  driver_log_levels : (string * string) list option; [@option]
      (** The per-package log levels for the driver. This may include root package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG' *)
}
[@@deriving yojson_of]
(** Optional. The runtime log config for job execution. *)

type google_dataproc_workflow_template__jobs__pyspark_job = {
  archive_uris : string list option; [@option]
      (** Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip. *)
  args : string list option; [@option]
      (** Optional. The arguments to pass to the driver. Do not include arguments, such as `--conf`, that can be set as job properties, since a collision may occur that causes an incorrect job submission. *)
  file_uris : string list option; [@option]
      (** Optional. HCFS URIs of files to be placed in the working directory of each executor. Useful for naively parallel tasks. *)
  jar_file_uris : string list option; [@option]
      (** Optional. HCFS URIs of jar files to add to the CLASSPATHs of the Python driver and tasks. *)
  main_python_file_uri : string;
      (** Required. The HCFS URI of the main Python file to use as the driver. Must be a .py file. *)
  properties : (string * string) list option; [@option]
      (** Optional. A mapping of property names to values, used to configure PySpark. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in /etc/spark/conf/spark-defaults.conf and classes in user code. *)
  python_file_uris : string list option; [@option]
      (** Optional. HCFS file URIs of Python files to pass to the PySpark framework. Supported file types: .py, .egg, and .zip. *)
  logging_config :
    google_dataproc_workflow_template__jobs__pyspark_job__logging_config
    list;
}
[@@deriving yojson_of]
(** Optional. Job is a PySpark job. *)

type google_dataproc_workflow_template__jobs__scheduling = {
  max_failures_per_hour : float option; [@option]
      (** Optional. Maximum number of times per hour a driver may be restarted as a result of driver exiting with non-zero code before job is reported failed. A job may be reported as thrashing if driver exits with non-zero code 4 times within 10 minute window. Maximum value is 10. *)
  max_failures_total : float option; [@option]
      (** Optional. Maximum number of times in total a driver may be restarted as a result of driver exiting with non-zero code before job is reported failed. Maximum value is 240. *)
}
[@@deriving yojson_of]
(** Optional. Job scheduling configuration. *)

type google_dataproc_workflow_template__jobs__spark_job__logging_config = {
  driver_log_levels : (string * string) list option; [@option]
      (** The per-package log levels for the driver. This may include root package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG' *)
}
[@@deriving yojson_of]
(** Optional. The runtime log config for job execution. *)

type google_dataproc_workflow_template__jobs__spark_job = {
  archive_uris : string list option; [@option]
      (** Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip. *)
  args : string list option; [@option]
      (** Optional. The arguments to pass to the driver. Do not include arguments, such as `--conf`, that can be set as job properties, since a collision may occur that causes an incorrect job submission. *)
  file_uris : string list option; [@option]
      (** Optional. HCFS URIs of files to be placed in the working directory of each executor. Useful for naively parallel tasks. *)
  jar_file_uris : string list option; [@option]
      (** Optional. HCFS URIs of jar files to add to the CLASSPATHs of the Spark driver and tasks. *)
  main_class : string option; [@option]
      (** The name of the driver's main class. The jar file that contains the class must be in the default CLASSPATH or specified in `jar_file_uris`. *)
  main_jar_file_uri : string option; [@option]
      (** The HCFS URI of the jar file that contains the main class. *)
  properties : (string * string) list option; [@option]
      (** Optional. A mapping of property names to values, used to configure Spark. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in /etc/spark/conf/spark-defaults.conf and classes in user code. *)
  logging_config :
    google_dataproc_workflow_template__jobs__spark_job__logging_config
    list;
}
[@@deriving yojson_of]
(** Optional. Job is a Spark job. *)

type google_dataproc_workflow_template__jobs__spark_r_job__logging_config = {
  driver_log_levels : (string * string) list option; [@option]
      (** The per-package log levels for the driver. This may include root package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG' *)
}
[@@deriving yojson_of]
(** Optional. The runtime log config for job execution. *)

type google_dataproc_workflow_template__jobs__spark_r_job = {
  archive_uris : string list option; [@option]
      (** Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip. *)
  args : string list option; [@option]
      (** Optional. The arguments to pass to the driver. Do not include arguments, such as `--conf`, that can be set as job properties, since a collision may occur that causes an incorrect job submission. *)
  file_uris : string list option; [@option]
      (** Optional. HCFS URIs of files to be placed in the working directory of each executor. Useful for naively parallel tasks. *)
  main_r_file_uri : string;
      (** Required. The HCFS URI of the main R file to use as the driver. Must be a .R file. *)
  properties : (string * string) list option; [@option]
      (** Optional. A mapping of property names to values, used to configure SparkR. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in /etc/spark/conf/spark-defaults.conf and classes in user code. *)
  logging_config :
    google_dataproc_workflow_template__jobs__spark_r_job__logging_config
    list;
}
[@@deriving yojson_of]
(** Optional. Job is a SparkR job. *)

type google_dataproc_workflow_template__jobs__spark_sql_job__logging_config = {
  driver_log_levels : (string * string) list option; [@option]
      (** The per-package log levels for the driver. This may include root package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG' *)
}
[@@deriving yojson_of]
(** Optional. The runtime log config for job execution. *)

type google_dataproc_workflow_template__jobs__spark_sql_job__query_list = {
  queries : string list;
      (** Required. The queries to execute. You do not need to end a query expression with a semicolon. Multiple queries can be specified in one string by separating each with a semicolon. Here is an example of a Dataproc API snippet that uses a QueryList to specify a HiveJob: hiveJob: { queryList: { queries: [ query1, query2, query3;query4, ] } } *)
}
[@@deriving yojson_of]
(** A list of queries. *)

type google_dataproc_workflow_template__jobs__spark_sql_job = {
  jar_file_uris : string list option; [@option]
      (** Optional. HCFS URIs of jar files to be added to the Spark CLASSPATH. *)
  properties : (string * string) list option; [@option]
      (** Optional. A mapping of property names to values, used to configure Spark SQL's SparkConf. Properties that conflict with values set by the Dataproc API may be overwritten. *)
  query_file_uri : string option; [@option]
      (** The HCFS URI of the script that contains SQL queries. *)
  script_variables : (string * string) list option; [@option]
      (** Optional. Mapping of query variable names to values (equivalent to the Spark SQL command: SET `name=value;`). *)
  logging_config :
    google_dataproc_workflow_template__jobs__spark_sql_job__logging_config
    list;
  query_list :
    google_dataproc_workflow_template__jobs__spark_sql_job__query_list
    list;
}
[@@deriving yojson_of]
(** Optional. Job is a SparkSql job. *)

type google_dataproc_workflow_template__jobs = {
  labels : (string * string) list option; [@option]
      (** Optional. The labels to associate with this job. Label keys must be between 1 and 63 characters long, and must conform to the following regular expression: p{Ll}p{Lo}{0,62} Label values must be between 1 and 63 characters long, and must conform to the following regular expression: [p{Ll}p{Lo}p{N}_-]{0,63} No more than 32 labels can be associated with a given job. *)
  prerequisite_step_ids : string list option; [@option]
      (** Optional. The optional list of prerequisite job step_ids. If not specified, the job will start at the beginning of workflow. *)
  step_id : string;
      (** Required. The step id. The id must be unique among all jobs within the template. The step id is used as prefix for job id, as job `goog-dataproc-workflow-step-id` label, and in prerequisiteStepIds field from other steps. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between 3 and 50 characters. *)
  hadoop_job :
    google_dataproc_workflow_template__jobs__hadoop_job list;
  hive_job : google_dataproc_workflow_template__jobs__hive_job list;
  pig_job : google_dataproc_workflow_template__jobs__pig_job list;
  presto_job :
    google_dataproc_workflow_template__jobs__presto_job list;
  pyspark_job :
    google_dataproc_workflow_template__jobs__pyspark_job list;
  scheduling :
    google_dataproc_workflow_template__jobs__scheduling list;
  spark_job :
    google_dataproc_workflow_template__jobs__spark_job list;
  spark_r_job :
    google_dataproc_workflow_template__jobs__spark_r_job list;
  spark_sql_job :
    google_dataproc_workflow_template__jobs__spark_sql_job list;
}
[@@deriving yojson_of]
(** Required. The Directed Acyclic Graph of Jobs to submit. *)

type google_dataproc_workflow_template__parameters__validation__regex = {
  regexes : string list;
      (** Required. RE2 regular expressions used to validate the parameter's value. The value must match the regex in its entirety (substring matches are not sufficient). *)
}
[@@deriving yojson_of]
(** Validation based on regular expressions. *)

type google_dataproc_workflow_template__parameters__validation__values = {
  values : string list;
      (** Required. List of allowed values for the parameter. *)
}
[@@deriving yojson_of]
(** Validation based on a list of allowed values. *)

type google_dataproc_workflow_template__parameters__validation = {
  regex :
    google_dataproc_workflow_template__parameters__validation__regex
    list;
  values :
    google_dataproc_workflow_template__parameters__validation__values
    list;
}
[@@deriving yojson_of]
(** Optional. Validation rules to be applied to this parameter's value. *)

type google_dataproc_workflow_template__parameters = {
  description : string option; [@option]
      (** Optional. Brief description of the parameter. Must not exceed 1024 characters. *)
  fields : string list;
      (** Required. Paths to all fields that the parameter replaces. A field is allowed to appear in at most one parameter's list of field paths. A field path is similar in syntax to a google.protobuf.FieldMask. For example, a field path that references the zone field of a workflow template's cluster selector would be specified as `placement.clusterSelector.zone`. Also, field paths can reference fields using the following syntax: * Values in maps can be referenced by key: * labels['key'] * placement.clusterSelector.clusterLabels['key'] * placement.managedCluster.labels['key'] * placement.clusterSelector.clusterLabels['key'] * jobs['step-id'].labels['key'] * Jobs in the jobs list can be referenced by step-id: * jobs['step-id'].hadoopJob.mainJarFileUri * jobs['step-id'].hiveJob.queryFileUri * jobs['step-id'].pySparkJob.mainPythonFileUri * jobs['step-id'].hadoopJob.jarFileUris[0] * jobs['step-id'].hadoopJob.archiveUris[0] * jobs['step-id'].hadoopJob.fileUris[0] * jobs['step-id'].pySparkJob.pythonFileUris[0] * Items in repeated fields can be referenced by a zero-based index: * jobs['step-id'].sparkJob.args[0] * Other examples: * jobs['step-id'].hadoopJob.properties['key'] * jobs['step-id'].hadoopJob.args[0] * jobs['step-id'].hiveJob.scriptVariables['key'] * jobs['step-id'].hadoopJob.mainJarFileUri * placement.clusterSelector.zone It may not be possible to parameterize maps and repeated fields in their entirety since only individual map values and individual items in repeated fields can be referenced. For example, the following field paths are invalid: - placement.clusterSelector.clusterLabels - jobs['step-id'].sparkJob.args *)
  name : string;
      (** Required. Parameter name. The parameter name is used as the key, and paired with the parameter value, which are passed to the template when the template is instantiated. The name must contain only capital letters (A-Z), numbers (0-9), and underscores (_), and must not start with a number. The maximum length is 40 characters. *)
  validation :
    google_dataproc_workflow_template__parameters__validation list;
}
[@@deriving yojson_of]
(** Optional. Template parameters whose values are substituted into the template. Values for parameters must be provided when the template is instantiated. *)

type google_dataproc_workflow_template__placement__cluster_selector = {
  cluster_labels : (string * string) list;
      (** Required. The cluster labels. Cluster must have all labels to match. *)
  zone : string option; [@option]
      (** Optional. The zone where workflow process executes. This parameter does not affect the selection of the cluster. If unspecified, the zone of the first cluster matching the selector is used. *)
}
[@@deriving yojson_of]
(** Optional. A selector that chooses target cluster for jobs based on metadata. The selector is evaluated at the time each job is submitted. *)

type google_dataproc_workflow_template__placement__managed_cluster__config__autoscaling_config = {
  policy : string option; [@option]
      (** Optional. The autoscaling policy used by the cluster. Only resource names including projectid and location (region) are valid. Examples: * `https://www.googleapis.com/compute/v1/projects/[project_id]/locations/[dataproc_region]/autoscalingPolicies/[policy_id]` * `projects/[project_id]/locations/[dataproc_region]/autoscalingPolicies/[policy_id]` Note that the policy must be in the same project and Dataproc region. *)
}
[@@deriving yojson_of]
(** Optional. Autoscaling config for the policy associated with the cluster. Cluster does not autoscale if this field is unset. *)

type google_dataproc_workflow_template__placement__managed_cluster__config__encryption_config = {
  gce_pd_kms_key_name : string option; [@option]
      (** Optional. The Cloud KMS key name to use for PD disk encryption for all instances in the cluster. *)
}
[@@deriving yojson_of]
(** Optional. Encryption settings for the cluster. *)

type google_dataproc_workflow_template__placement__managed_cluster__config__endpoint_config = {
  enable_http_port_access : bool option; [@option]
      (** Optional. If true, enable http access to specific ports on the cluster from external sources. Defaults to false. *)
  http_ports : (string * string) list;
      (** Output only. The map of port descriptions to URLs. Will only be populated if enable_http_port_access is true. *)
}
[@@deriving yojson_of]
(** Optional. Port/endpoint configuration for this cluster *)

type google_dataproc_workflow_template__placement__managed_cluster__config__gce_cluster_config__node_group_affinity = {
  node_group : string;
      (** Required. The URI of a sole-tenant [node group resource](https://cloud.google.com/compute/docs/reference/rest/v1/nodeGroups) that the cluster will be created on. A full URL, partial URI, or node group name are valid. Examples: * `https://www.googleapis.com/compute/v1/projects/[project_id]/zones/us-central1-a/nodeGroups/node-group-1` * `projects/[project_id]/zones/us-central1-a/nodeGroups/node-group-1` * `node-group-1` *)
}
[@@deriving yojson_of]
(** Optional. Node Group Affinity for sole-tenant clusters. *)

type google_dataproc_workflow_template__placement__managed_cluster__config__gce_cluster_config__reservation_affinity = {
  consume_reservation_type : string option; [@option]
      (** Optional. Type of reservation to consume Possible values: TYPE_UNSPECIFIED, NO_RESERVATION, ANY_RESERVATION, SPECIFIC_RESERVATION *)
  key : string option; [@option]
      (** Optional. Corresponds to the label key of reservation resource. *)
  values : string list option; [@option]
      (** Optional. Corresponds to the label values of reservation resource. *)
}
[@@deriving yojson_of]
(** Optional. Reservation Affinity for consuming Zonal reservation. *)

type google_dataproc_workflow_template__placement__managed_cluster__config__gce_cluster_config__shielded_instance_config = {
  enable_integrity_monitoring : bool option; [@option]
      (** Optional. Defines whether instances have integrity monitoring enabled. Integrity monitoring compares the most recent boot measurements to the integrity policy baseline and returns a pair of pass/fail results depending on whether they match or not. *)
  enable_secure_boot : bool option; [@option]
      (** Optional. Defines whether the instances have Secure Boot enabled. Secure Boot helps ensure that the system only runs authentic software by verifying the digital signature of all boot components, and halting the boot process if signature verification fails. *)
  enable_vtpm : bool option; [@option]
      (** Optional. Defines whether the instance have the vTPM enabled. Virtual Trusted Platform Module protects objects like keys, certificates and enables Measured Boot by performing the measurements needed to create a known good boot baseline, called the integrity policy baseline. *)
}
[@@deriving yojson_of]
(** Optional. Shielded Instance Config for clusters using Compute Engine Shielded VMs. *)

type google_dataproc_workflow_template__placement__managed_cluster__config__gce_cluster_config = {
  internal_ip_only : bool option; [@option]
      (** Optional. If true, all instances in the cluster will only have internal IP addresses. By default, clusters are not restricted to internal IP addresses, and will have ephemeral external IP addresses assigned to each instance. This `internal_ip_only` restriction can only be enabled for subnetwork enabled networks, and all off-cluster dependencies must be configured to be accessible without external IP addresses. *)
  metadata : (string * string) list option; [@option]
      (** The Compute Engine metadata entries to add to all instances (see [Project and instance metadata](https://cloud.google.com/compute/docs/storing-retrieving-metadata#project_and_instance_metadata)). *)
  network : string option; [@option]
      (** Optional. The Compute Engine network to be used for machine communications. Cannot be specified with subnetwork_uri. If neither `network_uri` nor `subnetwork_uri` is specified, the default network of the project is used, if it exists. Cannot be a Custom Subnet Network (see [Using Subnetworks](https://cloud.google.com/compute/docs/subnetworks) for more information). A full URL, partial URI, or short name are valid. Examples: * `https://www.googleapis.com/compute/v1/projects/[project_id]/regions/global/default` * `projects/[project_id]/regions/global/default` * `default` *)
  private_ipv6_google_access : string option; [@option]
      (** Optional. The type of IPv6 access for a cluster. Possible values: PRIVATE_IPV6_GOOGLE_ACCESS_UNSPECIFIED, INHERIT_FROM_SUBNETWORK, OUTBOUND, BIDIRECTIONAL *)
  service_account : string option; [@option]
      (** Optional. The [Dataproc service account](https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/service-accounts#service_accounts_in_dataproc) (also see [VM Data Plane identity](https://cloud.google.com/dataproc/docs/concepts/iam/dataproc-principals#vm_service_account_data_plane_identity)) used by Dataproc cluster VM instances to access Google Cloud Platform services. If not specified, the [Compute Engine default service account](https://cloud.google.com/compute/docs/access/service-accounts#default_service_account) is used. *)
  service_account_scopes : string list option; [@option]
      (** Optional. The URIs of service account scopes to be included in Compute Engine instances. The following base set of scopes is always included: * https://www.googleapis.com/auth/cloud.useraccounts.readonly * https://www.googleapis.com/auth/devstorage.read_write * https://www.googleapis.com/auth/logging.write If no scopes are specified, the following defaults are also provided: * https://www.googleapis.com/auth/bigquery * https://www.googleapis.com/auth/bigtable.admin.table * https://www.googleapis.com/auth/bigtable.data * https://www.googleapis.com/auth/devstorage.full_control *)
  subnetwork : string option; [@option]
      (** Optional. The Compute Engine subnetwork to be used for machine communications. Cannot be specified with network_uri. A full URL, partial URI, or short name are valid. Examples: * `https://www.googleapis.com/compute/v1/projects/[project_id]/regions/us-east1/subnetworks/sub0` * `projects/[project_id]/regions/us-east1/subnetworks/sub0` * `sub0` *)
  tags : string list option; [@option]
      (** The Compute Engine tags to add to all instances (see [Tagging instances](https://cloud.google.com/compute/docs/label-or-tag-resources#tags)). *)
  zone : string option; [@option]
      (** Optional. The zone where the Compute Engine cluster will be located. On a create request, it is required in the global region. If omitted in a non-global Dataproc region, the service will pick a zone in the corresponding Compute Engine region. On a get request, zone will always be present. A full URL, partial URI, or short name are valid. Examples: * `https://www.googleapis.com/compute/v1/projects/[project_id]/zones/[zone]` * `projects/[project_id]/zones/[zone]` * `us-central1-f` *)
  node_group_affinity :
    google_dataproc_workflow_template__placement__managed_cluster__config__gce_cluster_config__node_group_affinity
    list;
  reservation_affinity :
    google_dataproc_workflow_template__placement__managed_cluster__config__gce_cluster_config__reservation_affinity
    list;
  shielded_instance_config :
    google_dataproc_workflow_template__placement__managed_cluster__config__gce_cluster_config__shielded_instance_config
    list;
}
[@@deriving yojson_of]
(** Optional. The shared Compute Engine config settings for all instances in a cluster. *)

type google_dataproc_workflow_template__placement__managed_cluster__config__initialization_actions = {
  executable_file : string option; [@option]
      (** Required. Cloud Storage URI of executable file. *)
  execution_timeout : string option; [@option]
      (** Optional. Amount of time executable has to complete. Default is 10 minutes (see JSON representation of [Duration](https://developers.google.com/protocol-buffers/docs/proto3#json)). Cluster creation fails with an explanatory error message (the name of the executable that caused the error and the exceeded timeout period) if the executable is not completed at end of the timeout period. *)
}
[@@deriving yojson_of]
(** Optional. Commands to execute on each node after config is completed. By default, executables are run on master and all worker nodes. You can test a node's `role` metadata to run an executable on a master or worker node, as shown below using `curl` (you can also use `wget`): ROLE=$(curl -H Metadata-Flavor:Google http://metadata/computeMetadata/v1/instance/attributes/dataproc-role) if [[ ${ROLE} == 'Master' ]]; then ... master specific actions ... else ... worker specific actions ... fi *)

type google_dataproc_workflow_template__placement__managed_cluster__config__lifecycle_config = {
  auto_delete_time : string option; [@option]
      (** Optional. The time when cluster will be auto-deleted (see JSON representation of [Timestamp](https://developers.google.com/protocol-buffers/docs/proto3#json)). *)
  auto_delete_ttl : string option; [@option]
      (** Optional. The lifetime duration of cluster. The cluster will be auto-deleted at the end of this period. Minimum value is 10 minutes; maximum value is 14 days (see JSON representation of [Duration](https://developers.google.com/protocol-buffers/docs/proto3#json)). *)
  idle_delete_ttl : string option; [@option]
      (** Optional. The duration to keep the cluster alive while idling (when no jobs are running). Passing this threshold will cause the cluster to be deleted. Minimum value is 5 minutes; maximum value is 14 days (see JSON representation of [Duration](https://developers.google.com/protocol-buffers/docs/proto3#json)). *)
  idle_start_time : string;
      (** Output only. The time when cluster became idle (most recent job finished) and became eligible for deletion due to idleness (see JSON representation of [Timestamp](https://developers.google.com/protocol-buffers/docs/proto3#json)). *)
}
[@@deriving yojson_of]
(** Optional. Lifecycle setting for the cluster. *)

type google_dataproc_workflow_template__placement__managed_cluster__config__master_config__accelerators = {
  accelerator_count : float option; [@option]
      (** The number of the accelerator cards of this type exposed to this instance. *)
  accelerator_type : string option; [@option]
      (** Full URL, partial URI, or short name of the accelerator type resource to expose to this instance. See [Compute Engine AcceleratorTypes](https://cloud.google.com/compute/docs/reference/beta/acceleratorTypes). Examples: * `https://www.googleapis.com/compute/beta/projects/[project_id]/zones/us-east1-a/acceleratorTypes/nvidia-tesla-k80` * `projects/[project_id]/zones/us-east1-a/acceleratorTypes/nvidia-tesla-k80` * `nvidia-tesla-k80` **Auto Zone Exception**: If you are using the Dataproc [Auto Zone Placement](https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/auto-zone#using_auto_zone_placement) feature, you must use the short name of the accelerator type resource, for example, `nvidia-tesla-k80`. *)
}
[@@deriving yojson_of]
(** Optional. The Compute Engine accelerator configuration for these instances. *)

type google_dataproc_workflow_template__placement__managed_cluster__config__master_config__disk_config = {
  boot_disk_size_gb : float option; [@option]
      (** Optional. Size in GB of the boot disk (default is 500GB). *)
  boot_disk_type : string option; [@option]
      (** Optional. Type of the boot disk (default is pd-standard). Valid values: pd-balanced (Persistent Disk Balanced Solid State Drive), pd-ssd (Persistent Disk Solid State Drive), or pd-standard (Persistent Disk Hard Disk Drive). See [Disk types](https://cloud.google.com/compute/docs/disks#disk-types). *)
  num_local_ssds : float option; [@option]
      (** Optional. Number of attached SSDs, from 0 to 4 (default is 0). If SSDs are not attached, the boot disk is used to store runtime logs and [HDFS](https://hadoop.apache.org/docs/r1.2.1/hdfs_user_guide.html) data. If one or more SSDs are attached, this runtime bulk data is spread across them, and the boot disk contains only basic config and installed binaries. *)
}
[@@deriving yojson_of]
(** Optional. Disk option config settings. *)

type google_dataproc_workflow_template__placement__managed_cluster__config__master_config__managed_group_config = {
  instance_group_manager_name : string;
      (** instance_group_manager_name *)
  instance_template_name : string;  (** instance_template_name *)
}
[@@deriving yojson_of]

type google_dataproc_workflow_template__placement__managed_cluster__config__master_config = {
  image : string option; [@option]
      (** Optional. The Compute Engine image resource used for cluster instances. The URI can represent an image or image family. Image examples: * `https://www.googleapis.com/compute/beta/projects/[project_id]/global/images/[image-id]` * `projects/[project_id]/global/images/[image-id]` * `image-id` Image family examples. Dataproc will use the most recent image from the family: * `https://www.googleapis.com/compute/beta/projects/[project_id]/global/images/family/[custom-image-family-name]` * `projects/[project_id]/global/images/family/[custom-image-family-name]` If the URI is unspecified, it will be inferred from `SoftwareConfig.image_version` or the system default. *)
  instance_names : string list;
      (** Output only. The list of instance names. Dataproc derives the names from `cluster_name`, `num_instances`, and the instance group. *)
  is_preemptible : bool;
      (** Output only. Specifies that this instance group contains preemptible instances. *)
  machine_type : string option; [@option]
      (** Optional. The Compute Engine machine type used for cluster instances. A full URL, partial URI, or short name are valid. Examples: * `https://www.googleapis.com/compute/v1/projects/[project_id]/zones/us-east1-a/machineTypes/n1-standard-2` * `projects/[project_id]/zones/us-east1-a/machineTypes/n1-standard-2` * `n1-standard-2` **Auto Zone Exception**: If you are using the Dataproc [Auto Zone Placement](https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/auto-zone#using_auto_zone_placement) feature, you must use the short name of the machine type resource, for example, `n1-standard-2`. *)
  managed_group_config :
    google_dataproc_workflow_template__placement__managed_cluster__config__master_config__managed_group_config
    list;
      (** Output only. The config for Compute Engine Instance Group Manager that manages this group. This is only used for preemptible instance groups. *)
  min_cpu_platform : string option; [@option]
      (** Optional. Specifies the minimum cpu platform for the Instance Group. See [Dataproc -> Minimum CPU Platform](https://cloud.google.com/dataproc/docs/concepts/compute/dataproc-min-cpu). *)
  num_instances : float option; [@option]
      (** Optional. The number of VM instances in the instance group. For [HA cluster](/dataproc/docs/concepts/configuring-clusters/high-availability) [master_config](#FIELDS.master_config) groups, **must be set to 3**. For standard cluster [master_config](#FIELDS.master_config) groups, **must be set to 1**. *)
  preemptibility : string option; [@option]
      (** Optional. Specifies the preemptibility of the instance group. The default value for master and worker groups is `NON_PREEMPTIBLE`. This default cannot be changed. The default value for secondary instances is `PREEMPTIBLE`. Possible values: PREEMPTIBILITY_UNSPECIFIED, NON_PREEMPTIBLE, PREEMPTIBLE *)
  accelerators :
    google_dataproc_workflow_template__placement__managed_cluster__config__master_config__accelerators
    list;
  disk_config :
    google_dataproc_workflow_template__placement__managed_cluster__config__master_config__disk_config
    list;
}
[@@deriving yojson_of]
(** Optional. The Compute Engine config settings for the master instance in a cluster. *)

type google_dataproc_workflow_template__placement__managed_cluster__config__secondary_worker_config__accelerators = {
  accelerator_count : float option; [@option]
      (** The number of the accelerator cards of this type exposed to this instance. *)
  accelerator_type : string option; [@option]
      (** Full URL, partial URI, or short name of the accelerator type resource to expose to this instance. See [Compute Engine AcceleratorTypes](https://cloud.google.com/compute/docs/reference/beta/acceleratorTypes). Examples: * `https://www.googleapis.com/compute/beta/projects/[project_id]/zones/us-east1-a/acceleratorTypes/nvidia-tesla-k80` * `projects/[project_id]/zones/us-east1-a/acceleratorTypes/nvidia-tesla-k80` * `nvidia-tesla-k80` **Auto Zone Exception**: If you are using the Dataproc [Auto Zone Placement](https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/auto-zone#using_auto_zone_placement) feature, you must use the short name of the accelerator type resource, for example, `nvidia-tesla-k80`. *)
}
[@@deriving yojson_of]
(** Optional. The Compute Engine accelerator configuration for these instances. *)

type google_dataproc_workflow_template__placement__managed_cluster__config__secondary_worker_config__disk_config = {
  boot_disk_size_gb : float option; [@option]
      (** Optional. Size in GB of the boot disk (default is 500GB). *)
  boot_disk_type : string option; [@option]
      (** Optional. Type of the boot disk (default is pd-standard). Valid values: pd-balanced (Persistent Disk Balanced Solid State Drive), pd-ssd (Persistent Disk Solid State Drive), or pd-standard (Persistent Disk Hard Disk Drive). See [Disk types](https://cloud.google.com/compute/docs/disks#disk-types). *)
  num_local_ssds : float option; [@option]
      (** Optional. Number of attached SSDs, from 0 to 4 (default is 0). If SSDs are not attached, the boot disk is used to store runtime logs and [HDFS](https://hadoop.apache.org/docs/r1.2.1/hdfs_user_guide.html) data. If one or more SSDs are attached, this runtime bulk data is spread across them, and the boot disk contains only basic config and installed binaries. *)
}
[@@deriving yojson_of]
(** Optional. Disk option config settings. *)

type google_dataproc_workflow_template__placement__managed_cluster__config__secondary_worker_config__managed_group_config = {
  instance_group_manager_name : string;
      (** instance_group_manager_name *)
  instance_template_name : string;  (** instance_template_name *)
}
[@@deriving yojson_of]

type google_dataproc_workflow_template__placement__managed_cluster__config__secondary_worker_config = {
  image : string option; [@option]
      (** Optional. The Compute Engine image resource used for cluster instances. The URI can represent an image or image family. Image examples: * `https://www.googleapis.com/compute/beta/projects/[project_id]/global/images/[image-id]` * `projects/[project_id]/global/images/[image-id]` * `image-id` Image family examples. Dataproc will use the most recent image from the family: * `https://www.googleapis.com/compute/beta/projects/[project_id]/global/images/family/[custom-image-family-name]` * `projects/[project_id]/global/images/family/[custom-image-family-name]` If the URI is unspecified, it will be inferred from `SoftwareConfig.image_version` or the system default. *)
  instance_names : string list;
      (** Output only. The list of instance names. Dataproc derives the names from `cluster_name`, `num_instances`, and the instance group. *)
  is_preemptible : bool;
      (** Output only. Specifies that this instance group contains preemptible instances. *)
  machine_type : string option; [@option]
      (** Optional. The Compute Engine machine type used for cluster instances. A full URL, partial URI, or short name are valid. Examples: * `https://www.googleapis.com/compute/v1/projects/[project_id]/zones/us-east1-a/machineTypes/n1-standard-2` * `projects/[project_id]/zones/us-east1-a/machineTypes/n1-standard-2` * `n1-standard-2` **Auto Zone Exception**: If you are using the Dataproc [Auto Zone Placement](https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/auto-zone#using_auto_zone_placement) feature, you must use the short name of the machine type resource, for example, `n1-standard-2`. *)
  managed_group_config :
    google_dataproc_workflow_template__placement__managed_cluster__config__secondary_worker_config__managed_group_config
    list;
      (** Output only. The config for Compute Engine Instance Group Manager that manages this group. This is only used for preemptible instance groups. *)
  min_cpu_platform : string option; [@option]
      (** Optional. Specifies the minimum cpu platform for the Instance Group. See [Dataproc -> Minimum CPU Platform](https://cloud.google.com/dataproc/docs/concepts/compute/dataproc-min-cpu). *)
  num_instances : float option; [@option]
      (** Optional. The number of VM instances in the instance group. For [HA cluster](/dataproc/docs/concepts/configuring-clusters/high-availability) [master_config](#FIELDS.master_config) groups, **must be set to 3**. For standard cluster [master_config](#FIELDS.master_config) groups, **must be set to 1**. *)
  preemptibility : string option; [@option]
      (** Optional. Specifies the preemptibility of the instance group. The default value for master and worker groups is `NON_PREEMPTIBLE`. This default cannot be changed. The default value for secondary instances is `PREEMPTIBLE`. Possible values: PREEMPTIBILITY_UNSPECIFIED, NON_PREEMPTIBLE, PREEMPTIBLE *)
  accelerators :
    google_dataproc_workflow_template__placement__managed_cluster__config__secondary_worker_config__accelerators
    list;
  disk_config :
    google_dataproc_workflow_template__placement__managed_cluster__config__secondary_worker_config__disk_config
    list;
}
[@@deriving yojson_of]
(** Optional. The Compute Engine config settings for additional worker instances in a cluster. *)

type google_dataproc_workflow_template__placement__managed_cluster__config__security_config__kerberos_config = {
  cross_realm_trust_admin_server : string option; [@option]
      (** Optional. The admin server (IP or hostname) for the remote trusted realm in a cross realm trust relationship. *)
  cross_realm_trust_kdc : string option; [@option]
      (** Optional. The KDC (IP or hostname) for the remote trusted realm in a cross realm trust relationship. *)
  cross_realm_trust_realm : string option; [@option]
      (** Optional. The remote realm the Dataproc on-cluster KDC will trust, should the user enable cross realm trust. *)
  cross_realm_trust_shared_password : string option; [@option]
      (** Optional. The Cloud Storage URI of a KMS encrypted file containing the shared password between the on-cluster Kerberos realm and the remote trusted realm, in a cross realm trust relationship. *)
  enable_kerberos : bool option; [@option]
      (** Optional. Flag to indicate whether to Kerberize the cluster (default: false). Set this field to true to enable Kerberos on a cluster. *)
  kdc_db_key : string option; [@option]
      (** Optional. The Cloud Storage URI of a KMS encrypted file containing the master key of the KDC database. *)
  key_password : string option; [@option]
      (** Optional. The Cloud Storage URI of a KMS encrypted file containing the password to the user provided key. For the self-signed certificate, this password is generated by Dataproc. *)
  keystore : string option; [@option]
      (** Optional. The Cloud Storage URI of the keystore file used for SSL encryption. If not provided, Dataproc will provide a self-signed certificate. *)
  keystore_password : string option; [@option]
      (** Optional. The Cloud Storage URI of a KMS encrypted file containing the password to the user provided keystore. For the self-signed certificate, this password is generated by Dataproc. *)
  kms_key : string option; [@option]
      (** Optional. The uri of the KMS key used to encrypt various sensitive files. *)
  realm : string option; [@option]
      (** Optional. The name of the on-cluster Kerberos realm. If not specified, the uppercased domain of hostnames will be the realm. *)
  root_principal_password : string option; [@option]
      (** Optional. The Cloud Storage URI of a KMS encrypted file containing the root principal password. *)
  tgt_lifetime_hours : float option; [@option]
      (** Optional. The lifetime of the ticket granting ticket, in hours. If not specified, or user specifies 0, then default value 10 will be used. *)
  truststore : string option; [@option]
      (** Optional. The Cloud Storage URI of the truststore file used for SSL encryption. If not provided, Dataproc will provide a self-signed certificate. *)
  truststore_password : string option; [@option]
      (** Optional. The Cloud Storage URI of a KMS encrypted file containing the password to the user provided truststore. For the self-signed certificate, this password is generated by Dataproc. *)
}
[@@deriving yojson_of]
(** Optional. Kerberos related configuration. *)

type google_dataproc_workflow_template__placement__managed_cluster__config__security_config = {
  kerberos_config :
    google_dataproc_workflow_template__placement__managed_cluster__config__security_config__kerberos_config
    list;
}
[@@deriving yojson_of]
(** Optional. Security settings for the cluster. *)

type google_dataproc_workflow_template__placement__managed_cluster__config__software_config = {
  image_version : string option; [@option]
      (** Optional. The version of software inside the cluster. It must be one of the supported [Dataproc Versions](https://cloud.google.com/dataproc/docs/concepts/versioning/dataproc-versions#supported_dataproc_versions), such as 1.2 (including a subminor version, such as 1.2.29), or the [preview version](https://cloud.google.com/dataproc/docs/concepts/versioning/dataproc-versions#other_versions). If unspecified, it defaults to the latest Debian version. *)
  optional_components : string list option; [@option]
      (** Optional. The set of components to activate on the cluster. *)
  properties : (string * string) list option; [@option]
      (** Optional. The properties to set on daemon config files. Property keys are specified in `prefix:property` format, for example `core:hadoop.tmp.dir`. The following are supported prefixes and their mappings: * capacity-scheduler: `capacity-scheduler.xml` * core: `core-site.xml` * distcp: `distcp-default.xml` * hdfs: `hdfs-site.xml` * hive: `hive-site.xml` * mapred: `mapred-site.xml` * pig: `pig.properties` * spark: `spark-defaults.conf` * yarn: `yarn-site.xml` For more information, see [Cluster properties](https://cloud.google.com/dataproc/docs/concepts/cluster-properties). *)
}
[@@deriving yojson_of]
(** Optional. The config settings for software inside the cluster. *)

type google_dataproc_workflow_template__placement__managed_cluster__config__worker_config__accelerators = {
  accelerator_count : float option; [@option]
      (** The number of the accelerator cards of this type exposed to this instance. *)
  accelerator_type : string option; [@option]
      (** Full URL, partial URI, or short name of the accelerator type resource to expose to this instance. See [Compute Engine AcceleratorTypes](https://cloud.google.com/compute/docs/reference/beta/acceleratorTypes). Examples: * `https://www.googleapis.com/compute/beta/projects/[project_id]/zones/us-east1-a/acceleratorTypes/nvidia-tesla-k80` * `projects/[project_id]/zones/us-east1-a/acceleratorTypes/nvidia-tesla-k80` * `nvidia-tesla-k80` **Auto Zone Exception**: If you are using the Dataproc [Auto Zone Placement](https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/auto-zone#using_auto_zone_placement) feature, you must use the short name of the accelerator type resource, for example, `nvidia-tesla-k80`. *)
}
[@@deriving yojson_of]
(** Optional. The Compute Engine accelerator configuration for these instances. *)

type google_dataproc_workflow_template__placement__managed_cluster__config__worker_config__disk_config = {
  boot_disk_size_gb : float option; [@option]
      (** Optional. Size in GB of the boot disk (default is 500GB). *)
  boot_disk_type : string option; [@option]
      (** Optional. Type of the boot disk (default is pd-standard). Valid values: pd-balanced (Persistent Disk Balanced Solid State Drive), pd-ssd (Persistent Disk Solid State Drive), or pd-standard (Persistent Disk Hard Disk Drive). See [Disk types](https://cloud.google.com/compute/docs/disks#disk-types). *)
  num_local_ssds : float option; [@option]
      (** Optional. Number of attached SSDs, from 0 to 4 (default is 0). If SSDs are not attached, the boot disk is used to store runtime logs and [HDFS](https://hadoop.apache.org/docs/r1.2.1/hdfs_user_guide.html) data. If one or more SSDs are attached, this runtime bulk data is spread across them, and the boot disk contains only basic config and installed binaries. *)
}
[@@deriving yojson_of]
(** Optional. Disk option config settings. *)

type google_dataproc_workflow_template__placement__managed_cluster__config__worker_config__managed_group_config = {
  instance_group_manager_name : string;
      (** instance_group_manager_name *)
  instance_template_name : string;  (** instance_template_name *)
}
[@@deriving yojson_of]

type google_dataproc_workflow_template__placement__managed_cluster__config__worker_config = {
  image : string option; [@option]
      (** Optional. The Compute Engine image resource used for cluster instances. The URI can represent an image or image family. Image examples: * `https://www.googleapis.com/compute/beta/projects/[project_id]/global/images/[image-id]` * `projects/[project_id]/global/images/[image-id]` * `image-id` Image family examples. Dataproc will use the most recent image from the family: * `https://www.googleapis.com/compute/beta/projects/[project_id]/global/images/family/[custom-image-family-name]` * `projects/[project_id]/global/images/family/[custom-image-family-name]` If the URI is unspecified, it will be inferred from `SoftwareConfig.image_version` or the system default. *)
  instance_names : string list;
      (** Output only. The list of instance names. Dataproc derives the names from `cluster_name`, `num_instances`, and the instance group. *)
  is_preemptible : bool;
      (** Output only. Specifies that this instance group contains preemptible instances. *)
  machine_type : string option; [@option]
      (** Optional. The Compute Engine machine type used for cluster instances. A full URL, partial URI, or short name are valid. Examples: * `https://www.googleapis.com/compute/v1/projects/[project_id]/zones/us-east1-a/machineTypes/n1-standard-2` * `projects/[project_id]/zones/us-east1-a/machineTypes/n1-standard-2` * `n1-standard-2` **Auto Zone Exception**: If you are using the Dataproc [Auto Zone Placement](https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/auto-zone#using_auto_zone_placement) feature, you must use the short name of the machine type resource, for example, `n1-standard-2`. *)
  managed_group_config :
    google_dataproc_workflow_template__placement__managed_cluster__config__worker_config__managed_group_config
    list;
      (** Output only. The config for Compute Engine Instance Group Manager that manages this group. This is only used for preemptible instance groups. *)
  min_cpu_platform : string option; [@option]
      (** Optional. Specifies the minimum cpu platform for the Instance Group. See [Dataproc -> Minimum CPU Platform](https://cloud.google.com/dataproc/docs/concepts/compute/dataproc-min-cpu). *)
  num_instances : float option; [@option]
      (** Optional. The number of VM instances in the instance group. For [HA cluster](/dataproc/docs/concepts/configuring-clusters/high-availability) [master_config](#FIELDS.master_config) groups, **must be set to 3**. For standard cluster [master_config](#FIELDS.master_config) groups, **must be set to 1**. *)
  preemptibility : string option; [@option]
      (** Optional. Specifies the preemptibility of the instance group. The default value for master and worker groups is `NON_PREEMPTIBLE`. This default cannot be changed. The default value for secondary instances is `PREEMPTIBLE`. Possible values: PREEMPTIBILITY_UNSPECIFIED, NON_PREEMPTIBLE, PREEMPTIBLE *)
  accelerators :
    google_dataproc_workflow_template__placement__managed_cluster__config__worker_config__accelerators
    list;
  disk_config :
    google_dataproc_workflow_template__placement__managed_cluster__config__worker_config__disk_config
    list;
}
[@@deriving yojson_of]
(** Optional. The Compute Engine config settings for worker instances in a cluster. *)

type google_dataproc_workflow_template__placement__managed_cluster__config = {
  staging_bucket : string option; [@option]
      (** Optional. A Cloud Storage bucket used to stage job dependencies, config files, and job driver console output. If you do not specify a staging bucket, Cloud Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster's staging bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket (see [Dataproc staging bucket](https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/staging-bucket)). **This field requires a Cloud Storage bucket name, not a URI to a Cloud Storage bucket.** *)
  temp_bucket : string option; [@option]
      (** Optional. A Cloud Storage bucket used to store ephemeral cluster and jobs data, such as Spark and MapReduce history files. If you do not specify a temp bucket, Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster's temp bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket. The default bucket has a TTL of 90 days, but you can use any TTL (or none) if you specify a bucket. **This field requires a Cloud Storage bucket name, not a URI to a Cloud Storage bucket.** *)
  autoscaling_config :
    google_dataproc_workflow_template__placement__managed_cluster__config__autoscaling_config
    list;
  encryption_config :
    google_dataproc_workflow_template__placement__managed_cluster__config__encryption_config
    list;
  endpoint_config :
    google_dataproc_workflow_template__placement__managed_cluster__config__endpoint_config
    list;
  gce_cluster_config :
    google_dataproc_workflow_template__placement__managed_cluster__config__gce_cluster_config
    list;
  initialization_actions :
    google_dataproc_workflow_template__placement__managed_cluster__config__initialization_actions
    list;
  lifecycle_config :
    google_dataproc_workflow_template__placement__managed_cluster__config__lifecycle_config
    list;
  master_config :
    google_dataproc_workflow_template__placement__managed_cluster__config__master_config
    list;
  secondary_worker_config :
    google_dataproc_workflow_template__placement__managed_cluster__config__secondary_worker_config
    list;
  security_config :
    google_dataproc_workflow_template__placement__managed_cluster__config__security_config
    list;
  software_config :
    google_dataproc_workflow_template__placement__managed_cluster__config__software_config
    list;
  worker_config :
    google_dataproc_workflow_template__placement__managed_cluster__config__worker_config
    list;
}
[@@deriving yojson_of]
(** Required. The cluster configuration. *)

type google_dataproc_workflow_template__placement__managed_cluster = {
  cluster_name : string;
      (** Required. The cluster name prefix. A unique cluster name will be formed by appending a random suffix. The name must contain only lower-case letters (a-z), numbers (0-9), and hyphens (-). Must begin with a letter. Cannot begin or end with hyphen. Must consist of between 2 and 35 characters. *)
  labels : (string * string) list option; [@option]
      (** Optional. The labels to associate with this cluster. Label keys must be between 1 and 63 characters long, and must conform to the following PCRE regular expression: p{Ll}p{Lo}{0,62} Label values must be between 1 and 63 characters long, and must conform to the following PCRE regular expression: [p{Ll}p{Lo}p{N}_-]{0,63} No more than 32 labels can be associated with a given cluster. *)
  config :
    google_dataproc_workflow_template__placement__managed_cluster__config
    list;
}
[@@deriving yojson_of]
(** A cluster that is managed by the workflow. *)

type google_dataproc_workflow_template__placement = {
  cluster_selector :
    google_dataproc_workflow_template__placement__cluster_selector
    list;
  managed_cluster :
    google_dataproc_workflow_template__placement__managed_cluster
    list;
}
[@@deriving yojson_of]
(** Required. WorkflowTemplate scheduling information. *)

type google_dataproc_workflow_template__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_dataproc_workflow_template__timeouts *)

type google_dataproc_workflow_template = {
  dag_timeout : string option; [@option]
      (** Optional. Timeout duration for the DAG of jobs, expressed in seconds (see [JSON representation of duration](https://developers.google.com/protocol-buffers/docs/proto3#json)). The timeout duration must be from 10 minutes (600s) to 24 hours (86400s). The timer begins when the first job is submitted. If the workflow is running at the end of the timeout period, any remaining jobs are cancelled, the workflow is ended, and if the workflow was running on a [managed cluster](/dataproc/docs/concepts/workflows/using-workflows#configuring_or_selecting_a_cluster), the cluster is deleted. *)
  labels : (string * string) list option; [@option]
      (** Optional. The labels to associate with this template. These labels will be propagated to all jobs and clusters created by the workflow instance. Label **keys** must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). Label **values** may be empty, but, if present, must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a template.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field `effective_labels` for all of the labels present on the resource. *)
  location : string;  (** The location for the resource *)
  name : string;
      (** Output only. The resource name of the workflow template, as described in https://cloud.google.com/apis/design/resource_names. * For `projects.regions.workflowTemplates`, the resource name of the template has the following format: `projects/{project_id}/regions/{region}/workflowTemplates/{template_id}` * For `projects.locations.workflowTemplates`, the resource name of the template has the following format: `projects/{project_id}/locations/{location}/workflowTemplates/{template_id}` *)
  jobs : google_dataproc_workflow_template__jobs list;
  parameters : google_dataproc_workflow_template__parameters list;
  placement : google_dataproc_workflow_template__placement list;
  timeouts : google_dataproc_workflow_template__timeouts option;
}
[@@deriving yojson_of]
(** google_dataproc_workflow_template *)

let google_dataproc_workflow_template ?dag_timeout ?labels ?timeouts
    ~location ~name ~jobs ~parameters ~placement __resource_id =
  let __resource_type = "google_dataproc_workflow_template" in
  let __resource =
    {
      dag_timeout;
      labels;
      location;
      name;
      jobs;
      parameters;
      placement;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dataproc_workflow_template __resource);
  ()