(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_mtls_certificate

val cloudflare_mtls_certificate :
  ?id:string prop ->
  ?name:string prop ->
  ?private_key:string prop ->
  account_id:string prop ->
  ca:bool prop ->
  certificates:string prop ->
  string ->
  unit
