(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ec2_transit_gateway_policy_table = {
  id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  transit_gateway_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ec2_transit_gateway_policy_table) -> ()

let yojson_of_aws_ec2_transit_gateway_policy_table =
  (function
   | {
       id = v_id;
       tags = v_tags;
       tags_all = v_tags_all;
       transit_gateway_id = v_transit_gateway_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_transit_gateway_id
         in
         ("transit_gateway_id", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ec2_transit_gateway_policy_table ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ec2_transit_gateway_policy_table

[@@@deriving.end]

let aws_ec2_transit_gateway_policy_table ?id ?tags ?tags_all
    ~transit_gateway_id () : aws_ec2_transit_gateway_policy_table =
  { id; tags; tags_all; transit_gateway_id }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  state : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  transit_gateway_id : string prop;
}

let make ?id ?tags ?tags_all ~transit_gateway_id __id =
  let __type = "aws_ec2_transit_gateway_policy_table" in
  let __attrs =
    ({
       tf_name = __id;
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
