(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type signing_attributes

val signing_attributes :
  algorithm:float prop ->
  flags:float prop ->
  public_key:string prop ->
  unit ->
  signing_attributes

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_route53domains_delegation_signer_record

val aws_route53domains_delegation_signer_record :
  ?signing_attributes:signing_attributes list ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  unit ->
  aws_route53domains_delegation_signer_record

val yojson_of_aws_route53domains_delegation_signer_record :
  aws_route53domains_delegation_signer_record -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  dnssec_key_id : string prop;
  domain_name : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?signing_attributes:signing_attributes list ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  string ->
  t

val make :
  ?signing_attributes:signing_attributes list ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  string ->
  t Tf_core.resource
