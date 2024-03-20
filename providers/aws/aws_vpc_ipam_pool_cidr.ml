(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cidr_authorization_context = {
  message : string prop option; [@option]
  signature : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cidr_authorization_context) -> ()

let yojson_of_cidr_authorization_context =
  (function
   | { message = v_message; signature = v_signature } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_signature with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "signature", arg in
             bnd :: bnds
       in
       let bnds =
         match v_message with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "message", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cidr_authorization_context -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cidr_authorization_context

[@@@deriving.end]

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

type aws_vpc_ipam_pool_cidr = {
  cidr : string prop option; [@option]
  id : string prop option; [@option]
  ipam_pool_id : string prop;
  netmask_length : float prop option; [@option]
  cidr_authorization_context : cidr_authorization_context list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_vpc_ipam_pool_cidr) -> ()

let yojson_of_aws_vpc_ipam_pool_cidr =
  (function
   | {
       cidr = v_cidr;
       id = v_id;
       ipam_pool_id = v_ipam_pool_id;
       netmask_length = v_netmask_length;
       cidr_authorization_context = v_cidr_authorization_context;
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
           yojson_of_list yojson_of_cidr_authorization_context
             v_cidr_authorization_context
         in
         ("cidr_authorization_context", arg) :: bnds
       in
       let bnds =
         match v_netmask_length with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "netmask_length", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ipam_pool_id in
         ("ipam_pool_id", arg) :: bnds
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
         match v_cidr with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cidr", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_vpc_ipam_pool_cidr -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_vpc_ipam_pool_cidr

[@@@deriving.end]

let cidr_authorization_context ?message ?signature () :
    cidr_authorization_context =
  { message; signature }

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_vpc_ipam_pool_cidr ?cidr ?id ?netmask_length ?timeouts
    ~ipam_pool_id ~cidr_authorization_context () :
    aws_vpc_ipam_pool_cidr =
  {
    cidr;
    id;
    ipam_pool_id;
    netmask_length;
    cidr_authorization_context;
    timeouts;
  }

type t = {
  cidr : string prop;
  id : string prop;
  ipam_pool_cidr_id : string prop;
  ipam_pool_id : string prop;
  netmask_length : float prop;
}

let make ?cidr ?id ?netmask_length ?timeouts ~ipam_pool_id
    ~cidr_authorization_context __id =
  let __type = "aws_vpc_ipam_pool_cidr" in
  let __attrs =
    ({
       cidr = Prop.computed __type __id "cidr";
       id = Prop.computed __type __id "id";
       ipam_pool_cidr_id =
         Prop.computed __type __id "ipam_pool_cidr_id";
       ipam_pool_id = Prop.computed __type __id "ipam_pool_id";
       netmask_length = Prop.computed __type __id "netmask_length";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpc_ipam_pool_cidr
        (aws_vpc_ipam_pool_cidr ?cidr ?id ?netmask_length ?timeouts
           ~ipam_pool_id ~cidr_authorization_context ());
    attrs = __attrs;
  }

let register ?tf_module ?cidr ?id ?netmask_length ?timeouts
    ~ipam_pool_id ~cidr_authorization_context __id =
  let (r : _ Tf_core.resource) =
    make ?cidr ?id ?netmask_length ?timeouts ~ipam_pool_id
      ~cidr_authorization_context __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
