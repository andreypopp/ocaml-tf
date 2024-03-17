(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_wafv2_ip_set

type t = private {
  addresses : string list prop;
  arn : string prop;
  description : string prop;
  id : string prop;
  ip_address_version : string prop;
  lock_token : string prop;
  name : string prop;
  scope : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_wafv2_ip_set :
  ?addresses:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ip_address_version:string prop ->
  name:string prop ->
  scope:string prop ->
  string ->
  t
