(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type container_image

val container_image :
  ?tag:string prop ->
  repository:string prop ->
  unit ->
  container_image

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type vm_image

val vm_image :
  ?image_family:string prop ->
  ?image_name:string prop ->
  project:string prop ->
  unit ->
  vm_image

type google_notebooks_environment

val google_notebooks_environment :
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?post_startup_script:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  container_image:container_image list ->
  vm_image:vm_image list ->
  unit ->
  google_notebooks_environment

val yojson_of_google_notebooks_environment :
  google_notebooks_environment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  create_time : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  post_startup_script : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?post_startup_script:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  container_image:container_image list ->
  vm_image:vm_image list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?post_startup_script:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  container_image:container_image list ->
  vm_image:vm_image list ->
  string ->
  t Tf_core.resource
