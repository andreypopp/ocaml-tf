(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_fsx_backup__timeouts
type aws_fsx_backup

val aws_fsx_backup :
  ?file_system_id:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?volume_id:string prop ->
  ?timeouts:aws_fsx_backup__timeouts ->
  string ->
  unit
