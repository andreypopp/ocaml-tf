(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dataproc_job__hadoop_config__logging_config
type google_dataproc_job__hadoop_config
type google_dataproc_job__hive_config
type google_dataproc_job__pig_config__logging_config
type google_dataproc_job__pig_config
type google_dataproc_job__placement
type google_dataproc_job__presto_config__logging_config
type google_dataproc_job__presto_config
type google_dataproc_job__pyspark_config__logging_config
type google_dataproc_job__pyspark_config
type google_dataproc_job__reference
type google_dataproc_job__scheduling
type google_dataproc_job__spark_config__logging_config
type google_dataproc_job__spark_config
type google_dataproc_job__sparksql_config__logging_config
type google_dataproc_job__sparksql_config
type google_dataproc_job__timeouts

type google_dataproc_job__status = {
  details : string prop;  (** details *)
  state : string prop;  (** state *)
  state_start_time : string prop;  (** state_start_time *)
  substate : string prop;  (** substate *)
}

type google_dataproc_job

val google_dataproc_job :
  ?force_delete:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:google_dataproc_job__timeouts ->
  hadoop_config:google_dataproc_job__hadoop_config list ->
  hive_config:google_dataproc_job__hive_config list ->
  pig_config:google_dataproc_job__pig_config list ->
  placement:google_dataproc_job__placement list ->
  presto_config:google_dataproc_job__presto_config list ->
  pyspark_config:google_dataproc_job__pyspark_config list ->
  reference:google_dataproc_job__reference list ->
  scheduling:google_dataproc_job__scheduling list ->
  spark_config:google_dataproc_job__spark_config list ->
  sparksql_config:google_dataproc_job__sparksql_config list ->
  string ->
  unit
