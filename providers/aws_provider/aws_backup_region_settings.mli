(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_backup_region_settings

val aws_backup_region_settings :
  ?id:string ->
  ?resource_type_management_preference:(string * bool) list ->
  resource_type_opt_in_preference:(string * bool) list ->
  string ->
  unit
