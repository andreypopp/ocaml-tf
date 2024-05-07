(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_dx_macsec_key_association

val aws_dx_macsec_key_association :
  ?cak:string prop ->
  ?ckn:string prop ->
  ?id:string prop ->
  ?secret_arn:string prop ->
  connection_id:string prop ->
  unit ->
  aws_dx_macsec_key_association

val yojson_of_aws_dx_macsec_key_association :
  aws_dx_macsec_key_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cak : string prop;
  ckn : string prop;
  connection_id : string prop;
  id : string prop;
  secret_arn : string prop;
  start_on : string prop;
  state : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?cak:string prop ->
  ?ckn:string prop ->
  ?id:string prop ->
  ?secret_arn:string prop ->
  connection_id:string prop ->
  string ->
  t

val make :
  ?cak:string prop ->
  ?ckn:string prop ->
  ?id:string prop ->
  ?secret_arn:string prop ->
  connection_id:string prop ->
  string ->
  t Tf_core.resource
