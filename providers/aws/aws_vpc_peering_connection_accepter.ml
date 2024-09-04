(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type accepter = {
  allow_remote_vpc_dns_resolution : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : accepter) -> ()

let yojson_of_accepter =
  (function
   | {
       allow_remote_vpc_dns_resolution =
         v_allow_remote_vpc_dns_resolution;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_allow_remote_vpc_dns_resolution with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_remote_vpc_dns_resolution", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : accepter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_accepter

[@@@deriving.end]

type requester = {
  allow_remote_vpc_dns_resolution : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : requester) -> ()

let yojson_of_requester =
  (function
   | {
       allow_remote_vpc_dns_resolution =
         v_allow_remote_vpc_dns_resolution;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_allow_remote_vpc_dns_resolution with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_remote_vpc_dns_resolution", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : requester -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_requester

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; update = v_update } ->
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

type aws_vpc_peering_connection_accepter = {
  auto_accept : bool prop option; [@option]
  id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  vpc_peering_connection_id : string prop;
  accepter : accepter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  requester : requester list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_vpc_peering_connection_accepter) -> ()

let yojson_of_aws_vpc_peering_connection_accepter =
  (function
   | {
       auto_accept = v_auto_accept;
       id = v_id;
       tags = v_tags;
       tags_all = v_tags_all;
       vpc_peering_connection_id = v_vpc_peering_connection_id;
       accepter = v_accepter;
       requester = v_requester;
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
         if Stdlib.( = ) [] v_requester then bnds
         else
           let arg =
             (yojson_of_list yojson_of_requester) v_requester
           in
           let bnd = "requester", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_accepter then bnds
         else
           let arg =
             (yojson_of_list yojson_of_accepter) v_accepter
           in
           let bnd = "accepter", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_vpc_peering_connection_id
         in
         ("vpc_peering_connection_id", arg) :: bnds
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
         match v_auto_accept with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_accept", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_vpc_peering_connection_accepter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_vpc_peering_connection_accepter

[@@@deriving.end]

let accepter ?allow_remote_vpc_dns_resolution () : accepter =
  { allow_remote_vpc_dns_resolution }

let requester ?allow_remote_vpc_dns_resolution () : requester =
  { allow_remote_vpc_dns_resolution }

let timeouts ?create ?update () : timeouts = { create; update }

let aws_vpc_peering_connection_accepter ?auto_accept ?id ?tags
    ?tags_all ?(accepter = []) ?(requester = []) ?timeouts
    ~vpc_peering_connection_id () :
    aws_vpc_peering_connection_accepter =
  {
    auto_accept;
    id;
    tags;
    tags_all;
    vpc_peering_connection_id;
    accepter;
    requester;
    timeouts;
  }

type t = {
  tf_name : string;
  accept_status : string prop;
  auto_accept : bool prop;
  id : string prop;
  peer_owner_id : string prop;
  peer_region : string prop;
  peer_vpc_id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  vpc_id : string prop;
  vpc_peering_connection_id : string prop;
}

let make ?auto_accept ?id ?tags ?tags_all ?(accepter = [])
    ?(requester = []) ?timeouts ~vpc_peering_connection_id __id =
  let __type = "aws_vpc_peering_connection_accepter" in
  let __attrs =
    ({
       tf_name = __id;
       accept_status = Prop.computed __type __id "accept_status";
       auto_accept = Prop.computed __type __id "auto_accept";
       id = Prop.computed __type __id "id";
       peer_owner_id = Prop.computed __type __id "peer_owner_id";
       peer_region = Prop.computed __type __id "peer_region";
       peer_vpc_id = Prop.computed __type __id "peer_vpc_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vpc_id = Prop.computed __type __id "vpc_id";
       vpc_peering_connection_id =
         Prop.computed __type __id "vpc_peering_connection_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpc_peering_connection_accepter
        (aws_vpc_peering_connection_accepter ?auto_accept ?id ?tags
           ?tags_all ~accepter ~requester ?timeouts
           ~vpc_peering_connection_id ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_accept ?id ?tags ?tags_all
    ?(accepter = []) ?(requester = []) ?timeouts
    ~vpc_peering_connection_id __id =
  let (r : _ Tf_core.resource) =
    make ?auto_accept ?id ?tags ?tags_all ~accepter ~requester
      ?timeouts ~vpc_peering_connection_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
