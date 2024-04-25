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

type aws_vpc_peering_connection_options = {
  id : string prop option; [@option]
  vpc_peering_connection_id : string prop;
  accepter : accepter list;
  requester : requester list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_vpc_peering_connection_options) -> ()

let yojson_of_aws_vpc_peering_connection_options =
  (function
   | {
       id = v_id;
       vpc_peering_connection_id = v_vpc_peering_connection_id;
       accepter = v_accepter;
       requester = v_requester;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_requester v_requester in
         ("requester", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_accepter v_accepter in
         ("accepter", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_vpc_peering_connection_id
         in
         ("vpc_peering_connection_id", arg) :: bnds
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
    : aws_vpc_peering_connection_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_vpc_peering_connection_options

[@@@deriving.end]

let accepter ?allow_remote_vpc_dns_resolution () : accepter =
  { allow_remote_vpc_dns_resolution }

let requester ?allow_remote_vpc_dns_resolution () : requester =
  { allow_remote_vpc_dns_resolution }

let aws_vpc_peering_connection_options ?id ?(accepter = [])
    ?(requester = []) ~vpc_peering_connection_id () :
    aws_vpc_peering_connection_options =
  { id; vpc_peering_connection_id; accepter; requester }

type t = {
  id : string prop;
  vpc_peering_connection_id : string prop;
}

let make ?id ?(accepter = []) ?(requester = [])
    ~vpc_peering_connection_id __id =
  let __type = "aws_vpc_peering_connection_options" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       vpc_peering_connection_id =
         Prop.computed __type __id "vpc_peering_connection_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpc_peering_connection_options
        (aws_vpc_peering_connection_options ?id ~accepter ~requester
           ~vpc_peering_connection_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?(accepter = []) ?(requester = [])
    ~vpc_peering_connection_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~accepter ~requester ~vpc_peering_connection_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
