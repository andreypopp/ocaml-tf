(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type destination_port_range = {
  from_port : float prop option; [@option]
  to_port : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destination_port_range) -> ()

let yojson_of_destination_port_range =
  (function
   | { from_port = v_from_port; to_port = v_to_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_to_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "to_port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_from_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "from_port", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : destination_port_range -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destination_port_range

[@@@deriving.end]

type source_port_range = {
  from_port : float prop option; [@option]
  to_port : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source_port_range) -> ()

let yojson_of_source_port_range =
  (function
   | { from_port = v_from_port; to_port = v_to_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_to_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "to_port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_from_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "from_port", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source_port_range -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source_port_range

[@@@deriving.end]

type aws_ec2_traffic_mirror_filter_rule = {
  description : string prop option; [@option]
  destination_cidr_block : string prop;
  id : string prop option; [@option]
  protocol : float prop option; [@option]
  rule_action : string prop;
  rule_number : float prop;
  source_cidr_block : string prop;
  traffic_direction : string prop;
  traffic_mirror_filter_id : string prop;
  destination_port_range : destination_port_range list;
  source_port_range : source_port_range list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ec2_traffic_mirror_filter_rule) -> ()

let yojson_of_aws_ec2_traffic_mirror_filter_rule =
  (function
   | {
       description = v_description;
       destination_cidr_block = v_destination_cidr_block;
       id = v_id;
       protocol = v_protocol;
       rule_action = v_rule_action;
       rule_number = v_rule_number;
       source_cidr_block = v_source_cidr_block;
       traffic_direction = v_traffic_direction;
       traffic_mirror_filter_id = v_traffic_mirror_filter_id;
       destination_port_range = v_destination_port_range;
       source_port_range = v_source_port_range;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_source_port_range
             v_source_port_range
         in
         ("source_port_range", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_destination_port_range
             v_destination_port_range
         in
         ("destination_port_range", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_traffic_mirror_filter_id
         in
         ("traffic_mirror_filter_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_traffic_direction
         in
         ("traffic_direction", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_source_cidr_block
         in
         ("source_cidr_block", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_rule_number in
         ("rule_number", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rule_action in
         ("rule_action", arg) :: bnds
       in
       let bnds =
         match v_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "protocol", arg in
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
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_destination_cidr_block
         in
         ("destination_cidr_block", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ec2_traffic_mirror_filter_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ec2_traffic_mirror_filter_rule

[@@@deriving.end]

let destination_port_range ?from_port ?to_port () :
    destination_port_range =
  { from_port; to_port }

let source_port_range ?from_port ?to_port () : source_port_range =
  { from_port; to_port }

let aws_ec2_traffic_mirror_filter_rule ?description ?id ?protocol
    ~destination_cidr_block ~rule_action ~rule_number
    ~source_cidr_block ~traffic_direction ~traffic_mirror_filter_id
    ~destination_port_range ~source_port_range () :
    aws_ec2_traffic_mirror_filter_rule =
  {
    description;
    destination_cidr_block;
    id;
    protocol;
    rule_action;
    rule_number;
    source_cidr_block;
    traffic_direction;
    traffic_mirror_filter_id;
    destination_port_range;
    source_port_range;
  }

type t = {
  arn : string prop;
  description : string prop;
  destination_cidr_block : string prop;
  id : string prop;
  protocol : float prop;
  rule_action : string prop;
  rule_number : float prop;
  source_cidr_block : string prop;
  traffic_direction : string prop;
  traffic_mirror_filter_id : string prop;
}

let make ?description ?id ?protocol ~destination_cidr_block
    ~rule_action ~rule_number ~source_cidr_block ~traffic_direction
    ~traffic_mirror_filter_id ~destination_port_range
    ~source_port_range __id =
  let __type = "aws_ec2_traffic_mirror_filter_rule" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       destination_cidr_block =
         Prop.computed __type __id "destination_cidr_block";
       id = Prop.computed __type __id "id";
       protocol = Prop.computed __type __id "protocol";
       rule_action = Prop.computed __type __id "rule_action";
       rule_number = Prop.computed __type __id "rule_number";
       source_cidr_block =
         Prop.computed __type __id "source_cidr_block";
       traffic_direction =
         Prop.computed __type __id "traffic_direction";
       traffic_mirror_filter_id =
         Prop.computed __type __id "traffic_mirror_filter_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_traffic_mirror_filter_rule
        (aws_ec2_traffic_mirror_filter_rule ?description ?id
           ?protocol ~destination_cidr_block ~rule_action
           ~rule_number ~source_cidr_block ~traffic_direction
           ~traffic_mirror_filter_id ~destination_port_range
           ~source_port_range ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?protocol
    ~destination_cidr_block ~rule_action ~rule_number
    ~source_cidr_block ~traffic_direction ~traffic_mirror_filter_id
    ~destination_port_range ~source_port_range __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?protocol ~destination_cidr_block
      ~rule_action ~rule_number ~source_cidr_block ~traffic_direction
      ~traffic_mirror_filter_id ~destination_port_range
      ~source_port_range __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
