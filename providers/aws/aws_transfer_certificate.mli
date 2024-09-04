(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_transfer_certificate

val aws_transfer_certificate :
  ?certificate_chain:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?private_key:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  certificate:string prop ->
  usage:string prop ->
  unit ->
  aws_transfer_certificate

val yojson_of_aws_transfer_certificate :
  aws_transfer_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  active_date : string prop;
  arn : string prop;
  certificate : string prop;
  certificate_chain : string prop;
  certificate_id : string prop;
  description : string prop;
  id : string prop;
  inactive_date : string prop;
  private_key : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  usage : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?certificate_chain:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?private_key:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  certificate:string prop ->
  usage:string prop ->
  string ->
  t

val make :
  ?certificate_chain:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?private_key:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  certificate:string prop ->
  usage:string prop ->
  string ->
  t Tf_core.resource
