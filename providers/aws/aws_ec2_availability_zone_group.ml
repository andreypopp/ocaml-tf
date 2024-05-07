(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ec2_availability_zone_group = {
  group_name : string prop;
  id : string prop option; [@option]
  opt_in_status : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ec2_availability_zone_group) -> ()

let yojson_of_aws_ec2_availability_zone_group =
  (function
   | {
       group_name = v_group_name;
       id = v_id;
       opt_in_status = v_opt_in_status;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_opt_in_status in
         ("opt_in_status", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_group_name in
         ("group_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_ec2_availability_zone_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ec2_availability_zone_group

[@@@deriving.end]

let aws_ec2_availability_zone_group ?id ~group_name ~opt_in_status ()
    : aws_ec2_availability_zone_group =
  { group_name; id; opt_in_status }

type t = {
  tf_name : string;
  group_name : string prop;
  id : string prop;
  opt_in_status : string prop;
}

let make ?id ~group_name ~opt_in_status __id =
  let __type = "aws_ec2_availability_zone_group" in
  let __attrs =
    ({
       tf_name = __id;
       group_name = Prop.computed __type __id "group_name";
       id = Prop.computed __type __id "id";
       opt_in_status = Prop.computed __type __id "opt_in_status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_availability_zone_group
        (aws_ec2_availability_zone_group ?id ~group_name
           ~opt_in_status ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~group_name ~opt_in_status __id =
  let (r : _ Tf_core.resource) =
    make ?id ~group_name ~opt_in_status __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
