(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_guardduty_organization_configuration_feature__additional_configuration

type aws_guardduty_organization_configuration_feature

val aws_guardduty_organization_configuration_feature :
  ?id:string prop ->
  auto_enable:string prop ->
  detector_id:string prop ->
  name:string prop ->
  additional_configuration:
    aws_guardduty_organization_configuration_feature__additional_configuration
    list ->
  string ->
  unit
