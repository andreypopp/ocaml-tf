(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_elb_attachment

val aws_elb_attachment :
  ?id:string prop ->
  elb:string prop ->
  instance:string prop ->
  unit ->
  aws_elb_attachment

val yojson_of_aws_elb_attachment : aws_elb_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  elb : string prop;
  id : string prop;
  instance : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  elb:string prop ->
  instance:string prop ->
  string ->
  t
