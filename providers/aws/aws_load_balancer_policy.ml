(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type policy_attribute = {
  name : string prop option; [@option]  (** name *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** policy_attribute *)

type aws_load_balancer_policy = {
  id : string prop option; [@option]  (** id *)
  load_balancer_name : string prop;  (** load_balancer_name *)
  policy_name : string prop;  (** policy_name *)
  policy_type_name : string prop;  (** policy_type_name *)
  policy_attribute : policy_attribute list;
}
[@@deriving yojson_of]
(** aws_load_balancer_policy *)

let policy_attribute ?name ?value () : policy_attribute =
  { name; value }

let aws_load_balancer_policy ?id ~load_balancer_name ~policy_name
    ~policy_type_name ~policy_attribute () : aws_load_balancer_policy
    =
  {
    id;
    load_balancer_name;
    policy_name;
    policy_type_name;
    policy_attribute;
  }

type t = {
  id : string prop;
  load_balancer_name : string prop;
  policy_name : string prop;
  policy_type_name : string prop;
}

let register ?tf_module ?id ~load_balancer_name ~policy_name
    ~policy_type_name ~policy_attribute __resource_id =
  let __resource_type = "aws_load_balancer_policy" in
  let __resource =
    aws_load_balancer_policy ?id ~load_balancer_name ~policy_name
      ~policy_type_name ~policy_attribute ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_load_balancer_policy __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       load_balancer_name =
         Prop.computed __resource_type __resource_id
           "load_balancer_name";
       policy_name =
         Prop.computed __resource_type __resource_id "policy_name";
       policy_type_name =
         Prop.computed __resource_type __resource_id
           "policy_type_name";
     }
      : t)
  in
  __resource_attributes
