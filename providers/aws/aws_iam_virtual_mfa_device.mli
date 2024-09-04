(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_iam_virtual_mfa_device

val aws_iam_virtual_mfa_device :
  ?id:string prop ->
  ?path:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  virtual_mfa_device_name:string prop ->
  unit ->
  aws_iam_virtual_mfa_device

val yojson_of_aws_iam_virtual_mfa_device :
  aws_iam_virtual_mfa_device -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  base_32_string_seed : string prop;
  enable_date : string prop;
  id : string prop;
  path : string prop;
  qr_code_png : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  user_name : string prop;
  virtual_mfa_device_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?path:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  virtual_mfa_device_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?path:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  virtual_mfa_device_name:string prop ->
  string ->
  t Tf_core.resource
