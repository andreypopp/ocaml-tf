(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_inspector2_organization_configuration__auto_enable
type aws_inspector2_organization_configuration__timeouts
type aws_inspector2_organization_configuration

val aws_inspector2_organization_configuration :
  ?timeouts:aws_inspector2_organization_configuration__timeouts ->
  auto_enable:
    aws_inspector2_organization_configuration__auto_enable list ->
  string ->
  unit
