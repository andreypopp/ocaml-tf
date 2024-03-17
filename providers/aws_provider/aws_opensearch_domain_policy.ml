(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_opensearch_domain_policy__timeouts = {
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_opensearch_domain_policy__timeouts *)

type aws_opensearch_domain_policy = {
  access_policies : string;  (** access_policies *)
  domain_name : string;  (** domain_name *)
  timeouts : aws_opensearch_domain_policy__timeouts option;
}
[@@deriving yojson_of]
(** aws_opensearch_domain_policy *)

let aws_opensearch_domain_policy ?timeouts ~access_policies
    ~domain_name __resource_id =
  let __resource_type = "aws_opensearch_domain_policy" in
  let __resource = { access_policies; domain_name; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_opensearch_domain_policy __resource);
  ()
