(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_verifiedaccess_group__sse_configuration
type aws_verifiedaccess_group

type t = private {
  creation_time : string prop;
  deletion_time : string prop;
  description : string prop;
  id : string prop;
  last_updated_time : string prop;
  owner : string prop;
  policy_document : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  verifiedaccess_group_arn : string prop;
  verifiedaccess_group_id : string prop;
  verifiedaccess_instance_id : string prop;
}

val aws_verifiedaccess_group :
  ?description:string prop ->
  ?id:string prop ->
  ?policy_document:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  verifiedaccess_instance_id:string prop ->
  sse_configuration:aws_verifiedaccess_group__sse_configuration list ->
  string ->
  t
