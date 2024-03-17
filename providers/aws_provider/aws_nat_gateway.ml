(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_nat_gateway__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_nat_gateway__timeouts *)

type aws_nat_gateway = {
  allocation_id : string option; [@option]  (** allocation_id *)
  connectivity_type : string option; [@option]
      (** connectivity_type *)
  secondary_allocation_ids : string list option; [@option]
      (** secondary_allocation_ids *)
  subnet_id : string;  (** subnet_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : aws_nat_gateway__timeouts option;
}
[@@deriving yojson_of]
(** aws_nat_gateway *)

let aws_nat_gateway ?allocation_id ?connectivity_type
    ?secondary_allocation_ids ?tags ?timeouts ~subnet_id
    __resource_id =
  let __resource_type = "aws_nat_gateway" in
  let __resource =
    {
      allocation_id;
      connectivity_type;
      secondary_allocation_ids;
      subnet_id;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_nat_gateway __resource);
  ()
