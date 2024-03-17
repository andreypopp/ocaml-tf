(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53_resolver_firewall_config = {
  firewall_fail_open : string prop option; [@option]
      (** firewall_fail_open *)
  id : string prop option; [@option]  (** id *)
  resource_id : string prop;  (** resource_id *)
}
[@@deriving yojson_of]
(** aws_route53_resolver_firewall_config *)

type t = {
  firewall_fail_open : string prop;
  id : string prop;
  owner_id : string prop;
  resource_id : string prop;
}

let aws_route53_resolver_firewall_config ?firewall_fail_open ?id
    ~resource_id __resource_id =
  let __resource_type = "aws_route53_resolver_firewall_config" in
  let __resource =
    ({ firewall_fail_open; id; resource_id }
      : aws_route53_resolver_firewall_config)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_resolver_firewall_config __resource);
  let __resource_attributes =
    ({
       firewall_fail_open =
         Prop.computed __resource_type __resource_id
           "firewall_fail_open";
       id = Prop.computed __resource_type __resource_id "id";
       owner_id =
         Prop.computed __resource_type __resource_id "owner_id";
       resource_id =
         Prop.computed __resource_type __resource_id "resource_id";
     }
      : t)
  in
  __resource_attributes
