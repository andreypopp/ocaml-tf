(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_servicecatalog_service_action__definition
type aws_servicecatalog_service_action__timeouts
type aws_servicecatalog_service_action

val aws_servicecatalog_service_action :
  ?accept_language:string ->
  ?description:string ->
  ?id:string ->
  ?timeouts:aws_servicecatalog_service_action__timeouts ->
  name:string ->
  definition:aws_servicecatalog_service_action__definition list ->
  string ->
  unit
