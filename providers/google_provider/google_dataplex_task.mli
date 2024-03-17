(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dataplex_task__execution_spec
type google_dataplex_task__notebook__infrastructure_spec__batch

type google_dataplex_task__notebook__infrastructure_spec__container_image

type google_dataplex_task__notebook__infrastructure_spec__vpc_network
type google_dataplex_task__notebook__infrastructure_spec
type google_dataplex_task__notebook
type google_dataplex_task__spark__infrastructure_spec__batch
type google_dataplex_task__spark__infrastructure_spec__container_image
type google_dataplex_task__spark__infrastructure_spec__vpc_network
type google_dataplex_task__spark__infrastructure_spec
type google_dataplex_task__spark
type google_dataplex_task__timeouts
type google_dataplex_task__trigger_spec

type google_dataplex_task__execution_status__latest_job = {
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

type google_dataplex_task__execution_status = {
  latest_job :
    google_dataplex_task__execution_status__latest_job list;
      (** latest_job *)
  update_time : string prop;  (** update_time *)
}

type google_dataplex_task

val google_dataplex_task :
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?lake:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  ?task_id:string prop ->
  ?timeouts:google_dataplex_task__timeouts ->
  execution_spec:google_dataplex_task__execution_spec list ->
  notebook:google_dataplex_task__notebook list ->
  spark:google_dataplex_task__spark list ->
  trigger_spec:google_dataplex_task__trigger_spec list ->
  string ->
  unit
