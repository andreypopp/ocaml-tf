(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53_key_signing_key = {
  hosted_zone_id : string prop;  (** hosted_zone_id *)
  id : string prop option; [@option]  (** id *)
  key_management_service_arn : string prop;
      (** key_management_service_arn *)
  name : string prop;  (** name *)
  status : string prop option; [@option]  (** status *)
}
[@@deriving yojson_of]
(** aws_route53_key_signing_key *)

type t = {
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

let aws_route53_key_signing_key ?id ?status ~hosted_zone_id
    ~key_management_service_arn ~name __resource_id =
  let __resource_type = "aws_route53_key_signing_key" in
  let __resource =
    ({ hosted_zone_id; id; key_management_service_arn; name; status }
      : aws_route53_key_signing_key)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_key_signing_key __resource);
  let __resource_attributes =
    ({
       digest_algorithm_mnemonic =
         Prop.computed __resource_type __resource_id
           "digest_algorithm_mnemonic";
       digest_algorithm_type =
         Prop.computed __resource_type __resource_id
           "digest_algorithm_type";
       digest_value =
         Prop.computed __resource_type __resource_id "digest_value";
       dnskey_record =
         Prop.computed __resource_type __resource_id "dnskey_record";
       ds_record =
         Prop.computed __resource_type __resource_id "ds_record";
       flag = Prop.computed __resource_type __resource_id "flag";
       hosted_zone_id =
         Prop.computed __resource_type __resource_id "hosted_zone_id";
       id = Prop.computed __resource_type __resource_id "id";
       key_management_service_arn =
         Prop.computed __resource_type __resource_id
           "key_management_service_arn";
       key_tag =
         Prop.computed __resource_type __resource_id "key_tag";
       name = Prop.computed __resource_type __resource_id "name";
       public_key =
         Prop.computed __resource_type __resource_id "public_key";
       signing_algorithm_mnemonic =
         Prop.computed __resource_type __resource_id
           "signing_algorithm_mnemonic";
       signing_algorithm_type =
         Prop.computed __resource_type __resource_id
           "signing_algorithm_type";
       status = Prop.computed __resource_type __resource_id "status";
     }
      : t)
  in
  __resource_attributes
