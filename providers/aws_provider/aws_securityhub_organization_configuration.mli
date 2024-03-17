(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_securityhub_organization_configuration__organization_configuration

type aws_securityhub_organization_configuration__timeouts
type aws_securityhub_organization_configuration

val aws_securityhub_organization_configuration :
  ?auto_enable_standards:string ->
  ?id:string ->
  ?timeouts:aws_securityhub_organization_configuration__timeouts ->
  auto_enable:bool ->
  organization_configuration:
    aws_securityhub_organization_configuration__organization_configuration
    list ->
  string ->
  unit
