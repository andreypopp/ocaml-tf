(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53domains_delegation_signer_record__signing_attributes = {
  algorithm : float prop;  (** algorithm *)
  flags : float prop;  (** flags *)
  public_key : string prop;  (** public_key *)
}
[@@deriving yojson_of]
(** aws_route53domains_delegation_signer_record__signing_attributes *)

type aws_route53domains_delegation_signer_record__timeouts = {
  create : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
}
[@@deriving yojson_of]
(** aws_route53domains_delegation_signer_record__timeouts *)

type aws_route53domains_delegation_signer_record = {
  domain_name : string prop;  (** domain_name *)
  signing_attributes :
    aws_route53domains_delegation_signer_record__signing_attributes
    list;
  timeouts :
    aws_route53domains_delegation_signer_record__timeouts option;
}
[@@deriving yojson_of]
(** aws_route53domains_delegation_signer_record *)

type t = {
  dnssec_key_id : string prop;
  domain_name : string prop;
  id : string prop;
}

let aws_route53domains_delegation_signer_record ?timeouts
    ~domain_name ~signing_attributes __resource_id =
  let __resource_type =
    "aws_route53domains_delegation_signer_record"
  in
  let __resource =
    ({ domain_name; signing_attributes; timeouts }
      : aws_route53domains_delegation_signer_record)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53domains_delegation_signer_record __resource);
  let __resource_attributes =
    ({
       dnssec_key_id =
         Prop.computed __resource_type __resource_id "dnssec_key_id";
       domain_name =
         Prop.computed __resource_type __resource_id "domain_name";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
