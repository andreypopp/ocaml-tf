(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_transfer_agreement

val aws_transfer_agreement :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  access_role:string prop ->
  base_directory:string prop ->
  local_profile_id:string prop ->
  partner_profile_id:string prop ->
  server_id:string prop ->
  unit ->
  aws_transfer_agreement

val yojson_of_aws_transfer_agreement : aws_transfer_agreement -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access_role : string prop;
  agreement_id : string prop;
  arn : string prop;
  base_directory : string prop;
  description : string prop;
  id : string prop;
  local_profile_id : string prop;
  partner_profile_id : string prop;
  server_id : string prop;
  status : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  access_role:string prop ->
  base_directory:string prop ->
  local_profile_id:string prop ->
  partner_profile_id:string prop ->
  server_id:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  access_role:string prop ->
  base_directory:string prop ->
  local_profile_id:string prop ->
  partner_profile_id:string prop ->
  server_id:string prop ->
  string ->
  t Tf_core.resource
