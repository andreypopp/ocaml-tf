(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type status = {
  details : string prop;  (** details *)
  state : string prop;  (** state *)
  state_start_time : string prop;  (** state_start_time *)
  substate : string prop;  (** substate *)
}

type hadoop_config__logging_config

val hadoop_config__logging_config :
  driver_log_levels:(string * string prop) list ->
  unit ->
  hadoop_config__logging_config

type hadoop_config

val hadoop_config :
  ?archive_uris:string prop list ->
  ?args:string prop list ->
  ?file_uris:string prop list ->
  ?jar_file_uris:string prop list ->
  ?main_class:string prop ->
  ?main_jar_file_uri:string prop ->
  ?properties:(string * string prop) list ->
  logging_config:hadoop_config__logging_config list ->
  unit ->
  hadoop_config

type hive_config

val hive_config :
  ?continue_on_failure:bool prop ->
  ?jar_file_uris:string prop list ->
  ?properties:(string * string prop) list ->
  ?query_file_uri:string prop ->
  ?query_list:string prop list ->
  ?script_variables:(string * string prop) list ->
  unit ->
  hive_config

type pig_config__logging_config

val pig_config__logging_config :
  driver_log_levels:(string * string prop) list ->
  unit ->
  pig_config__logging_config

type pig_config

val pig_config :
  ?continue_on_failure:bool prop ->
  ?jar_file_uris:string prop list ->
  ?properties:(string * string prop) list ->
  ?query_file_uri:string prop ->
  ?query_list:string prop list ->
  ?script_variables:(string * string prop) list ->
  logging_config:pig_config__logging_config list ->
  unit ->
  pig_config

type placement

val placement : cluster_name:string prop -> unit -> placement

type presto_config__logging_config

val presto_config__logging_config :
  driver_log_levels:(string * string prop) list ->
  unit ->
  presto_config__logging_config

type presto_config

val presto_config :
  ?client_tags:string prop list ->
  ?continue_on_failure:bool prop ->
  ?output_format:string prop ->
  ?properties:(string * string prop) list ->
  ?query_file_uri:string prop ->
  ?query_list:string prop list ->
  logging_config:presto_config__logging_config list ->
  unit ->
  presto_config

type pyspark_config__logging_config

val pyspark_config__logging_config :
  driver_log_levels:(string * string prop) list ->
  unit ->
  pyspark_config__logging_config

type pyspark_config

val pyspark_config :
  ?archive_uris:string prop list ->
  ?args:string prop list ->
  ?file_uris:string prop list ->
  ?jar_file_uris:string prop list ->
  ?properties:(string * string prop) list ->
  ?python_file_uris:string prop list ->
  main_python_file_uri:string prop ->
  logging_config:pyspark_config__logging_config list ->
  unit ->
  pyspark_config

type reference

val reference : ?job_id:string prop -> unit -> reference

type scheduling

val scheduling :
  max_failures_per_hour:float prop ->
  max_failures_total:float prop ->
  unit ->
  scheduling

type spark_config__logging_config

val spark_config__logging_config :
  driver_log_levels:(string * string prop) list ->
  unit ->
  spark_config__logging_config

type spark_config

val spark_config :
  ?archive_uris:string prop list ->
  ?args:string prop list ->
  ?file_uris:string prop list ->
  ?jar_file_uris:string prop list ->
  ?main_class:string prop ->
  ?main_jar_file_uri:string prop ->
  ?properties:(string * string prop) list ->
  logging_config:spark_config__logging_config list ->
  unit ->
  spark_config

type sparksql_config__logging_config

val sparksql_config__logging_config :
  driver_log_levels:(string * string prop) list ->
  unit ->
  sparksql_config__logging_config

type sparksql_config

val sparksql_config :
  ?jar_file_uris:string prop list ->
  ?properties:(string * string prop) list ->
  ?query_file_uri:string prop ->
  ?query_list:string prop list ->
  ?script_variables:(string * string prop) list ->
  logging_config:sparksql_config__logging_config list ->
  unit ->
  sparksql_config

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_dataproc_job

val google_dataproc_job :
  ?force_delete:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  hadoop_config:hadoop_config list ->
  hive_config:hive_config list ->
  pig_config:pig_config list ->
  placement:placement list ->
  presto_config:presto_config list ->
  pyspark_config:pyspark_config list ->
  reference:reference list ->
  scheduling:scheduling list ->
  spark_config:spark_config list ->
  sparksql_config:sparksql_config list ->
  unit ->
  google_dataproc_job

val yojson_of_google_dataproc_job : google_dataproc_job -> json

(** RESOURCE REGISTRATION *)

type t = private {
  driver_controls_files_uri : string prop;
  driver_output_resource_uri : string prop;
  effective_labels : (string * string) list prop;
  force_delete : bool prop;
  id : string prop;
  labels : (string * string) list prop;
  project : string prop;
  region : string prop;
  status : status list prop;
  terraform_labels : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?force_delete:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  hadoop_config:hadoop_config list ->
  hive_config:hive_config list ->
  pig_config:pig_config list ->
  placement:placement list ->
  presto_config:presto_config list ->
  pyspark_config:pyspark_config list ->
  reference:reference list ->
  scheduling:scheduling list ->
  spark_config:spark_config list ->
  sparksql_config:sparksql_config list ->
  string ->
  t
