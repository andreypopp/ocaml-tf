(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_securityhub_organization_configuration__organization_configuration

type aws_securityhub_organization_configuration__timeouts
type aws_securityhub_organization_configuration

type t = private {
  auto_enable : bool prop;
  auto_enable_standards : string prop;
  id : string prop;
}

val aws_securityhub_organization_configuration :
  ?auto_enable_standards:string prop ->
  ?id:string prop ->
  ?timeouts:aws_securityhub_organization_configuration__timeouts ->
  auto_enable:bool prop ->
  organization_configuration:
    aws_securityhub_organization_configuration__organization_configuration
    list ->
  string ->
  t
