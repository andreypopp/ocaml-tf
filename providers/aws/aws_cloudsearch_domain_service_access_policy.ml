(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_cloudsearch_domain_service_access_policy = {
  access_policy : string prop;  (** access_policy *)
  domain_name : string prop;  (** domain_name *)
  id : string prop option; [@option]  (** id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_cloudsearch_domain_service_access_policy *)

let timeouts ?delete ?update () : timeouts = { delete; update }

let aws_cloudsearch_domain_service_access_policy ?id ?timeouts
    ~access_policy ~domain_name () :
    aws_cloudsearch_domain_service_access_policy =
  { access_policy; domain_name; id; timeouts }

type t = {
  access_policy : string prop;
  domain_name : string prop;
  id : string prop;
}

let register ?tf_module ?id ?timeouts ~access_policy ~domain_name
    __resource_id =
  let __resource_type =
    "aws_cloudsearch_domain_service_access_policy"
  in
  let __resource =
    aws_cloudsearch_domain_service_access_policy ?id ?timeouts
      ~access_policy ~domain_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
