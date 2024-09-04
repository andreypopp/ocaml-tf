(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type locale_specification = {
  source_bot_version : string prop;  (** source_bot_version *)
}

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_lexv2models_bot_version

val aws_lexv2models_bot_version :
  ?bot_version:string prop ->
  ?description:string prop ->
  ?timeouts:timeouts ->
  bot_id:string prop ->
  locale_specification:locale_specification Tf_core.assoc ->
  unit ->
  aws_lexv2models_bot_version

val yojson_of_aws_lexv2models_bot_version :
  aws_lexv2models_bot_version -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  bot_id : string prop;
  bot_version : string prop;
  description : string prop;
  id : string prop;
  locale_specification : locale_specification Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?bot_version:string prop ->
  ?description:string prop ->
  ?timeouts:timeouts ->
  bot_id:string prop ->
  locale_specification:locale_specification Tf_core.assoc ->
  string ->
  t

val make :
  ?bot_version:string prop ->
  ?description:string prop ->
  ?timeouts:timeouts ->
  bot_id:string prop ->
  locale_specification:locale_specification Tf_core.assoc ->
  string ->
  t Tf_core.resource
