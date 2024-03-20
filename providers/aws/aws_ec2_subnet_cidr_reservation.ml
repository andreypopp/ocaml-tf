(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?description ?id ~cidr_block ~reservation_type ~subnet_id
    __id =
  let __type = "aws_ec2_subnet_cidr_reservation" in
  let __attrs =
    ({
       cidr_block = Prop.computed __type __id "cidr_block";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       owner_id = Prop.computed __type __id "owner_id";
       reservation_type =
         Prop.computed __type __id "reservation_type";
       subnet_id = Prop.computed __type __id "subnet_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_subnet_cidr_reservation
        (aws_ec2_subnet_cidr_reservation ?description ?id ~cidr_block
           ~reservation_type ~subnet_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ~cidr_block
    ~reservation_type ~subnet_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ~cidr_block ~reservation_type ~subnet_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
