(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type identity_provider

val identity_provider :
  saml_metadata:string prop ->
  type_:string prop ->
  unit ->
  identity_provider

type network

val network :
  security_group_ids:string prop list ->
  subnet_ids:string prop list ->
  vpc_id:string prop ->
  unit ->
  network

type aws_worklink_fleet

val aws_worklink_fleet :
  ?audit_stream_arn:string prop ->
  ?device_ca_certificate:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?optimize_for_end_user_location:bool prop ->
  name:string prop ->
  identity_provider:identity_provider list ->
  network:network list ->
  unit ->
  aws_worklink_fleet

val yojson_of_aws_worklink_fleet : aws_worklink_fleet -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  audit_stream_arn : string prop;
  company_code : string prop;
  created_time : string prop;
  device_ca_certificate : string prop;
  display_name : string prop;
  id : string prop;
  last_updated_time : string prop;
  name : string prop;
  optimize_for_end_user_location : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?audit_stream_arn:string prop ->
  ?device_ca_certificate:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?optimize_for_end_user_location:bool prop ->
  name:string prop ->
  identity_provider:identity_provider list ->
  network:network list ->
  string ->
  t
