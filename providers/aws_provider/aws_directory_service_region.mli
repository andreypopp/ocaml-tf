(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_directory_service_region__timeouts
type aws_directory_service_region__vpc_settings
type aws_directory_service_region

val aws_directory_service_region :
  ?tags:(string * string) list ->
  ?timeouts:aws_directory_service_region__timeouts ->
  directory_id:string ->
  region_name:string ->
  vpc_settings:aws_directory_service_region__vpc_settings list ->
  string ->
  unit
