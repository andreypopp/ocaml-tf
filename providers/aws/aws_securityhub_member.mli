(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_securityhub_member

val aws_securityhub_member :
  ?email:string prop ->
  ?id:string prop ->
  ?invite:bool prop ->
  account_id:string prop ->
  unit ->
  aws_securityhub_member

val yojson_of_aws_securityhub_member : aws_securityhub_member -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  email : string prop;
  id : string prop;
  invite : bool prop;
  master_id : string prop;
  member_status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?email:string prop ->
  ?id:string prop ->
  ?invite:bool prop ->
  account_id:string prop ->
  string ->
  t

val make :
  ?email:string prop ->
  ?id:string prop ->
  ?invite:bool prop ->
  account_id:string prop ->
  string ->
  t Tf_core.resource
