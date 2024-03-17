(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_apprunner_deployment__timeouts
type aws_apprunner_deployment

type t = private {
  id : string prop;
  operation_id : string prop;
  service_arn : string prop;
  status : string prop;
}

val aws_apprunner_deployment :
  ?timeouts:aws_apprunner_deployment__timeouts ->
  service_arn:string prop ->
  string ->
  t
