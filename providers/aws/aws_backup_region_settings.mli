(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_backup_region_settings

val aws_backup_region_settings :
  ?id:string prop ->
  ?resource_type_management_preference:bool prop Tf_core.assoc ->
  resource_type_opt_in_preference:bool prop Tf_core.assoc ->
  unit ->
  aws_backup_region_settings

val yojson_of_aws_backup_region_settings :
  aws_backup_region_settings -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  resource_type_management_preference : bool Tf_core.assoc prop;
  resource_type_opt_in_preference : bool Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?resource_type_management_preference:bool prop Tf_core.assoc ->
  resource_type_opt_in_preference:bool prop Tf_core.assoc ->
  string ->
  t

val make :
  ?id:string prop ->
  ?resource_type_management_preference:bool prop Tf_core.assoc ->
  resource_type_opt_in_preference:bool prop Tf_core.assoc ->
  string ->
  t Tf_core.resource
