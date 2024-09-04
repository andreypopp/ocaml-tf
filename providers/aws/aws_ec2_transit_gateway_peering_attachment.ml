(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type options = { dynamic_routing : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : options) -> ()

let yojson_of_options =
  (function
   | { dynamic_routing = v_dynamic_routing } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_dynamic_routing with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dynamic_routing", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_options

[@@@deriving.end]

type aws_ec2_transit_gateway_peering_attachment = {
  id : string prop option; [@option]
  peer_account_id : string prop option; [@option]
  peer_region : string prop;
  peer_transit_gateway_id : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  transit_gateway_id : string prop;
  options : options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ec2_transit_gateway_peering_attachment) -> ()

let yojson_of_aws_ec2_transit_gateway_peering_attachment =
  (function
   | {
       id = v_id;
       peer_account_id = v_peer_account_id;
       peer_region = v_peer_region;
       peer_transit_gateway_id = v_peer_transit_gateway_id;
       tags = v_tags;
       tags_all = v_tags_all;
       transit_gateway_id = v_transit_gateway_id;
       options = v_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_options then bnds
         else
           let arg = (yojson_of_list yojson_of_options) v_options in
           let bnd = "options", arg in
           bnd :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_peer_transit_gateway_id
         in
         ("peer_transit_gateway_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_peer_region in
         ("peer_region", arg) :: bnds
       in
       let bnds =
         match v_peer_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "peer_account_id", arg in
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
    : aws_ec2_transit_gateway_peering_attachment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ec2_transit_gateway_peering_attachment

[@@@deriving.end]

let options ?dynamic_routing () : options = { dynamic_routing }

let aws_ec2_transit_gateway_peering_attachment ?id ?peer_account_id
    ?tags ?tags_all ?(options = []) ~peer_region
    ~peer_transit_gateway_id ~transit_gateway_id () :
    aws_ec2_transit_gateway_peering_attachment =
  {
    id;
    peer_account_id;
    peer_region;
    peer_transit_gateway_id;
    tags;
    tags_all;
    transit_gateway_id;
    options;
  }

type t = {
  tf_name : string;
  id : string prop;
  peer_account_id : string prop;
  peer_region : string prop;
  peer_transit_gateway_id : string prop;
  state : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  transit_gateway_id : string prop;
}

let make ?id ?peer_account_id ?tags ?tags_all ?(options = [])
    ~peer_region ~peer_transit_gateway_id ~transit_gateway_id __id =
  let __type = "aws_ec2_transit_gateway_peering_attachment" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       peer_account_id = Prop.computed __type __id "peer_account_id";
       peer_region = Prop.computed __type __id "peer_region";
       peer_transit_gateway_id =
         Prop.computed __type __id "peer_transit_gateway_id";
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
      yojson_of_aws_ec2_transit_gateway_peering_attachment
        (aws_ec2_transit_gateway_peering_attachment ?id
           ?peer_account_id ?tags ?tags_all ~options ~peer_region
           ~peer_transit_gateway_id ~transit_gateway_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?peer_account_id ?tags ?tags_all
    ?(options = []) ~peer_region ~peer_transit_gateway_id
    ~transit_gateway_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?peer_account_id ?tags ?tags_all ~options ~peer_region
      ~peer_transit_gateway_id ~transit_gateway_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
