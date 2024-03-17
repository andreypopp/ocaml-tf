(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_worklink_fleet__identity_provider
type aws_worklink_fleet__network
type aws_worklink_fleet

val aws_worklink_fleet :
  ?audit_stream_arn:string prop ->
  ?device_ca_certificate:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?optimize_for_end_user_location:bool prop ->
  name:string prop ->
  identity_provider:aws_worklink_fleet__identity_provider list ->
  network:aws_worklink_fleet__network list ->
  string ->
  unit
