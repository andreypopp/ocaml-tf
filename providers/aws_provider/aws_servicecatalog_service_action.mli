(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_servicecatalog_service_action__definition
type aws_servicecatalog_service_action__timeouts
type aws_servicecatalog_service_action

val aws_servicecatalog_service_action :
  ?accept_language:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:aws_servicecatalog_service_action__timeouts ->
  name:string prop ->
  definition:aws_servicecatalog_service_action__definition list ->
  string ->
  unit
