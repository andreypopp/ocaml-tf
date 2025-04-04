(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

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

type execution_status = {
  latest_job : execution_status__latest_job list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** latest_job *)
  update_time : string prop;  (** update_time *)
}

type execution_spec

val execution_spec :
  ?args:string prop Tf_core.assoc ->
  ?kms_key:string prop ->
  ?max_job_execution_lifetime:string prop ->
  ?project:string prop ->
  service_account:string prop ->
  unit ->
  execution_spec

type notebook__infrastructure_spec__batch

val notebook__infrastructure_spec__batch :
  ?executors_count:float prop ->
  ?max_executors_count:float prop ->
  unit ->
  notebook__infrastructure_spec__batch

type notebook__infrastructure_spec__container_image

val notebook__infrastructure_spec__container_image :
  ?image:string prop ->
  ?java_jars:string prop list ->
  ?properties:string prop Tf_core.assoc ->
  ?python_packages:string prop list ->
  unit ->
  notebook__infrastructure_spec__container_image

type notebook__infrastructure_spec__vpc_network

val notebook__infrastructure_spec__vpc_network :
  ?network:string prop ->
  ?network_tags:string prop list ->
  ?sub_network:string prop ->
  unit ->
  notebook__infrastructure_spec__vpc_network

type notebook__infrastructure_spec

val notebook__infrastructure_spec :
  ?batch:notebook__infrastructure_spec__batch list ->
  ?container_image:
    notebook__infrastructure_spec__container_image list ->
  ?vpc_network:notebook__infrastructure_spec__vpc_network list ->
  unit ->
  notebook__infrastructure_spec

type notebook

val notebook :
  ?archive_uris:string prop list ->
  ?file_uris:string prop list ->
  ?infrastructure_spec:notebook__infrastructure_spec list ->
  notebook:string prop ->
  unit ->
  notebook

type spark__infrastructure_spec__batch

val spark__infrastructure_spec__batch :
  ?executors_count:float prop ->
  ?max_executors_count:float prop ->
  unit ->
  spark__infrastructure_spec__batch

type spark__infrastructure_spec__container_image

val spark__infrastructure_spec__container_image :
  ?image:string prop ->
  ?java_jars:string prop list ->
  ?properties:string prop Tf_core.assoc ->
  ?python_packages:string prop list ->
  unit ->
  spark__infrastructure_spec__container_image

type spark__infrastructure_spec__vpc_network

val spark__infrastructure_spec__vpc_network :
  ?network:string prop ->
  ?network_tags:string prop list ->
  ?sub_network:string prop ->
  unit ->
  spark__infrastructure_spec__vpc_network

type spark__infrastructure_spec

val spark__infrastructure_spec :
  ?batch:spark__infrastructure_spec__batch list ->
  ?container_image:spark__infrastructure_spec__container_image list ->
  ?vpc_network:spark__infrastructure_spec__vpc_network list ->
  unit ->
  spark__infrastructure_spec

type spark

val spark :
  ?archive_uris:string prop list ->
  ?file_uris:string prop list ->
  ?main_class:string prop ->
  ?main_jar_file_uri:string prop ->
  ?python_script_file:string prop ->
  ?sql_script:string prop ->
  ?sql_script_file:string prop ->
  ?infrastructure_spec:spark__infrastructure_spec list ->
  unit ->
  spark

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type trigger_spec

val trigger_spec :
  ?disabled:bool prop ->
  ?max_retries:float prop ->
  ?schedule:string prop ->
  ?start_time:string prop ->
  type_:string prop ->
  unit ->
  trigger_spec

type google_dataplex_task

val google_dataplex_task :
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?lake:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  ?task_id:string prop ->
  ?notebook:notebook list ->
  ?spark:spark list ->
  ?timeouts:timeouts ->
  execution_spec:execution_spec list ->
  trigger_spec:trigger_spec list ->
  unit ->
  google_dataplex_task

val yojson_of_google_dataplex_task : google_dataplex_task -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  display_name : string prop;
  effective_labels : string Tf_core.assoc prop;
  execution_status : execution_status list prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  lake : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  task_id : string prop;
  terraform_labels : string Tf_core.assoc prop;
  uid : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?lake:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  ?task_id:string prop ->
  ?notebook:notebook list ->
  ?spark:spark list ->
  ?timeouts:timeouts ->
  execution_spec:execution_spec list ->
  trigger_spec:trigger_spec list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?lake:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  ?task_id:string prop ->
  ?notebook:notebook list ->
  ?spark:spark list ->
  ?timeouts:timeouts ->
  execution_spec:execution_spec list ->
  trigger_spec:trigger_spec list ->
  string ->
  t Tf_core.resource
