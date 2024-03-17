(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_medialive_input__destinations
type aws_medialive_input__input_devices
type aws_medialive_input__media_connect_flows
type aws_medialive_input__sources
type aws_medialive_input__timeouts
type aws_medialive_input__vpc
type aws_medialive_input

val aws_medialive_input :
  ?input_security_groups:string list ->
  ?tags:(string * string) list ->
  ?timeouts:aws_medialive_input__timeouts ->
  name:string ->
  type_:string ->
  destinations:aws_medialive_input__destinations list ->
  input_devices:aws_medialive_input__input_devices list ->
  media_connect_flows:aws_medialive_input__media_connect_flows list ->
  sources:aws_medialive_input__sources list ->
  vpc:aws_medialive_input__vpc list ->
  string ->
  unit
