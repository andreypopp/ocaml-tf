(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iam_virtual_mfa_device

type t = private {
  arn : string prop;
  base_32_string_seed : string prop;
  enable_date : string prop;
  id : string prop;
  path : string prop;
  qr_code_png : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  user_name : string prop;
  virtual_mfa_device_name : string prop;
}

val aws_iam_virtual_mfa_device :
  ?id:string prop ->
  ?path:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  virtual_mfa_device_name:string prop ->
  string ->
  t
