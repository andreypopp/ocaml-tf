(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53_resolver_firewall_config = {
  firewall_fail_open : string option; [@option]
      (** firewall_fail_open *)
  id : string option; [@option]  (** id *)
  resource_id : string;  (** resource_id *)
}
[@@deriving yojson_of]
(** aws_route53_resolver_firewall_config *)

let aws_route53_resolver_firewall_config ?firewall_fail_open ?id
    ~resource_id __resource_id =
  let __resource_type = "aws_route53_resolver_firewall_config" in
  let __resource = { firewall_fail_open; id; resource_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_resolver_firewall_config __resource);
  ()
