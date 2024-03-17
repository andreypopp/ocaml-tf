(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_licensemanager_license_configuration

val aws_licensemanager_license_configuration :
  ?description:string prop ->
  ?id:string prop ->
  ?license_count:float prop ->
  ?license_count_hard_limit:bool prop ->
  ?license_rules:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  license_counting_type:string prop ->
  name:string prop ->
  string ->
  unit
