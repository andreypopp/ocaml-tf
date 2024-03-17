(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_egress_only_internet_gateway = {
  tags : (string * string) list option; [@option]  (** tags *)
  vpc_id : string;  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_egress_only_internet_gateway *)

let aws_egress_only_internet_gateway ?tags ~vpc_id __resource_id =
  let __resource_type = "aws_egress_only_internet_gateway" in
  let __resource = { tags; vpc_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_egress_only_internet_gateway __resource);
  ()
