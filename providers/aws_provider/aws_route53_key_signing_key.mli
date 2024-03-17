(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53_key_signing_key

type t = private {
  digest_algorithm_mnemonic : string prop;
  digest_algorithm_type : float prop;
  digest_value : string prop;
  dnskey_record : string prop;
  ds_record : string prop;
  flag : float prop;
  hosted_zone_id : string prop;
  id : string prop;
  key_management_service_arn : string prop;
  key_tag : float prop;
  name : string prop;
  public_key : string prop;
  signing_algorithm_mnemonic : string prop;
  signing_algorithm_type : float prop;
  status : string prop;
}

val aws_route53_key_signing_key :
  ?id:string prop ->
  ?status:string prop ->
  hosted_zone_id:string prop ->
  key_management_service_arn:string prop ->
  name:string prop ->
  string ->
  t
