(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_fsx_backup__timeouts
type aws_fsx_backup

val aws_fsx_backup :
  ?file_system_id:string ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?volume_id:string ->
  ?timeouts:aws_fsx_backup__timeouts ->
  string ->
  unit
