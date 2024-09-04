(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type data_encryption_metadata

val data_encryption_metadata :
  allow_clear_text:bool prop ->
  allow_duplicates:bool prop ->
  allow_joins_on_columns_with_different_names:bool prop ->
  preserve_nulls:bool prop ->
  unit ->
  data_encryption_metadata

type member

val member :
  account_id:string prop ->
  display_name:string prop ->
  member_abilities:string prop list ->
  unit ->
  member

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_cleanrooms_collaboration

val aws_cleanrooms_collaboration :
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?data_encryption_metadata:data_encryption_metadata list ->
  ?timeouts:timeouts ->
  creator_display_name:string prop ->
  creator_member_abilities:string prop list ->
  description:string prop ->
  name:string prop ->
  query_log_status:string prop ->
  member:member list ->
  unit ->
  aws_cleanrooms_collaboration

val yojson_of_aws_cleanrooms_collaboration :
  aws_cleanrooms_collaboration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  create_time : string prop;
  creator_display_name : string prop;
  creator_member_abilities : string list prop;
  description : string prop;
  id : string prop;
  name : string prop;
  query_log_status : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?data_encryption_metadata:data_encryption_metadata list ->
  ?timeouts:timeouts ->
  creator_display_name:string prop ->
  creator_member_abilities:string prop list ->
  description:string prop ->
  name:string prop ->
  query_log_status:string prop ->
  member:member list ->
  string ->
  t

val make :
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?data_encryption_metadata:data_encryption_metadata list ->
  ?timeouts:timeouts ->
  creator_display_name:string prop ->
  creator_member_abilities:string prop list ->
  description:string prop ->
  name:string prop ->
  query_log_status:string prop ->
  member:member list ->
  string ->
  t Tf_core.resource
