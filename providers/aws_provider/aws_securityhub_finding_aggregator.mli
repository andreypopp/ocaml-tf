(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_securityhub_finding_aggregator

type t = private {
  id : string prop;
  linking_mode : string prop;
  specified_regions : string list prop;
}

val aws_securityhub_finding_aggregator :
  ?id:string prop ->
  ?specified_regions:string prop list ->
  linking_mode:string prop ->
  string ->
  t
