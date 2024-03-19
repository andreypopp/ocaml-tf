(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_securityhub_finding_aggregator

val aws_securityhub_finding_aggregator :
  ?id:string prop ->
  ?specified_regions:string prop list ->
  linking_mode:string prop ->
  unit ->
  aws_securityhub_finding_aggregator

val yojson_of_aws_securityhub_finding_aggregator :
  aws_securityhub_finding_aggregator -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  linking_mode : string prop;
  specified_regions : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?specified_regions:string prop list ->
  linking_mode:string prop ->
  string ->
  t
