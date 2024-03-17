(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_transfer_agreement

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
  string ->
  t
