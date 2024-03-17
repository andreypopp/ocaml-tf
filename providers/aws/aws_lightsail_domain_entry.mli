(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lightsail_domain_entry

type t = private {
  domain_name : string prop;
  id : string prop;
  is_alias : bool prop;
  name : string prop;
  target : string prop;
  type_ : string prop;
}

val aws_lightsail_domain_entry :
  ?id:string prop ->
  ?is_alias:bool prop ->
  domain_name:string prop ->
  name:string prop ->
  target:string prop ->
  type_:string prop ->
  string ->
  t
