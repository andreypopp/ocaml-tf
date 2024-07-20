(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type key_attributes__key_modes_of_use

val key_attributes__key_modes_of_use :
  ?decrypt:bool prop ->
  ?derive_key:bool prop ->
  ?encrypt:bool prop ->
  ?generate:bool prop ->
  ?no_restrictions:bool prop ->
  ?sign:bool prop ->
  ?unwrap:bool prop ->
  ?verify:bool prop ->
  ?wrap:bool prop ->
  unit ->
  key_attributes__key_modes_of_use

type key_attributes

val key_attributes :
  key_algorithm:string prop ->
  key_class:string prop ->
  key_usage:string prop ->
  key_modes_of_use:key_attributes__key_modes_of_use ->
  unit ->
  key_attributes

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_paymentcryptography_key

val aws_paymentcryptography_key :
  ?deletion_window_in_days:float prop ->
  ?enabled:bool prop ->
  ?key_check_value_algorithm:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  exportable:bool prop ->
  key_attributes:key_attributes ->
  unit ->
  aws_paymentcryptography_key

val yojson_of_aws_paymentcryptography_key :
  aws_paymentcryptography_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  deletion_window_in_days : float prop;
  enabled : bool prop;
  exportable : bool prop;
  id : string prop;
  key_check_value : string prop;
  key_check_value_algorithm : string prop;
  key_origin : string prop;
  key_state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?deletion_window_in_days:float prop ->
  ?enabled:bool prop ->
  ?key_check_value_algorithm:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  exportable:bool prop ->
  key_attributes:key_attributes ->
  string ->
  t

val make :
  ?deletion_window_in_days:float prop ->
  ?enabled:bool prop ->
  ?key_check_value_algorithm:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  exportable:bool prop ->
  key_attributes:key_attributes ->
  string ->
  t Tf_core.resource
