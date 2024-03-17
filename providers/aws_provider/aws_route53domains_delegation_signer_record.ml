(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_route53domains_delegation_signer_record__signing_attributes = {
  algorithm : float;  (** algorithm *)
  flags : float;  (** flags *)
  public_key : string;  (** public_key *)
}
[@@deriving yojson_of]
(** aws_route53domains_delegation_signer_record__signing_attributes *)

type aws_route53domains_delegation_signer_record__timeouts = {
  create : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
}
[@@deriving yojson_of]
(** aws_route53domains_delegation_signer_record__timeouts *)

type aws_route53domains_delegation_signer_record = {
  domain_name : string;  (** domain_name *)
  signing_attributes :
    aws_route53domains_delegation_signer_record__signing_attributes
    list;
  timeouts :
    aws_route53domains_delegation_signer_record__timeouts option;
}
[@@deriving yojson_of]
(** aws_route53domains_delegation_signer_record *)

let aws_route53domains_delegation_signer_record ?timeouts
    ~domain_name ~signing_attributes __resource_id =
  let __resource_type =
    "aws_route53domains_delegation_signer_record"
  in
  let __resource = { domain_name; signing_attributes; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53domains_delegation_signer_record __resource);
  ()
