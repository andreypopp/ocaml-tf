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

type aws_dx_hosted_private_virtual_interface_accepter = {
  dx_gateway_id : string prop option; [@option]
  id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  virtual_interface_id : string prop;
  vpn_gateway_id : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_dx_hosted_private_virtual_interface_accepter) -> ()

let yojson_of_aws_dx_hosted_private_virtual_interface_accepter =
  (function
   | {
       dx_gateway_id = v_dx_gateway_id;
       id = v_id;
       tags = v_tags;
       tags_all = v_tags_all;
       virtual_interface_id = v_virtual_interface_id;
       vpn_gateway_id = v_vpn_gateway_id;
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
         match v_vpn_gateway_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vpn_gateway_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_virtual_interface_id
         in
         ("virtual_interface_id", arg) :: bnds
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
       let bnds =
         match v_dx_gateway_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dx_gateway_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_dx_hosted_private_virtual_interface_accepter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_dx_hosted_private_virtual_interface_accepter

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_dx_hosted_private_virtual_interface_accepter ?dx_gateway_id
    ?id ?tags ?tags_all ?vpn_gateway_id ?timeouts
    ~virtual_interface_id () :
    aws_dx_hosted_private_virtual_interface_accepter =
  {
    dx_gateway_id;
    id;
    tags;
    tags_all;
    virtual_interface_id;
    vpn_gateway_id;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  dx_gateway_id : string prop;
  id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  virtual_interface_id : string prop;
  vpn_gateway_id : string prop;
}

let make ?dx_gateway_id ?id ?tags ?tags_all ?vpn_gateway_id ?timeouts
    ~virtual_interface_id __id =
  let __type = "aws_dx_hosted_private_virtual_interface_accepter" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       dx_gateway_id = Prop.computed __type __id "dx_gateway_id";
       id = Prop.computed __type __id "id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       virtual_interface_id =
         Prop.computed __type __id "virtual_interface_id";
       vpn_gateway_id = Prop.computed __type __id "vpn_gateway_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dx_hosted_private_virtual_interface_accepter
        (aws_dx_hosted_private_virtual_interface_accepter
           ?dx_gateway_id ?id ?tags ?tags_all ?vpn_gateway_id
           ?timeouts ~virtual_interface_id ());
    attrs = __attrs;
  }

let register ?tf_module ?dx_gateway_id ?id ?tags ?tags_all
    ?vpn_gateway_id ?timeouts ~virtual_interface_id __id =
  let (r : _ Tf_core.resource) =
    make ?dx_gateway_id ?id ?tags ?tags_all ?vpn_gateway_id ?timeouts
      ~virtual_interface_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
