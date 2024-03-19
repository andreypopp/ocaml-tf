(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_transfer_agreement

val aws_transfer_agreement :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
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
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  access_role:string prop ->
  base_directory:string prop ->
  local_profile_id:string prop ->
  partner_profile_id:string prop ->
  server_id:string prop ->
  string ->
  t
