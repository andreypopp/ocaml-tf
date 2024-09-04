(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_devicefarm_instance_profile

val aws_devicefarm_instance_profile :
  ?description:string prop ->
  ?exclude_app_packages_from_cleanup:string prop list ->
  ?id:string prop ->
  ?package_cleanup:bool prop ->
  ?reboot_after_use:bool prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  name:string prop ->
  unit ->
  aws_devicefarm_instance_profile

val yojson_of_aws_devicefarm_instance_profile :
  aws_devicefarm_instance_profile -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  exclude_app_packages_from_cleanup : string list prop;
  id : string prop;
  name : string prop;
  package_cleanup : bool prop;
  reboot_after_use : bool prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?exclude_app_packages_from_cleanup:string prop list ->
  ?id:string prop ->
  ?package_cleanup:bool prop ->
  ?reboot_after_use:bool prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?exclude_app_packages_from_cleanup:string prop list ->
  ?id:string prop ->
  ?package_cleanup:bool prop ->
  ?reboot_after_use:bool prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  name:string prop ->
  string ->
  t Tf_core.resource
