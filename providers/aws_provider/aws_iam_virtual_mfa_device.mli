(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iam_virtual_mfa_device

val aws_iam_virtual_mfa_device :
  ?id:string prop ->
  ?path:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  virtual_mfa_device_name:string prop ->
  string ->
  unit
