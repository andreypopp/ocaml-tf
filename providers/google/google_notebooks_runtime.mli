(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_notebooks_runtime__access_config
type google_notebooks_runtime__software_config__kernels
type google_notebooks_runtime__software_config
type google_notebooks_runtime__timeouts

type google_notebooks_runtime__virtual_machine__virtual_machine_config__accelerator_config

type google_notebooks_runtime__virtual_machine__virtual_machine_config__container_images

type google_notebooks_runtime__virtual_machine__virtual_machine_config__data_disk__initialize_params

type google_notebooks_runtime__virtual_machine__virtual_machine_config__data_disk

type google_notebooks_runtime__virtual_machine__virtual_machine_config__encryption_config

type google_notebooks_runtime__virtual_machine__virtual_machine_config__shielded_instance_config

type google_notebooks_runtime__virtual_machine__virtual_machine_config
type google_notebooks_runtime__virtual_machine

type google_notebooks_runtime__metrics = {
  system_metrics : (string * string prop) list;  (** system_metrics *)
}

type google_notebooks_runtime

type t = private {
  effective_labels : (string * string) list prop;
  health_state : string prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  metrics : google_notebooks_runtime__metrics list prop;
  name : string prop;
  project : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
}

val google_notebooks_runtime :
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:google_notebooks_runtime__timeouts ->
  location:string prop ->
  name:string prop ->
  access_config:google_notebooks_runtime__access_config list ->
  software_config:google_notebooks_runtime__software_config list ->
  virtual_machine:google_notebooks_runtime__virtual_machine list ->
  string ->
  t
