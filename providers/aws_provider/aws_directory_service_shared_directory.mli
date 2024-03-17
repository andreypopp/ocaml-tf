(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_directory_service_shared_directory__target
type aws_directory_service_shared_directory__timeouts
type aws_directory_service_shared_directory

val aws_directory_service_shared_directory :
  ?method_:string ->
  ?notes:string ->
  ?timeouts:aws_directory_service_shared_directory__timeouts ->
  directory_id:string ->
  target:aws_directory_service_shared_directory__target list ->
  string ->
  unit
