(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudsearch_domain_service_access_policy__timeouts = {
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_cloudsearch_domain_service_access_policy__timeouts *)

type aws_cloudsearch_domain_service_access_policy = {
  access_policy : string;  (** access_policy *)
  domain_name : string;  (** domain_name *)
  timeouts :
    aws_cloudsearch_domain_service_access_policy__timeouts option;
}
[@@deriving yojson_of]
(** aws_cloudsearch_domain_service_access_policy *)

let aws_cloudsearch_domain_service_access_policy ?timeouts
    ~access_policy ~domain_name __resource_id =
  let __resource_type =
    "aws_cloudsearch_domain_service_access_policy"
  in
  let __resource = { access_policy; domain_name; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudsearch_domain_service_access_policy
       __resource);
  ()
