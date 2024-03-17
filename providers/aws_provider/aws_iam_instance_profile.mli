(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iam_instance_profile

type t = private {
  arn : string prop;
  create_date : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  path : string prop;
  role : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  unique_id : string prop;
}

val aws_iam_instance_profile :
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?path:string prop ->
  ?role:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  string ->
  t
