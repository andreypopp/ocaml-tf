(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_evidently_project__data_delivery__cloudwatch_logs
type aws_evidently_project__data_delivery__s3_destination
type aws_evidently_project__data_delivery
type aws_evidently_project__timeouts
type aws_evidently_project

val aws_evidently_project :
  ?description:string ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_evidently_project__timeouts ->
  name:string ->
  data_delivery:aws_evidently_project__data_delivery list ->
  string ->
  unit
