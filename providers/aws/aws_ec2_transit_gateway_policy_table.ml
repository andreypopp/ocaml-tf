(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ec2_transit_gateway_policy_table = {
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  transit_gateway_id : string prop;  (** transit_gateway_id *)
}
[@@deriving yojson_of]
(** aws_ec2_transit_gateway_policy_table *)

let aws_ec2_transit_gateway_policy_table ?id ?tags ?tags_all
    ~transit_gateway_id () : aws_ec2_transit_gateway_policy_table =
  { id; tags; tags_all; transit_gateway_id }

type t = {
  arn : string prop;
  id : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  transit_gateway_id : string prop;
}

let make ?id ?tags ?tags_all ~transit_gateway_id __id =
  let __type = "aws_ec2_transit_gateway_policy_table" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       state = Prop.computed __type __id "state";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       transit_gateway_id =
         Prop.computed __type __id "transit_gateway_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_transit_gateway_policy_table
        (aws_ec2_transit_gateway_policy_table ?id ?tags ?tags_all
           ~transit_gateway_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~transit_gateway_id __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~transit_gateway_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
