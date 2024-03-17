(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_devicefarm_instance_profile

val aws_devicefarm_instance_profile :
  ?description:string prop ->
  ?exclude_app_packages_from_cleanup:string prop list ->
  ?id:string prop ->
  ?package_cleanup:bool prop ->
  ?reboot_after_use:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  string ->
  unit
