(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_controltower_landing_zone__timeouts

type aws_controltower_landing_zone__drift_status = {
  status : string prop;  (** status *)
}

type aws_controltower_landing_zone

type t = private {
  arn : string prop;
  drift_status :
    aws_controltower_landing_zone__drift_status list prop;
  id : string prop;
  latest_available_version : string prop;
  manifest_json : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version : string prop;
}

val aws_controltower_landing_zone :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_controltower_landing_zone__timeouts ->
  manifest_json:string prop ->
  version:string prop ->
  string ->
  t
