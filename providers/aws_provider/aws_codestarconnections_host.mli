(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_codestarconnections_host__timeouts
type aws_codestarconnections_host__vpc_configuration
type aws_codestarconnections_host

val aws_codestarconnections_host :
  ?timeouts:aws_codestarconnections_host__timeouts ->
  name:string ->
  provider_endpoint:string ->
  provider_type:string ->
  vpc_configuration:
    aws_codestarconnections_host__vpc_configuration list ->
  string ->
  unit
