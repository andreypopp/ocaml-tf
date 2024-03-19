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
    ~reservation_type ~subnet_id () : aws_ec2_subnet_cidr_reservation
    =
  { cidr_block; description; id; reservation_type; subnet_id }

type t = {
  cidr_block : string prop;
  description : string prop;
  id : string prop;
  owner_id : string prop;
  reservation_type : string prop;
  subnet_id : string prop;
}

let register ?tf_module ?description ?id ~cidr_block
    ~reservation_type ~subnet_id __resource_id =
  let __resource_type = "aws_ec2_subnet_cidr_reservation" in
  let __resource =
    aws_ec2_subnet_cidr_reservation ?description ?id ~cidr_block
      ~reservation_type ~subnet_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_subnet_cidr_reservation __resource);
  let __resource_attributes =
    ({
       cidr_block =
         Prop.computed __resource_type __resource_id "cidr_block";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       owner_id =
         Prop.computed __resource_type __resource_id "owner_id";
       reservation_type =
         Prop.computed __resource_type __resource_id
           "reservation_type";
       subnet_id =
         Prop.computed __resource_type __resource_id "subnet_id";
     }
      : t)
  in
  __resource_attributes
