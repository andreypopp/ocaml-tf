(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_fsx_backup__timeouts
type aws_fsx_backup

type t = private {
  arn : string prop;
  file_system_id : string prop;
  id : string prop;
  kms_key_id : string prop;
  owner_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
  volume_id : string prop;
}

val aws_fsx_backup :
  ?file_system_id:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?volume_id:string prop ->
  ?timeouts:aws_fsx_backup__timeouts ->
  string ->
  t
