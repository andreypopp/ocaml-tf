(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ec2_subnet_cidr_reservation = {
  cidr_block : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  reservation_type : string prop;
  subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ec2_subnet_cidr_reservation) -> ()

let yojson_of_aws_ec2_subnet_cidr_reservation =
  (function
   | {
       cidr_block = v_cidr_block;
       description = v_description;
       id = v_id;
       reservation_type = v_reservation_type;
       subnet_id = v_subnet_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_reservation_type
         in
         ("reservation_type", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cidr_block in
         ("cidr_block", arg) :: bnds
       in
       `Assoc bnds
    : aws_ec2_subnet_cidr_reservation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ec2_subnet_cidr_reservation

[@@@deriving.end]

let aws_ec2_subnet_cidr_reservation ?description ?id ~cidr_block
    ~reservation_type ~subnet_id () : aws_ec2_subnet_cidr_reservation
    =
  { cidr_block; description; id; reservation_type; subnet_id }

type t = {
  tf_name : string;
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
       tf_name = __id;
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
