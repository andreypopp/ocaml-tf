(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_licensemanager_license_configuration

val aws_licensemanager_license_configuration :
  ?description:string ->
  ?license_count:float ->
  ?license_count_hard_limit:bool ->
  ?license_rules:string list ->
  ?tags:(string * string) list ->
  license_counting_type:string ->
  name:string ->
  string ->
  unit
