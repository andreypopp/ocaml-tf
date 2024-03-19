(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_opensearch_domain_policy = {
  access_policies : string prop;  (** access_policies *)
  domain_name : string prop;  (** domain_name *)
  id : string prop option; [@option]  (** id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_opensearch_domain_policy *)

let timeouts ?delete ?update () : timeouts = { delete; update }

let aws_opensearch_domain_policy ?id ?timeouts ~access_policies
    ~domain_name () : aws_opensearch_domain_policy =
  { access_policies; domain_name; id; timeouts }

type t = {
  access_policies : string prop;
  domain_name : string prop;
  id : string prop;
}

let register ?tf_module ?id ?timeouts ~access_policies ~domain_name
    __resource_id =
  let __resource_type = "aws_opensearch_domain_policy" in
  let __resource =
    aws_opensearch_domain_policy ?id ?timeouts ~access_policies
      ~domain_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_opensearch_domain_policy __resource);
  let __resource_attributes =
    ({
       access_policies =
         Prop.computed __resource_type __resource_id
           "access_policies";
       domain_name =
         Prop.computed __resource_type __resource_id "domain_name";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
