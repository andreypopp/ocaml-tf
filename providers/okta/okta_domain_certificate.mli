(** Manages certificate for the domain.
This resource's 'certificate', 'private_key', and 'certificate_chain' attributes
hold actual PEM values and can be referred to by other configs requiring
certificate and private key inputs. This is inline with TF's [best
practices](https://developer.hashicorp.com/terraform/plugin/sdkv2/best-practices/sensitive-state#don-t-encrypt-state)
of not encrypting state.
See [Let's Encrypt Certbot notes](#lets-encrypt-certbot) at the end of this
documentation for notes on how to generate a domain certificate with Let's Encrypt Certbot *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_domain_certificate

val okta_domain_certificate :
  ?id:string prop ->
  ?type_:string prop ->
  certificate:string prop ->
  certificate_chain:string prop ->
  domain_id:string prop ->
  private_key:string prop ->
  unit ->
  okta_domain_certificate

val yojson_of_okta_domain_certificate :
  okta_domain_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  certificate : string prop;
  certificate_chain : string prop;
  domain_id : string prop;
  id : string prop;
  private_key : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?type_:string prop ->
  certificate:string prop ->
  certificate_chain:string prop ->
  domain_id:string prop ->
  private_key:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?type_:string prop ->
  certificate:string prop ->
  certificate_chain:string prop ->
  domain_id:string prop ->
  private_key:string prop ->
  string ->
  t Tf_core.resource
