(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_ec2_transit_gateway_multicast_domain_association = {
  id : string prop option; [@option]
  subnet_id : string prop;
  transit_gateway_attachment_id : string prop;
  transit_gateway_multicast_domain_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_ec2_transit_gateway_multicast_domain_association) -> ()

let yojson_of_aws_ec2_transit_gateway_multicast_domain_association =
  (function
   | {
       id = v_id;
       subnet_id = v_subnet_id;
       transit_gateway_attachment_id =
         v_transit_gateway_attachment_id;
       transit_gateway_multicast_domain_id =
         v_transit_gateway_multicast_domain_id;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_transit_gateway_multicast_domain_id
         in
         ("transit_gateway_multicast_domain_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_transit_gateway_attachment_id
         in
         ("transit_gateway_attachment_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
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
    : aws_ec2_transit_gateway_multicast_domain_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_aws_ec2_transit_gateway_multicast_domain_association

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_ec2_transit_gateway_multicast_domain_association ?id
    ?timeouts ~subnet_id ~transit_gateway_attachment_id
    ~transit_gateway_multicast_domain_id () :
    aws_ec2_transit_gateway_multicast_domain_association =
  {
    id;
    subnet_id;
    transit_gateway_attachment_id;
    transit_gateway_multicast_domain_id;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  subnet_id : string prop;
  transit_gateway_attachment_id : string prop;
  transit_gateway_multicast_domain_id : string prop;
}

let make ?id ?timeouts ~subnet_id ~transit_gateway_attachment_id
    ~transit_gateway_multicast_domain_id __id =
  let __type =
    "aws_ec2_transit_gateway_multicast_domain_association"
  in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       subnet_id = Prop.computed __type __id "subnet_id";
       transit_gateway_attachment_id =
         Prop.computed __type __id "transit_gateway_attachment_id";
       transit_gateway_multicast_domain_id =
         Prop.computed __type __id
           "transit_gateway_multicast_domain_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_transit_gateway_multicast_domain_association
        (aws_ec2_transit_gateway_multicast_domain_association ?id
           ?timeouts ~subnet_id ~transit_gateway_attachment_id
           ~transit_gateway_multicast_domain_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~subnet_id
    ~transit_gateway_attachment_id
    ~transit_gateway_multicast_domain_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~subnet_id ~transit_gateway_attachment_id
      ~transit_gateway_multicast_domain_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
