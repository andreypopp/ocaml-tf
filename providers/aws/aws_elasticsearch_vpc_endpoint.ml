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

type vpc_options = {
  security_group_ids : string prop list option; [@option]
  subnet_ids : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vpc_options) -> ()

let yojson_of_vpc_options =
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
    : vpc_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpc_options

[@@@deriving.end]

type aws_elasticsearch_vpc_endpoint = {
  domain_arn : string prop;
  id : string prop option; [@option]
  timeouts : timeouts option;
  vpc_options : vpc_options list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_elasticsearch_vpc_endpoint) -> ()

let yojson_of_aws_elasticsearch_vpc_endpoint =
  (function
   | {
       domain_arn = v_domain_arn;
       id = v_id;
       timeouts = v_timeouts;
       vpc_options = v_vpc_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_vpc_options v_vpc_options
         in
         ("vpc_options", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_domain_arn in
         ("domain_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_elasticsearch_vpc_endpoint ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_elasticsearch_vpc_endpoint

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let vpc_options ?security_group_ids ~subnet_ids () : vpc_options =
  { security_group_ids; subnet_ids }

let aws_elasticsearch_vpc_endpoint ?id ?timeouts ~domain_arn
    ~vpc_options () : aws_elasticsearch_vpc_endpoint =
  { domain_arn; id; timeouts; vpc_options }

type t = {
  domain_arn : string prop;
  endpoint : string prop;
  id : string prop;
}

let make ?id ?timeouts ~domain_arn ~vpc_options __id =
  let __type = "aws_elasticsearch_vpc_endpoint" in
  let __attrs =
    ({
       domain_arn = Prop.computed __type __id "domain_arn";
       endpoint = Prop.computed __type __id "endpoint";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_elasticsearch_vpc_endpoint
        (aws_elasticsearch_vpc_endpoint ?id ?timeouts ~domain_arn
           ~vpc_options ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~domain_arn ~vpc_options __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~domain_arn ~vpc_options __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
