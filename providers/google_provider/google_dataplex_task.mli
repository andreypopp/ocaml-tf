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

type google_dataplex_task

val google_dataplex_task :
  ?description:string ->
  ?display_name:string ->
  ?labels:(string * string) list ->
  ?lake:string ->
  ?location:string ->
  ?task_id:string ->
  ?timeouts:google_dataplex_task__timeouts ->
  execution_spec:google_dataplex_task__execution_spec list ->
  notebook:google_dataplex_task__notebook list ->
  spark:google_dataplex_task__spark list ->
  trigger_spec:google_dataplex_task__trigger_spec list ->
  string ->
  unit
