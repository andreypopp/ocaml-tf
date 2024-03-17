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
  system_metrics : (string * string) list;  (** system_metrics *)
}
[@@deriving yojson_of]

type google_notebooks_runtime

val google_notebooks_runtime :
  ?labels:(string * string) list ->
  ?timeouts:google_notebooks_runtime__timeouts ->
  location:string ->
  name:string ->
  access_config:google_notebooks_runtime__access_config list ->
  software_config:google_notebooks_runtime__software_config list ->
  virtual_machine:google_notebooks_runtime__virtual_machine list ->
  string ->
  unit
