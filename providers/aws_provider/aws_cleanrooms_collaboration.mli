(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cleanrooms_collaboration__data_encryption_metadata
type aws_cleanrooms_collaboration__member
type aws_cleanrooms_collaboration__timeouts
type aws_cleanrooms_collaboration

type t = private {
  arn : string prop;
  create_time : string prop;
  creator_display_name : string prop;
  creator_member_abilities : string list prop;
  description : string prop;
  id : string prop;
  name : string prop;
  query_log_status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  update_time : string prop;
}

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
  t
