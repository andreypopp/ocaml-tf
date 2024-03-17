(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudsearch_domain_service_access_policy__timeouts = {
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_cloudsearch_domain_service_access_policy__timeouts *)

type aws_cloudsearch_domain_service_access_policy = {
  access_policy : string prop;  (** access_policy *)
  domain_name : string prop;  (** domain_name *)
  id : string prop option; [@option]  (** id *)
  timeouts :
    aws_cloudsearch_domain_service_access_policy__timeouts option;
}
[@@deriving yojson_of]
(** aws_cloudsearch_domain_service_access_policy *)

type t = {
  access_policy : string prop;
  domain_name : string prop;
  id : string prop;
}

let aws_cloudsearch_domain_service_access_policy ?id ?timeouts
    ~access_policy ~domain_name __resource_id =
  let __resource_type =
    "aws_cloudsearch_domain_service_access_policy"
  in
  let __resource =
    ({ access_policy; domain_name; id; timeouts }
      : aws_cloudsearch_domain_service_access_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudsearch_domain_service_access_policy
       __resource);
  let __resource_attributes =
    ({
       access_policy =
         Prop.computed __resource_type __resource_id "access_policy";
       domain_name =
         Prop.computed __resource_type __resource_id "domain_name";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
