(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ec2_availability_zone_group = {
  group_name : string prop;  (** group_name *)
  id : string prop option; [@option]  (** id *)
  opt_in_status : string prop;  (** opt_in_status *)
}
[@@deriving yojson_of]
(** aws_ec2_availability_zone_group *)

let aws_ec2_availability_zone_group ?id ~group_name ~opt_in_status ()
    : aws_ec2_availability_zone_group =
  { group_name; id; opt_in_status }

type t = {
  group_name : string prop;
  id : string prop;
  opt_in_status : string prop;
}

let make ?id ~group_name ~opt_in_status __id =
  let __type = "aws_ec2_availability_zone_group" in
  let __attrs =
    ({
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
