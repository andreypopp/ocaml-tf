(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_notebooks_environment__container_image
type google_notebooks_environment__timeouts
type google_notebooks_environment__vm_image
type google_notebooks_environment

val google_notebooks_environment :
  ?description:string ->
  ?display_name:string ->
  ?id:string ->
  ?post_startup_script:string ->
  ?project:string ->
  ?timeouts:google_notebooks_environment__timeouts ->
  location:string ->
  name:string ->
  container_image:google_notebooks_environment__container_image list ->
  vm_image:google_notebooks_environment__vm_image list ->
  string ->
  unit
