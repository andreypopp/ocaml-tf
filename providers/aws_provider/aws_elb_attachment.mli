(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_elb_attachment

type t = private {
  elb : string prop;
  id : string prop;
  instance : string prop;
}

val aws_elb_attachment :
  ?id:string prop ->
  elb:string prop ->
  instance:string prop ->
  string ->
  t
