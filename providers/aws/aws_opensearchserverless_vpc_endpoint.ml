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

type aws_opensearchserverless_vpc_endpoint = {
  name : string prop;
  security_group_ids : string prop list option; [@option]
  subnet_ids : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  vpc_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_opensearchserverless_vpc_endpoint) -> ()

let yojson_of_aws_opensearchserverless_vpc_endpoint =
  (function
   | {
       name = v_name;
       security_group_ids = v_security_group_ids;
       subnet_ids = v_subnet_ids;
       vpc_id = v_vpc_id;
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
         let arg = yojson_of_prop yojson_of_string v_vpc_id in
         ("vpc_id", arg) :: bnds
       in
       let bnds =
         if [] = v_subnet_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_subnet_ids
           in
           let bnd = "subnet_ids", arg in
           bnd :: bnds
       in
       let bnds =
         match v_security_group_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "security_group_ids", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : aws_opensearchserverless_vpc_endpoint ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_opensearchserverless_vpc_endpoint

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_opensearchserverless_vpc_endpoint ?security_group_ids
    ?timeouts ~name ~subnet_ids ~vpc_id () :
    aws_opensearchserverless_vpc_endpoint =
  { name; security_group_ids; subnet_ids; vpc_id; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  name : string prop;
  security_group_ids : string list prop;
  subnet_ids : string list prop;
  vpc_id : string prop;
}

let make ?security_group_ids ?timeouts ~name ~subnet_ids ~vpc_id __id
    =
  let __type = "aws_opensearchserverless_vpc_endpoint" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       security_group_ids =
         Prop.computed __type __id "security_group_ids";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_opensearchserverless_vpc_endpoint
        (aws_opensearchserverless_vpc_endpoint ?security_group_ids
           ?timeouts ~name ~subnet_ids ~vpc_id ());
    attrs = __attrs;
  }

let register ?tf_module ?security_group_ids ?timeouts ~name
    ~subnet_ids ~vpc_id __id =
  let (r : _ Tf_core.resource) =
    make ?security_group_ids ?timeouts ~name ~subnet_ids ~vpc_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
