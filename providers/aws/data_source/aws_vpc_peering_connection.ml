(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = { name : string prop; values : string prop list }
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
  (function
   | { name = v_name; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter

[@@@deriving.end]

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type cidr_block_set = { cidr_block : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : cidr_block_set) -> ()

let yojson_of_cidr_block_set =
  (function
   | { cidr_block = v_cidr_block } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cidr_block in
         ("cidr_block", arg) :: bnds
       in
       `Assoc bnds
    : cidr_block_set -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cidr_block_set

[@@@deriving.end]

type peer_cidr_block_set = { cidr_block : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : peer_cidr_block_set) -> ()

let yojson_of_peer_cidr_block_set =
  (function
   | { cidr_block = v_cidr_block } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cidr_block in
         ("cidr_block", arg) :: bnds
       in
       `Assoc bnds
    : peer_cidr_block_set -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_peer_cidr_block_set

[@@@deriving.end]

type aws_vpc_peering_connection = {
  cidr_block : string prop option; [@option]
  id : string prop option; [@option]
  owner_id : string prop option; [@option]
  peer_cidr_block : string prop option; [@option]
  peer_owner_id : string prop option; [@option]
  peer_region : string prop option; [@option]
  peer_vpc_id : string prop option; [@option]
  region : string prop option; [@option]
  status : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  vpc_id : string prop option; [@option]
  filter : filter list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_vpc_peering_connection) -> ()

let yojson_of_aws_vpc_peering_connection =
  (function
   | {
       cidr_block = v_cidr_block;
       id = v_id;
       owner_id = v_owner_id;
       peer_cidr_block = v_peer_cidr_block;
       peer_owner_id = v_peer_owner_id;
       peer_region = v_peer_region;
       peer_vpc_id = v_peer_vpc_id;
       region = v_region;
       status = v_status;
       tags = v_tags;
       vpc_id = v_vpc_id;
       filter = v_filter;
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
         let arg = yojson_of_list yojson_of_filter v_filter in
         ("filter", arg) :: bnds
       in
       let bnds =
         match v_vpc_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vpc_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
             bnd :: bnds
       in
       let bnds =
         match v_peer_vpc_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "peer_vpc_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_peer_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "peer_region", arg in
             bnd :: bnds
       in
       let bnds =
         match v_peer_owner_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "peer_owner_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_peer_cidr_block with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "peer_cidr_block", arg in
             bnd :: bnds
       in
       let bnds =
         match v_owner_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "owner_id", arg in
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
         match v_cidr_block with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cidr_block", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_vpc_peering_connection -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_vpc_peering_connection

[@@@deriving.end]

let filter ~name ~values () : filter = { name; values }
let timeouts ?read () : timeouts = { read }

let aws_vpc_peering_connection ?cidr_block ?id ?owner_id
    ?peer_cidr_block ?peer_owner_id ?peer_region ?peer_vpc_id ?region
    ?status ?tags ?vpc_id ?timeouts ~filter () :
    aws_vpc_peering_connection =
  {
    cidr_block;
    id;
    owner_id;
    peer_cidr_block;
    peer_owner_id;
    peer_region;
    peer_vpc_id;
    region;
    status;
    tags;
    vpc_id;
    filter;
    timeouts;
  }

type t = {
  accepter : (string * bool) list prop;
  cidr_block : string prop;
  cidr_block_set : cidr_block_set list prop;
  id : string prop;
  owner_id : string prop;
  peer_cidr_block : string prop;
  peer_cidr_block_set : peer_cidr_block_set list prop;
  peer_owner_id : string prop;
  peer_region : string prop;
  peer_vpc_id : string prop;
  region : string prop;
  requester : (string * bool) list prop;
  status : string prop;
  tags : (string * string) list prop;
  vpc_id : string prop;
}

let make ?cidr_block ?id ?owner_id ?peer_cidr_block ?peer_owner_id
    ?peer_region ?peer_vpc_id ?region ?status ?tags ?vpc_id ?timeouts
    ~filter __id =
  let __type = "aws_vpc_peering_connection" in
  let __attrs =
    ({
       accepter = Prop.computed __type __id "accepter";
       cidr_block = Prop.computed __type __id "cidr_block";
       cidr_block_set = Prop.computed __type __id "cidr_block_set";
       id = Prop.computed __type __id "id";
       owner_id = Prop.computed __type __id "owner_id";
       peer_cidr_block = Prop.computed __type __id "peer_cidr_block";
       peer_cidr_block_set =
         Prop.computed __type __id "peer_cidr_block_set";
       peer_owner_id = Prop.computed __type __id "peer_owner_id";
       peer_region = Prop.computed __type __id "peer_region";
       peer_vpc_id = Prop.computed __type __id "peer_vpc_id";
       region = Prop.computed __type __id "region";
       requester = Prop.computed __type __id "requester";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpc_peering_connection
        (aws_vpc_peering_connection ?cidr_block ?id ?owner_id
           ?peer_cidr_block ?peer_owner_id ?peer_region ?peer_vpc_id
           ?region ?status ?tags ?vpc_id ?timeouts ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?cidr_block ?id ?owner_id ?peer_cidr_block
    ?peer_owner_id ?peer_region ?peer_vpc_id ?region ?status ?tags
    ?vpc_id ?timeouts ~filter __id =
  let (r : _ Tf_core.resource) =
    make ?cidr_block ?id ?owner_id ?peer_cidr_block ?peer_owner_id
      ?peer_region ?peer_vpc_id ?region ?status ?tags ?vpc_id
      ?timeouts ~filter __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
