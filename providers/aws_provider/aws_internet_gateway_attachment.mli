(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_internet_gateway_attachment__timeouts
type aws_internet_gateway_attachment

type t = private {
  id : string prop;
  internet_gateway_id : string prop;
  vpc_id : string prop;
}

val aws_internet_gateway_attachment :
  ?id:string prop ->
  ?timeouts:aws_internet_gateway_attachment__timeouts ->
  internet_gateway_id:string prop ->
  vpc_id:string prop ->
  string ->
  t
