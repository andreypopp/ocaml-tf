(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_endpoint_security_group_association

type t = private {
  id : string prop;
  replace_default_association : bool prop;
  security_group_id : string prop;
  vpc_endpoint_id : string prop;
}

val aws_vpc_endpoint_security_group_association :
  ?id:string prop ->
  ?replace_default_association:bool prop ->
  security_group_id:string prop ->
  vpc_endpoint_id:string prop ->
  string ->
  t
