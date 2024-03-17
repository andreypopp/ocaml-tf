(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_spot_datafeed_subscription

type t = private {
  bucket : string prop;
  id : string prop;
  prefix : string prop;
}

val aws_spot_datafeed_subscription :
  ?id:string prop ->
  ?prefix:string prop ->
  bucket:string prop ->
  string ->
  t
