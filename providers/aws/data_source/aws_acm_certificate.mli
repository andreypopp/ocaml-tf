(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_acm_certificate

val aws_acm_certificate :
  ?id:string prop ->
  ?key_types:string prop list ->
  ?most_recent:bool prop ->
  ?statuses:string prop list ->
  ?tags:(string * string prop) list ->
  ?types:string prop list ->
  domain:string prop ->
  unit ->
  aws_acm_certificate

val yojson_of_aws_acm_certificate : aws_acm_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  certificate : string prop;
  certificate_chain : string prop;
  domain : string prop;
  id : string prop;
  key_types : string list prop;
  most_recent : bool prop;
  status : string prop;
  statuses : string list prop;
  tags : (string * string) list prop;
  types : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?key_types:string prop list ->
  ?most_recent:bool prop ->
  ?statuses:string prop list ->
  ?tags:(string * string prop) list ->
  ?types:string prop list ->
  domain:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?key_types:string prop list ->
  ?most_recent:bool prop ->
  ?statuses:string prop list ->
  ?tags:(string * string prop) list ->
  ?types:string prop list ->
  domain:string prop ->
  string ->
  t Tf_core.resource
