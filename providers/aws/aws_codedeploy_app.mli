(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_codedeploy_app

type t = private {
  application_id : string prop;
  arn : string prop;
  compute_platform : string prop;
  github_account_name : string prop;
  id : string prop;
  linked_to_github : bool prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_codedeploy_app :
  ?compute_platform:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  string ->
  t
