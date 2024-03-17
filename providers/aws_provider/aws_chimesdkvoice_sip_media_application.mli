(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_chimesdkvoice_sip_media_application__endpoints
type aws_chimesdkvoice_sip_media_application

val aws_chimesdkvoice_sip_media_application :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  aws_region:string prop ->
  name:string prop ->
  endpoints:aws_chimesdkvoice_sip_media_application__endpoints list ->
  string ->
  unit
