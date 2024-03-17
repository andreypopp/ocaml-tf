(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type hcloud_managed_certificate

val hcloud_managed_certificate :
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  domain_names:string prop list ->
  name:string prop ->
  string ->
  unit
