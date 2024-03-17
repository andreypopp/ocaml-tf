(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sfn_alias__routing_configuration
type aws_sfn_alias__timeouts
type aws_sfn_alias

type t = private {
  arn : string prop;
  creation_date : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
}

val aws_sfn_alias :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:aws_sfn_alias__timeouts ->
  name:string prop ->
  routing_configuration:aws_sfn_alias__routing_configuration list ->
  string ->
  t
