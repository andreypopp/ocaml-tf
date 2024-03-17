(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpc_endpoint_policy__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_vpc_endpoint_policy__timeouts *)

type aws_vpc_endpoint_policy = {
  id : string prop option; [@option]  (** id *)
  policy : string prop option; [@option]  (** policy *)
  vpc_endpoint_id : string prop;  (** vpc_endpoint_id *)
  timeouts : aws_vpc_endpoint_policy__timeouts option;
}
[@@deriving yojson_of]
(** aws_vpc_endpoint_policy *)

type t = {
  id : string prop;
  policy : string prop;
  vpc_endpoint_id : string prop;
}

let aws_vpc_endpoint_policy ?id ?policy ?timeouts ~vpc_endpoint_id
    __resource_id =
  let __resource_type = "aws_vpc_endpoint_policy" in
  let __resource =
    ({ id; policy; vpc_endpoint_id; timeouts }
      : aws_vpc_endpoint_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_endpoint_policy __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       policy = Prop.computed __resource_type __resource_id "policy";
       vpc_endpoint_id =
         Prop.computed __resource_type __resource_id
           "vpc_endpoint_id";
     }
      : t)
  in
  __resource_attributes
