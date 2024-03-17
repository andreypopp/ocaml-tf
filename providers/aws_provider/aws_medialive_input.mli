(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_medialive_input__destinations
type aws_medialive_input__input_devices
type aws_medialive_input__media_connect_flows
type aws_medialive_input__sources
type aws_medialive_input__timeouts
type aws_medialive_input__vpc
type aws_medialive_input

type t = private {
  arn : string prop;
  attached_channels : string list prop;
  id : string prop;
  input_class : string prop;
  input_partner_ids : string list prop;
  input_security_groups : string list prop;
  input_source_type : string prop;
  name : string prop;
  role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

val aws_medialive_input :
  ?id:string prop ->
  ?input_security_groups:string prop list ->
  ?role_arn:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_medialive_input__timeouts ->
  name:string prop ->
  type_:string prop ->
  destinations:aws_medialive_input__destinations list ->
  input_devices:aws_medialive_input__input_devices list ->
  media_connect_flows:aws_medialive_input__media_connect_flows list ->
  sources:aws_medialive_input__sources list ->
  vpc:aws_medialive_input__vpc list ->
  string ->
  t
