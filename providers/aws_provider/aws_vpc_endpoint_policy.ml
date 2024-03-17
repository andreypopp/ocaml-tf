(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpc_endpoint_policy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_vpc_endpoint_policy__timeouts *)

type aws_vpc_endpoint_policy = {
  id : string option; [@option]  (** id *)
  policy : string option; [@option]  (** policy *)
  vpc_endpoint_id : string;  (** vpc_endpoint_id *)
  timeouts : aws_vpc_endpoint_policy__timeouts option;
}
[@@deriving yojson_of]
(** aws_vpc_endpoint_policy *)

let aws_vpc_endpoint_policy ?id ?policy ?timeouts ~vpc_endpoint_id
    __resource_id =
  let __resource_type = "aws_vpc_endpoint_policy" in
  let __resource = { id; policy; vpc_endpoint_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_endpoint_policy __resource);
  ()
