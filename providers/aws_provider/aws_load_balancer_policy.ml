(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_load_balancer_policy__policy_attribute = {
  name : string option; [@option]  (** name *)
  value : string option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_load_balancer_policy__policy_attribute *)

type aws_load_balancer_policy = {
  load_balancer_name : string;  (** load_balancer_name *)
  policy_name : string;  (** policy_name *)
  policy_type_name : string;  (** policy_type_name *)
  policy_attribute : aws_load_balancer_policy__policy_attribute list;
}
[@@deriving yojson_of]
(** aws_load_balancer_policy *)

let aws_load_balancer_policy ~load_balancer_name ~policy_name
    ~policy_type_name ~policy_attribute __resource_id =
  let __resource_type = "aws_load_balancer_policy" in
  let __resource =
    {
      load_balancer_name;
      policy_name;
      policy_type_name;
      policy_attribute;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_load_balancer_policy __resource);
  ()
