(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_devicefarm_instance_profile

type t = private {
  arn : string prop;
  description : string prop;
  exclude_app_packages_from_cleanup : string list prop;
  id : string prop;
  name : string prop;
  package_cleanup : bool prop;
  reboot_after_use : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

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
  t
