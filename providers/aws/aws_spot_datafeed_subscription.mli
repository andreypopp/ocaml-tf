(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_spot_datafeed_subscription

val aws_spot_datafeed_subscription :
  ?id:string prop ->
  ?prefix:string prop ->
  bucket:string prop ->
  unit ->
  aws_spot_datafeed_subscription

val yojson_of_aws_spot_datafeed_subscription :
  aws_spot_datafeed_subscription -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  bucket : string prop;
  id : string prop;
  prefix : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?prefix:string prop ->
  bucket:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?prefix:string prop ->
  bucket:string prop ->
  string ->
  t Tf_core.resource
