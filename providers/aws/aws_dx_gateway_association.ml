(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
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

type aws_dx_gateway_association = {
  allowed_prefixes : string prop list option; [@option]
  associated_gateway_id : string prop option; [@option]
  associated_gateway_owner_account_id : string prop option; [@option]
  dx_gateway_id : string prop;
  id : string prop option; [@option]
  proposal_id : string prop option; [@option]
  vpn_gateway_id : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_dx_gateway_association) -> ()

let yojson_of_aws_dx_gateway_association =
  (function
   | {
       allowed_prefixes = v_allowed_prefixes;
       associated_gateway_id = v_associated_gateway_id;
       associated_gateway_owner_account_id =
         v_associated_gateway_owner_account_id;
       dx_gateway_id = v_dx_gateway_id;
       id = v_id;
       proposal_id = v_proposal_id;
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
         match v_proposal_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "proposal_id", arg in
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
         let arg = yojson_of_prop yojson_of_string v_dx_gateway_id in
         ("dx_gateway_id", arg) :: bnds
       in
       let bnds =
         match v_associated_gateway_owner_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "associated_gateway_owner_account_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_associated_gateway_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "associated_gateway_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_prefixes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_prefixes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_dx_gateway_association -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_dx_gateway_association

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_dx_gateway_association ?allowed_prefixes
    ?associated_gateway_id ?associated_gateway_owner_account_id ?id
    ?proposal_id ?vpn_gateway_id ?timeouts ~dx_gateway_id () :
    aws_dx_gateway_association =
  {
    allowed_prefixes;
    associated_gateway_id;
    associated_gateway_owner_account_id;
    dx_gateway_id;
    id;
    proposal_id;
    vpn_gateway_id;
    timeouts;
  }

type t = {
  tf_name : string;
  allowed_prefixes : string list prop;
  associated_gateway_id : string prop;
  associated_gateway_owner_account_id : string prop;
  associated_gateway_type : string prop;
  dx_gateway_association_id : string prop;
  dx_gateway_id : string prop;
  dx_gateway_owner_account_id : string prop;
  id : string prop;
  proposal_id : string prop;
  vpn_gateway_id : string prop;
}

let make ?allowed_prefixes ?associated_gateway_id
    ?associated_gateway_owner_account_id ?id ?proposal_id
    ?vpn_gateway_id ?timeouts ~dx_gateway_id __id =
  let __type = "aws_dx_gateway_association" in
  let __attrs =
    ({
       tf_name = __id;
       allowed_prefixes =
         Prop.computed __type __id "allowed_prefixes";
       associated_gateway_id =
         Prop.computed __type __id "associated_gateway_id";
       associated_gateway_owner_account_id =
         Prop.computed __type __id
           "associated_gateway_owner_account_id";
       associated_gateway_type =
         Prop.computed __type __id "associated_gateway_type";
       dx_gateway_association_id =
         Prop.computed __type __id "dx_gateway_association_id";
       dx_gateway_id = Prop.computed __type __id "dx_gateway_id";
       dx_gateway_owner_account_id =
         Prop.computed __type __id "dx_gateway_owner_account_id";
       id = Prop.computed __type __id "id";
       proposal_id = Prop.computed __type __id "proposal_id";
       vpn_gateway_id = Prop.computed __type __id "vpn_gateway_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dx_gateway_association
        (aws_dx_gateway_association ?allowed_prefixes
           ?associated_gateway_id
           ?associated_gateway_owner_account_id ?id ?proposal_id
           ?vpn_gateway_id ?timeouts ~dx_gateway_id ());
    attrs = __attrs;
  }

let register ?tf_module ?allowed_prefixes ?associated_gateway_id
    ?associated_gateway_owner_account_id ?id ?proposal_id
    ?vpn_gateway_id ?timeouts ~dx_gateway_id __id =
  let (r : _ Tf_core.resource) =
    make ?allowed_prefixes ?associated_gateway_id
      ?associated_gateway_owner_account_id ?id ?proposal_id
      ?vpn_gateway_id ?timeouts ~dx_gateway_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
