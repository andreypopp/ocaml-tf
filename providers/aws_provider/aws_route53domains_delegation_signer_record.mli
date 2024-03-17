(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53domains_delegation_signer_record__signing_attributes
type aws_route53domains_delegation_signer_record__timeouts
type aws_route53domains_delegation_signer_record

val aws_route53domains_delegation_signer_record :
  ?timeouts:aws_route53domains_delegation_signer_record__timeouts ->
  domain_name:string ->
  signing_attributes:
    aws_route53domains_delegation_signer_record__signing_attributes
    list ->
  string ->
  unit
