(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_transfer_profile

val aws_transfer_profile :
  ?certificate_ids:string prop list ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  as2_id:string prop ->
  profile_type:string prop ->
  unit ->
  aws_transfer_profile

val yojson_of_aws_transfer_profile : aws_transfer_profile -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  as2_id : string prop;
  certificate_ids : string list prop;
  id : string prop;
  profile_id : string prop;
  profile_type : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?certificate_ids:string prop list ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  as2_id:string prop ->
  profile_type:string prop ->
  string ->
  t

val make :
  ?certificate_ids:string prop list ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  as2_id:string prop ->
  profile_type:string prop ->
  string ->
  t Tf_core.resource
