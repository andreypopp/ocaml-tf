(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_vpc_endpoint_policy = {
  id : string prop option; [@option]  (** id *)
  policy : string prop option; [@option]  (** policy *)
  vpc_endpoint_id : string prop;  (** vpc_endpoint_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_vpc_endpoint_policy *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_vpc_endpoint_policy ?id ?policy ?timeouts ~vpc_endpoint_id ()
    : aws_vpc_endpoint_policy =
  { id; policy; vpc_endpoint_id; timeouts }

type t = {
  id : string prop;
  policy : string prop;
  vpc_endpoint_id : string prop;
}

let register ?tf_module ?id ?policy ?timeouts ~vpc_endpoint_id
    __resource_id =
  let __resource_type = "aws_vpc_endpoint_policy" in
  let __resource =
    aws_vpc_endpoint_policy ?id ?policy ?timeouts ~vpc_endpoint_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
