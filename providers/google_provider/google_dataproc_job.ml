(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_dataproc_job__hadoop_config__logging_config = {
  driver_log_levels : (string * string) list;
      (** Optional. The per-package log levels for the driver. This may include 'root' package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'. *)
}
[@@deriving yojson_of]
(** The runtime logging config of the job *)

type google_dataproc_job__hadoop_config = {
  archive_uris : string list option; [@option]
      (** HCFS URIs of archives to be extracted in the working directory of .jar, .tar, .tar.gz, .tgz, and .zip. *)
  args : string list option; [@option]
      (** The arguments to pass to the driver. *)
  file_uris : string list option; [@option]
      (** HCFS URIs of files to be copied to the working directory of Spark drivers and distributed tasks. Useful for naively parallel tasks. *)
  jar_file_uris : string list option; [@option]
      (** HCFS URIs of jar files to add to the CLASSPATHs of the Spark driver and tasks. *)
  main_class : string option; [@option]
      (** The class containing the main method of the driver. Must be in a provided jar or jar that is already on the classpath. Conflicts with main_jar_file_uri *)
  main_jar_file_uri : string option; [@option]
      (** The HCFS URI of jar file containing the driver jar. Conflicts with main_class *)
  properties : (string * string) list option; [@option]
      (** A mapping of property names to values, used to configure Spark. Properties that conflict with values set by the Cloud Dataproc API may be overwritten. Can include properties set in /etc/spark/conf/spark-defaults.conf and classes in user code. *)
  logging_config :
    google_dataproc_job__hadoop_config__logging_config list;
}
[@@deriving yojson_of]
(** The config of Hadoop job *)

type google_dataproc_job__hive_config = {
  continue_on_failure : bool option; [@option]
      (** Whether to continue executing queries if a query fails. The default value is false. Setting to true can be useful when executing independent parallel queries. Defaults to false. *)
  jar_file_uris : string list option; [@option]
      (** HCFS URIs of jar files to add to the CLASSPATH of the Hive server and Hadoop MapReduce (MR) tasks. Can contain Hive SerDes and UDFs. *)
  properties : (string * string) list option; [@option]
      (** A mapping of property names and values, used to configure Hive. Properties that conflict with values set by the Cloud Dataproc API may be overwritten. Can include properties set in /etc/hadoop/conf/*-site.xml, /etc/hive/conf/hive-site.xml, and classes in user code. *)
  query_file_uri : string option; [@option]
      (** HCFS URI of file containing Hive script to execute as the job. Conflicts with query_list *)
  query_list : string list option; [@option]
      (** The list of Hive queries or statements to execute as part of the job. Conflicts with query_file_uri *)
  script_variables : (string * string) list option; [@option]
      (** Mapping of query variable names to values (equivalent to the Hive command: SET name=value;). *)
}
[@@deriving yojson_of]
(** The config of hive job *)

type google_dataproc_job__pig_config__logging_config = {
  driver_log_levels : (string * string) list;
      (** Optional. The per-package log levels for the driver. This may include 'root' package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'. *)
}
[@@deriving yojson_of]
(** The runtime logging config of the job *)

type google_dataproc_job__pig_config = {
  continue_on_failure : bool option; [@option]
      (** Whether to continue executing queries if a query fails. The default value is false. Setting to true can be useful when executing independent parallel queries. Defaults to false. *)
  jar_file_uris : string list option; [@option]
      (** HCFS URIs of jar files to add to the CLASSPATH of the Pig Client and Hadoop MapReduce (MR) tasks. Can contain Pig UDFs. *)
  properties : (string * string) list option; [@option]
      (** A mapping of property names to values, used to configure Pig. Properties that conflict with values set by the Cloud Dataproc API may be overwritten. Can include properties set in /etc/hadoop/conf/*-site.xml, /etc/pig/conf/pig.properties, and classes in user code. *)
  query_file_uri : string option; [@option]
      (** HCFS URI of file containing Hive script to execute as the job. Conflicts with query_list *)
  query_list : string list option; [@option]
      (** The list of Hive queries or statements to execute as part of the job. Conflicts with query_file_uri *)
  script_variables : (string * string) list option; [@option]
      (** Mapping of query variable names to values (equivalent to the Pig command: name=[value]). *)
  logging_config :
    google_dataproc_job__pig_config__logging_config list;
}
[@@deriving yojson_of]
(** The config of pag job. *)

type google_dataproc_job__placement = {
  cluster_name : string;
      (** The name of the cluster where the job will be submitted *)
  cluster_uuid : string;
      (** Output-only. A cluster UUID generated by the Cloud Dataproc service when the job is submitted *)
}
[@@deriving yojson_of]
(** The config of job placement. *)

type google_dataproc_job__presto_config__logging_config = {
  driver_log_levels : (string * string) list;
      (** Optional. The per-package log levels for the driver. This may include 'root' package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'. *)
}
[@@deriving yojson_of]
(** The runtime logging config of the job *)

type google_dataproc_job__presto_config = {
  client_tags : string list option; [@option]
      (** Presto client tags to attach to this query. *)
  continue_on_failure : bool option; [@option]
      (** Whether to continue executing queries if a query fails. Setting to true can be useful when executing independent parallel queries. Defaults to false. *)
  output_format : string option; [@option]
      (** The format in which query output will be displayed. See the Presto documentation for supported output formats. *)
  properties : (string * string) list option; [@option]
      (** A mapping of property names to values. Used to set Presto session properties Equivalent to using the --session flag in the Presto CLI. *)
  query_file_uri : string option; [@option]
      (** The HCFS URI of the script that contains SQL queries. Conflicts with query_list *)
  query_list : string list option; [@option]
      (** The list of SQL queries or statements to execute as part of the job. Conflicts with query_file_uri *)
  logging_config :
    google_dataproc_job__presto_config__logging_config list;
}
[@@deriving yojson_of]
(** The config of presto job *)

type google_dataproc_job__pyspark_config__logging_config = {
  driver_log_levels : (string * string) list;
      (** Optional. The per-package log levels for the driver. This may include 'root' package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'. *)
}
[@@deriving yojson_of]
(** The runtime logging config of the job *)

type google_dataproc_job__pyspark_config = {
  archive_uris : string list option; [@option]
      (** Optional. HCFS URIs of archives to be extracted in the working directory of .jar, .tar, .tar.gz, .tgz, and .zip *)
  args : string list option; [@option]
      (** Optional. The arguments to pass to the driver. Do not include arguments, such as --conf, that can be set as job properties, since a collision may occur that causes an incorrect job submission *)
  file_uris : string list option; [@option]
      (** Optional. HCFS URIs of files to be copied to the working directory of Python drivers and distributed tasks. Useful for naively parallel tasks *)
  jar_file_uris : string list option; [@option]
      (** Optional. HCFS URIs of jar files to add to the CLASSPATHs of the Python driver and tasks *)
  main_python_file_uri : string;
      (** Required. The HCFS URI of the main Python file to use as the driver. Must be a .py file *)
  properties : (string * string) list option; [@option]
      (** Optional. A mapping of property names to values, used to configure PySpark. Properties that conflict with values set by the Cloud Dataproc API may be overwritten. Can include properties set in /etc/spark/conf/spark-defaults.conf and classes in user code *)
  python_file_uris : string list option; [@option]
      (** Optional. HCFS file URIs of Python files to pass to the PySpark framework. Supported file types: .py, .egg, and .zip *)
  logging_config :
    google_dataproc_job__pyspark_config__logging_config list;
}
[@@deriving yojson_of]
(** The config of pySpark job. *)

type google_dataproc_job__reference = {
  job_id : string option; [@option]
      (** The job ID, which must be unique within the project. The job ID is generated by the server upon job submission or provided by the user as a means to perform retries without creating duplicate jobs *)
}
[@@deriving yojson_of]
(** The reference of the job *)

type google_dataproc_job__scheduling = {
  max_failures_per_hour : float;
      (** Maximum number of times per hour a driver may be restarted as a result of driver exiting with non-zero code before job is reported failed. *)
  max_failures_total : float;
      (** Maximum number of times in total a driver may be restarted as a result of driver exiting with non-zero code before job is reported failed. *)
}
[@@deriving yojson_of]
(** Optional. Job scheduling configuration. *)

type google_dataproc_job__spark_config__logging_config = {
  driver_log_levels : (string * string) list;
      (** Optional. The per-package log levels for the driver. This may include 'root' package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'. *)
}
[@@deriving yojson_of]
(** The runtime logging config of the job *)

type google_dataproc_job__spark_config = {
  archive_uris : string list option; [@option]
      (** HCFS URIs of archives to be extracted in the working directory of .jar, .tar, .tar.gz, .tgz, and .zip. *)
  args : string list option; [@option]
      (** The arguments to pass to the driver. *)
  file_uris : string list option; [@option]
      (** HCFS URIs of files to be copied to the working directory of Spark drivers and distributed tasks. Useful for naively parallel tasks. *)
  jar_file_uris : string list option; [@option]
      (** HCFS URIs of jar files to add to the CLASSPATHs of the Spark driver and tasks. *)
  main_class : string option; [@option]
      (** The class containing the main method of the driver. Must be in a provided jar or jar that is already on the classpath. Conflicts with main_jar_file_uri *)
  main_jar_file_uri : string option; [@option]
      (** The HCFS URI of jar file containing the driver jar. Conflicts with main_class *)
  properties : (string * string) list option; [@option]
      (** A mapping of property names to values, used to configure Spark. Properties that conflict with values set by the Cloud Dataproc API may be overwritten. Can include properties set in /etc/spark/conf/spark-defaults.conf and classes in user code. *)
  logging_config :
    google_dataproc_job__spark_config__logging_config list;
}
[@@deriving yojson_of]
(** The config of the Spark job. *)

type google_dataproc_job__sparksql_config__logging_config = {
  driver_log_levels : (string * string) list;
      (** Optional. The per-package log levels for the driver. This may include 'root' package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'. *)
}
[@@deriving yojson_of]
(** The runtime logging config of the job *)

type google_dataproc_job__sparksql_config = {
  jar_file_uris : string list option; [@option]
      (** HCFS URIs of jar files to be added to the Spark CLASSPATH. *)
  properties : (string * string) list option; [@option]
      (** A mapping of property names to values, used to configure Spark SQL's SparkConf. Properties that conflict with values set by the Cloud Dataproc API may be overwritten. *)
  query_file_uri : string option; [@option]
      (** The HCFS URI of the script that contains SQL queries. Conflicts with query_list *)
  query_list : string list option; [@option]
      (** The list of SQL queries or statements to execute as part of the job. Conflicts with query_file_uri *)
  script_variables : (string * string) list option; [@option]
      (** Mapping of query variable names to values (equivalent to the Spark SQL command: SET name=value;). *)
  logging_config :
    google_dataproc_job__sparksql_config__logging_config list;
}
[@@deriving yojson_of]
(** The config of SparkSql job *)

type google_dataproc_job__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_dataproc_job__timeouts *)

type google_dataproc_job__status = {
  details : string;  (** details *)
  state : string;  (** state *)
  state_start_time : string;  (** state_start_time *)
  substate : string;  (** substate *)
}
[@@deriving yojson_of]

type google_dataproc_job = {
  force_delete : bool option; [@option]
      (** By default, you can only delete inactive jobs within Dataproc. Setting this to true, and calling destroy, will ensure that the job is first cancelled before issuing the delete. *)
  labels : (string * string) list option; [@option]
      (** Optional. The labels to associate with this job.

				**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
				Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  region : string option; [@option]
      (** The Cloud Dataproc region. This essentially determines which clusters are available for this job to be submitted to. If not specified, defaults to global. *)
  hadoop_config : google_dataproc_job__hadoop_config list;
  hive_config : google_dataproc_job__hive_config list;
  pig_config : google_dataproc_job__pig_config list;
  placement : google_dataproc_job__placement list;
  presto_config : google_dataproc_job__presto_config list;
  pyspark_config : google_dataproc_job__pyspark_config list;
  reference : google_dataproc_job__reference list;
  scheduling : google_dataproc_job__scheduling list;
  spark_config : google_dataproc_job__spark_config list;
  sparksql_config : google_dataproc_job__sparksql_config list;
  timeouts : google_dataproc_job__timeouts option;
}
[@@deriving yojson_of]
(** google_dataproc_job *)

let google_dataproc_job ?force_delete ?labels ?region ?timeouts
    ~hadoop_config ~hive_config ~pig_config ~placement ~presto_config
    ~pyspark_config ~reference ~scheduling ~spark_config
    ~sparksql_config __resource_id =
  let __resource_type = "google_dataproc_job" in
  let __resource =
    {
      force_delete;
      labels;
      region;
      hadoop_config;
      hive_config;
      pig_config;
      placement;
      presto_config;
      pyspark_config;
      reference;
      scheduling;
      spark_config;
      sparksql_config;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dataproc_job __resource);
  ()
