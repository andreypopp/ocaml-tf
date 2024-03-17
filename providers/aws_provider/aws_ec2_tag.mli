(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_tag

type t = private {
  id : string prop;
  key : string prop;
  resource_id : string prop;
  value : string prop;
}

val aws_ec2_tag :
  ?id:string prop ->
  key:string prop ->
  resource_id:string prop ->
  value:string prop ->
  string ->
  t
