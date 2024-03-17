(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_chimesdkvoice_sip_media_application__endpoints
type aws_chimesdkvoice_sip_media_application

type t = private {
  arn : string prop;
  aws_region : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_chimesdkvoice_sip_media_application :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  aws_region:string prop ->
  name:string prop ->
  endpoints:aws_chimesdkvoice_sip_media_application__endpoints list ->
  string ->
  t
