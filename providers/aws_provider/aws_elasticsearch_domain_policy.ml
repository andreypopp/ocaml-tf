(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_elasticsearch_domain_policy__timeouts = {
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_elasticsearch_domain_policy__timeouts *)

type aws_elasticsearch_domain_policy = {
  access_policies : string prop;  (** access_policies *)
  domain_name : string prop;  (** domain_name *)
  id : string prop option; [@option]  (** id *)
  timeouts : aws_elasticsearch_domain_policy__timeouts option;
}
[@@deriving yojson_of]
(** aws_elasticsearch_domain_policy *)

let aws_elasticsearch_domain_policy ?id ?timeouts ~access_policies
    ~domain_name __resource_id =
  let __resource_type = "aws_elasticsearch_domain_policy" in
  let __resource = { access_policies; domain_name; id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_elasticsearch_domain_policy __resource);
  ()
