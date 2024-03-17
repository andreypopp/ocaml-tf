(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpc_endpoint_subnet_association__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_vpc_endpoint_subnet_association__timeouts *)

type aws_vpc_endpoint_subnet_association = {
  subnet_id : string;  (** subnet_id *)
  vpc_endpoint_id : string;  (** vpc_endpoint_id *)
  timeouts : aws_vpc_endpoint_subnet_association__timeouts option;
}
[@@deriving yojson_of]
(** aws_vpc_endpoint_subnet_association *)

let aws_vpc_endpoint_subnet_association ?timeouts ~subnet_id
    ~vpc_endpoint_id __resource_id =
  let __resource_type = "aws_vpc_endpoint_subnet_association" in
  let __resource = { subnet_id; vpc_endpoint_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_endpoint_subnet_association __resource);
  ()
