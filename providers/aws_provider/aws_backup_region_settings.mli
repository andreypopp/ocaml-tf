(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_backup_region_settings

val aws_backup_region_settings :
  ?id:string prop ->
  ?resource_type_management_preference:(string * bool prop) list ->
  resource_type_opt_in_preference:(string * bool prop) list ->
  string ->
  unit
