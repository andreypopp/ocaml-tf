(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_load_balancer_policy__policy_attribute = {
  name : string prop option; [@option]  (** name *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_load_balancer_policy__policy_attribute *)

type aws_load_balancer_policy = {
  id : string prop option; [@option]  (** id *)
  load_balancer_name : string prop;  (** load_balancer_name *)
  policy_name : string prop;  (** policy_name *)
  policy_type_name : string prop;  (** policy_type_name *)
  policy_attribute : aws_load_balancer_policy__policy_attribute list;
}
[@@deriving yojson_of]
(** aws_load_balancer_policy *)

type t = {
  id : string prop;
  load_balancer_name : string prop;
  policy_name : string prop;
  policy_type_name : string prop;
}

let aws_load_balancer_policy ?id ~load_balancer_name ~policy_name
    ~policy_type_name ~policy_attribute __resource_id =
  let __resource_type = "aws_load_balancer_policy" in
  let __resource =
    ({
       id;
       load_balancer_name;
       policy_name;
       policy_type_name;
       policy_attribute;
     }
      : aws_load_balancer_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
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
