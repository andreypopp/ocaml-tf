(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?update:string prop -> unit -> timeouts

type aws_macie2_member

val aws_macie2_member :
  ?id:string prop ->
  ?invitation_disable_email_notification:bool prop ->
  ?invitation_message:string prop ->
  ?invite:bool prop ->
  ?status:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  account_id:string prop ->
  email:string prop ->
  unit ->
  aws_macie2_member

val yojson_of_aws_macie2_member : aws_macie2_member -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  administrator_account_id : string prop;
  arn : string prop;
  email : string prop;
  id : string prop;
  invitation_disable_email_notification : bool prop;
  invitation_message : string prop;
  invite : bool prop;
  invited_at : string prop;
  master_account_id : string prop;
  relationship_status : string prop;
  status : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  updated_at : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?invitation_disable_email_notification:bool prop ->
  ?invitation_message:string prop ->
  ?invite:bool prop ->
  ?status:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  account_id:string prop ->
  email:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?invitation_disable_email_notification:bool prop ->
  ?invitation_message:string prop ->
  ?invite:bool prop ->
  ?status:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  account_id:string prop ->
  email:string prop ->
  string ->
  t Tf_core.resource
