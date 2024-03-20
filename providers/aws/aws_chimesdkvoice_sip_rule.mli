(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type target_applications

val target_applications :
  aws_region:string prop ->
  priority:float prop ->
  sip_media_application_id:string prop ->
  unit ->
  target_applications

type aws_chimesdkvoice_sip_rule

val aws_chimesdkvoice_sip_rule :
  ?disabled:bool prop ->
  ?id:string prop ->
  name:string prop ->
  trigger_type:string prop ->
  trigger_value:string prop ->
  target_applications:target_applications list ->
  unit ->
  aws_chimesdkvoice_sip_rule

val yojson_of_aws_chimesdkvoice_sip_rule :
  aws_chimesdkvoice_sip_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  disabled : bool prop;
  id : string prop;
  name : string prop;
  trigger_type : string prop;
  trigger_value : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?disabled:bool prop ->
  ?id:string prop ->
  name:string prop ->
  trigger_type:string prop ->
  trigger_value:string prop ->
  target_applications:target_applications list ->
  string ->
  t

val make :
  ?disabled:bool prop ->
  ?id:string prop ->
  name:string prop ->
  trigger_type:string prop ->
  trigger_value:string prop ->
  target_applications:target_applications list ->
  string ->
  t Tf_core.resource
