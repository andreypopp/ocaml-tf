(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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
  ?timeouts:timeouts ->
  domain_name:string prop ->
  signing_attributes:signing_attributes list ->
  unit ->
  aws_route53domains_delegation_signer_record

val yojson_of_aws_route53domains_delegation_signer_record :
  aws_route53domains_delegation_signer_record -> json

(** RESOURCE REGISTRATION *)

type t = private {
  dnssec_key_id : string prop;
  domain_name : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  signing_attributes:signing_attributes list ->
  string ->
  t
