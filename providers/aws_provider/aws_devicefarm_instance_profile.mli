(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_devicefarm_instance_profile

val aws_devicefarm_instance_profile :
  ?description:string ->
  ?exclude_app_packages_from_cleanup:string list ->
  ?id:string ->
  ?package_cleanup:bool ->
  ?reboot_after_use:bool ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  name:string ->
  string ->
  unit
