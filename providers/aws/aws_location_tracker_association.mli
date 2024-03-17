(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_location_tracker_association__timeouts
type aws_location_tracker_association

type t = private {
  consumer_arn : string prop;
  id : string prop;
  tracker_name : string prop;
}

val aws_location_tracker_association :
  ?id:string prop ->
  ?timeouts:aws_location_tracker_association__timeouts ->
  consumer_arn:string prop ->
  tracker_name:string prop ->
  string ->
  t
