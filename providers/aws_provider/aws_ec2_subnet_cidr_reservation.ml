(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_subnet_cidr_reservation = {
  cidr_block : string prop;  (** cidr_block *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  reservation_type : string prop;  (** reservation_type *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** aws_ec2_subnet_cidr_reservation *)

let aws_ec2_subnet_cidr_reservation ?description ?id ~cidr_block
    ~reservation_type ~subnet_id __resource_id =
  let __resource_type = "aws_ec2_subnet_cidr_reservation" in
  let __resource =
    { cidr_block; description; id; reservation_type; subnet_id }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_subnet_cidr_reservation __resource);
  ()
