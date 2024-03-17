(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_ec2_carrier_gateway = {
  tags : (string * string) list option; [@option]  (** tags *)
  vpc_id : string;  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_ec2_carrier_gateway *)

let aws_ec2_carrier_gateway ?tags ~vpc_id __resource_id =
  let __resource_type = "aws_ec2_carrier_gateway" in
  let __resource = { tags; vpc_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_carrier_gateway __resource);
  ()
