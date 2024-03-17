(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cleanrooms_collaboration__data_encryption_metadata
type aws_cleanrooms_collaboration__member
type aws_cleanrooms_collaboration__timeouts
type aws_cleanrooms_collaboration

val aws_cleanrooms_collaboration :
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_cleanrooms_collaboration__timeouts ->
  creator_display_name:string prop ->
  creator_member_abilities:string prop list ->
  description:string prop ->
  name:string prop ->
  query_log_status:string prop ->
  data_encryption_metadata:
    aws_cleanrooms_collaboration__data_encryption_metadata list ->
  member:aws_cleanrooms_collaboration__member list ->
  string ->
  unit
