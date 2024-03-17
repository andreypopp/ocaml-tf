(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_controltower_landing_zone__timeouts

type aws_controltower_landing_zone__drift_status = {
  status : string prop;  (** status *)
}

type aws_controltower_landing_zone

val aws_controltower_landing_zone :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_controltower_landing_zone__timeouts ->
  manifest_json:string prop ->
  version:string prop ->
  string ->
  unit
