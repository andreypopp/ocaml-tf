(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_codestarconnections_host__timeouts
type aws_codestarconnections_host__vpc_configuration
type aws_codestarconnections_host

type t = private {
  arn : string prop;
  id : string prop;
  name : string prop;
  provider_endpoint : string prop;
  provider_type : string prop;
  status : string prop;
}

val aws_codestarconnections_host :
  ?id:string prop ->
  ?timeouts:aws_codestarconnections_host__timeouts ->
  name:string prop ->
  provider_endpoint:string prop ->
  provider_type:string prop ->
  vpc_configuration:
    aws_codestarconnections_host__vpc_configuration list ->
  string ->
  t
