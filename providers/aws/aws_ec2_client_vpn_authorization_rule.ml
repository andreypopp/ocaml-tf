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

type aws_ec2_client_vpn_authorization_rule = {
  access_group_id : string prop option; [@option]
  authorize_all_groups : bool prop option; [@option]
  client_vpn_endpoint_id : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  target_network_cidr : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ec2_client_vpn_authorization_rule) -> ()

let yojson_of_aws_ec2_client_vpn_authorization_rule =
  (function
   | {
       access_group_id = v_access_group_id;
       authorize_all_groups = v_authorize_all_groups;
       client_vpn_endpoint_id = v_client_vpn_endpoint_id;
       description = v_description;
       id = v_id;
       target_network_cidr = v_target_network_cidr;
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
           yojson_of_prop yojson_of_string v_target_network_cidr
         in
         ("target_network_cidr", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_client_vpn_endpoint_id
         in
         ("client_vpn_endpoint_id", arg) :: bnds
       in
       let bnds =
         match v_authorize_all_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "authorize_all_groups", arg in
             bnd :: bnds
       in
       let bnds =
         match v_access_group_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_group_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ec2_client_vpn_authorization_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ec2_client_vpn_authorization_rule

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_ec2_client_vpn_authorization_rule ?access_group_id
    ?authorize_all_groups ?description ?id ?timeouts
    ~client_vpn_endpoint_id ~target_network_cidr () :
    aws_ec2_client_vpn_authorization_rule =
  {
    access_group_id;
    authorize_all_groups;
    client_vpn_endpoint_id;
    description;
    id;
    target_network_cidr;
    timeouts;
  }

type t = {
  access_group_id : string prop;
  authorize_all_groups : bool prop;
  client_vpn_endpoint_id : string prop;
  description : string prop;
  id : string prop;
  target_network_cidr : string prop;
}

let make ?access_group_id ?authorize_all_groups ?description ?id
    ?timeouts ~client_vpn_endpoint_id ~target_network_cidr __id =
  let __type = "aws_ec2_client_vpn_authorization_rule" in
  let __attrs =
    ({
       access_group_id = Prop.computed __type __id "access_group_id";
       authorize_all_groups =
         Prop.computed __type __id "authorize_all_groups";
       client_vpn_endpoint_id =
         Prop.computed __type __id "client_vpn_endpoint_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       target_network_cidr =
         Prop.computed __type __id "target_network_cidr";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_client_vpn_authorization_rule
        (aws_ec2_client_vpn_authorization_rule ?access_group_id
           ?authorize_all_groups ?description ?id ?timeouts
           ~client_vpn_endpoint_id ~target_network_cidr ());
    attrs = __attrs;
  }

let register ?tf_module ?access_group_id ?authorize_all_groups
    ?description ?id ?timeouts ~client_vpn_endpoint_id
    ~target_network_cidr __id =
  let (r : _ Tf_core.resource) =
    make ?access_group_id ?authorize_all_groups ?description ?id
      ?timeouts ~client_vpn_endpoint_id ~target_network_cidr __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
