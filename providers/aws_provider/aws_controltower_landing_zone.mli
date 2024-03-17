(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_controltower_landing_zone__timeouts

type aws_controltower_landing_zone__drift_status = {
  status : string;  (** status *)
}
[@@deriving yojson_of]

type aws_controltower_landing_zone

val aws_controltower_landing_zone :
  ?tags:(string * string) list ->
  ?timeouts:aws_controltower_landing_zone__timeouts ->
  manifest_json:string ->
  version:string ->
  string ->
  unit
