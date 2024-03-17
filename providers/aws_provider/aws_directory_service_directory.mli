(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_directory_service_directory__connect_settings
type aws_directory_service_directory__timeouts
type aws_directory_service_directory__vpc_settings
type aws_directory_service_directory

val aws_directory_service_directory :
  ?description:string ->
  ?enable_sso:bool ->
  ?tags:(string * string) list ->
  ?type_:string ->
  ?timeouts:aws_directory_service_directory__timeouts ->
  name:string ->
  password:string ->
  connect_settings:
    aws_directory_service_directory__connect_settings list ->
  vpc_settings:aws_directory_service_directory__vpc_settings list ->
  string ->
  unit
