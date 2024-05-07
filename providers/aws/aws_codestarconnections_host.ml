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

type vpc_configuration = {
  security_group_ids : string prop list;
  subnet_ids : string prop list;
  tls_certificate : string prop option; [@option]
  vpc_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vpc_configuration) -> ()

let yojson_of_vpc_configuration =
  (function
   | {
       security_group_ids = v_security_group_ids;
       subnet_ids = v_subnet_ids;
       tls_certificate = v_tls_certificate;
       vpc_id = v_vpc_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vpc_id in
         ("vpc_id", arg) :: bnds
       in
       let bnds =
         match v_tls_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tls_certificate", arg in
             bnd :: bnds
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
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_security_group_ids
         in
         ("security_group_ids", arg) :: bnds
       in
       `Assoc bnds
    : vpc_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpc_configuration

[@@@deriving.end]

type aws_codestarconnections_host = {
  id : string prop option; [@option]
  name : string prop;
  provider_endpoint : string prop;
  provider_type : string prop;
  timeouts : timeouts option;
  vpc_configuration : vpc_configuration list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_codestarconnections_host) -> ()

let yojson_of_aws_codestarconnections_host =
  (function
   | {
       id = v_id;
       name = v_name;
       provider_endpoint = v_provider_endpoint;
       provider_type = v_provider_type;
       timeouts = v_timeouts;
       vpc_configuration = v_vpc_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_vpc_configuration
             v_vpc_configuration
         in
         ("vpc_configuration", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_provider_type in
         ("provider_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_provider_endpoint
         in
         ("provider_endpoint", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : aws_codestarconnections_host ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_codestarconnections_host

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let vpc_configuration ?tls_certificate ~security_group_ids
    ~subnet_ids ~vpc_id () : vpc_configuration =
  { security_group_ids; subnet_ids; tls_certificate; vpc_id }

let aws_codestarconnections_host ?id ?timeouts
    ?(vpc_configuration = []) ~name ~provider_endpoint ~provider_type
    () : aws_codestarconnections_host =
  {
    id;
    name;
    provider_endpoint;
    provider_type;
    timeouts;
    vpc_configuration;
  }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  name : string prop;
  provider_endpoint : string prop;
  provider_type : string prop;
  status : string prop;
}

let make ?id ?timeouts ?(vpc_configuration = []) ~name
    ~provider_endpoint ~provider_type __id =
  let __type = "aws_codestarconnections_host" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       provider_endpoint =
         Prop.computed __type __id "provider_endpoint";
       provider_type = Prop.computed __type __id "provider_type";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_codestarconnections_host
        (aws_codestarconnections_host ?id ?timeouts
           ~vpc_configuration ~name ~provider_endpoint ~provider_type
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ?(vpc_configuration = []) ~name
    ~provider_endpoint ~provider_type __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~vpc_configuration ~name ~provider_endpoint
      ~provider_type __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
