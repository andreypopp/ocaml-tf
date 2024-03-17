(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_directory_service_shared_directory__target
type aws_directory_service_shared_directory__timeouts
type aws_directory_service_shared_directory

val aws_directory_service_shared_directory :
  ?id:string prop ->
  ?method_:string prop ->
  ?notes:string prop ->
  ?timeouts:aws_directory_service_shared_directory__timeouts ->
  directory_id:string prop ->
  target:aws_directory_service_shared_directory__target list ->
  string ->
  unit
