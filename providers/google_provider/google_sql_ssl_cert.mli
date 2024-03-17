(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_sql_ssl_cert__timeouts
type google_sql_ssl_cert

val google_sql_ssl_cert :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_sql_ssl_cert__timeouts ->
  common_name:string prop ->
  instance:string prop ->
  string ->
  unit
