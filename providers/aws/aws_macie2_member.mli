(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  account_id:string prop ->
  email:string prop ->
  unit ->
  aws_macie2_member

val yojson_of_aws_macie2_member : aws_macie2_member -> json

(** RESOURCE REGISTRATION *)

type t = private {
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
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  updated_at : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?invitation_disable_email_notification:bool prop ->
  ?invitation_message:string prop ->
  ?invite:bool prop ->
  ?status:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  account_id:string prop ->
  email:string prop ->
  string ->
  t
