(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_directory_service_region__timeouts
type aws_directory_service_region__vpc_settings
type aws_directory_service_region

val aws_directory_service_region :
  ?desired_number_of_domain_controllers:float prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_directory_service_region__timeouts ->
  directory_id:string prop ->
  region_name:string prop ->
  vpc_settings:aws_directory_service_region__vpc_settings list ->
  string ->
  unit
