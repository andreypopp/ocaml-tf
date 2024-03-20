(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type client_authentication__sasl__iam = { enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : client_authentication__sasl__iam) -> ()

let yojson_of_client_authentication__sasl__iam =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : client_authentication__sasl__iam ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_client_authentication__sasl__iam

[@@@deriving.end]

type client_authentication__sasl = {
  iam : client_authentication__sasl__iam list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : client_authentication__sasl) -> ()

let yojson_of_client_authentication__sasl =
  (function
   | { iam = v_iam } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_client_authentication__sasl__iam
             v_iam
         in
         ("iam", arg) :: bnds
       in
       `Assoc bnds
    : client_authentication__sasl ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_client_authentication__sasl

[@@@deriving.end]

type client_authentication = {
  sasl : client_authentication__sasl list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : client_authentication) -> ()

let yojson_of_client_authentication =
  (function
   | { sasl = v_sasl } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_client_authentication__sasl
             v_sasl
         in
         ("sasl", arg) :: bnds
       in
       `Assoc bnds
    : client_authentication -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_client_authentication

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

type vpc_config = {
  security_group_ids : string prop list option; [@option]
  subnet_ids : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vpc_config) -> ()

let yojson_of_vpc_config =
  (function
   | {
       security_group_ids = v_security_group_ids;
       subnet_ids = v_subnet_ids;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_subnet_ids
         in
         ("subnet_ids", arg) :: bnds
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
       `Assoc bnds
    : vpc_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpc_config

[@@@deriving.end]

type aws_msk_serverless_cluster = {
  cluster_name : string prop;
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  client_authentication : client_authentication list;
  timeouts : timeouts option;
  vpc_config : vpc_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_msk_serverless_cluster) -> ()

let yojson_of_aws_msk_serverless_cluster =
  (function
   | {
       cluster_name = v_cluster_name;
       id = v_id;
       tags = v_tags;
       tags_all = v_tags_all;
       client_authentication = v_client_authentication;
       timeouts = v_timeouts;
       vpc_config = v_vpc_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_vpc_config v_vpc_config
         in
         ("vpc_config", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_client_authentication
             v_client_authentication
         in
         ("client_authentication", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
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
             let bnd = "tags_all", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_name in
         ("cluster_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_msk_serverless_cluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_msk_serverless_cluster

[@@@deriving.end]

let client_authentication__sasl__iam ~enabled () :
    client_authentication__sasl__iam =
  { enabled }

let client_authentication__sasl ~iam () : client_authentication__sasl
    =
  { iam }

let client_authentication ~sasl () : client_authentication = { sasl }
let timeouts ?create ?delete () : timeouts = { create; delete }

let vpc_config ?security_group_ids ~subnet_ids () : vpc_config =
  { security_group_ids; subnet_ids }

let aws_msk_serverless_cluster ?id ?tags ?tags_all ?timeouts
    ~cluster_name ~client_authentication ~vpc_config () :
    aws_msk_serverless_cluster =
  {
    cluster_name;
    id;
    tags;
    tags_all;
    client_authentication;
    timeouts;
    vpc_config;
  }

type t = {
  arn : string prop;
  cluster_name : string prop;
  cluster_uuid : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ?timeouts ~cluster_name
    ~client_authentication ~vpc_config __id =
  let __type = "aws_msk_serverless_cluster" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       cluster_name = Prop.computed __type __id "cluster_name";
       cluster_uuid = Prop.computed __type __id "cluster_uuid";
       id = Prop.computed __type __id "id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_msk_serverless_cluster
        (aws_msk_serverless_cluster ?id ?tags ?tags_all ?timeouts
           ~cluster_name ~client_authentication ~vpc_config ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ?timeouts ~cluster_name
    ~client_authentication ~vpc_config __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ?timeouts ~cluster_name
      ~client_authentication ~vpc_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
