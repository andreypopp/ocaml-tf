(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_notebooks_environment__container_image
type google_notebooks_environment__timeouts
type google_notebooks_environment__vm_image
type google_notebooks_environment

val google_notebooks_environment :
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?post_startup_script:string prop ->
  ?project:string prop ->
  ?timeouts:google_notebooks_environment__timeouts ->
  location:string prop ->
  name:string prop ->
  container_image:google_notebooks_environment__container_image list ->
  vm_image:google_notebooks_environment__vm_image list ->
  string ->
  unit
