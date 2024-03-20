(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ingress_vpc_configuration = {
  vpc_endpoint_id : string prop option; [@option]
  vpc_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ingress_vpc_configuration) -> ()

let yojson_of_ingress_vpc_configuration =
  (function
   | { vpc_endpoint_id = v_vpc_endpoint_id; vpc_id = v_vpc_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_vpc_endpoint_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vpc_endpoint_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ingress_vpc_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ingress_vpc_configuration

[@@@deriving.end]

type aws_apprunner_vpc_ingress_connection = {
  id : string prop option; [@option]
  name : string prop;
  service_arn : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  ingress_vpc_configuration : ingress_vpc_configuration list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_apprunner_vpc_ingress_connection) -> ()

let yojson_of_aws_apprunner_vpc_ingress_connection =
  (function
   | {
       id = v_id;
       name = v_name;
       service_arn = v_service_arn;
       tags = v_tags;
       tags_all = v_tags_all;
       ingress_vpc_configuration = v_ingress_vpc_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_ingress_vpc_configuration
             v_ingress_vpc_configuration
         in
         ("ingress_vpc_configuration", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_service_arn in
         ("service_arn", arg) :: bnds
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
    : aws_apprunner_vpc_ingress_connection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_apprunner_vpc_ingress_connection

[@@@deriving.end]

let ingress_vpc_configuration ?vpc_endpoint_id ?vpc_id () :
    ingress_vpc_configuration =
  { vpc_endpoint_id; vpc_id }

let aws_apprunner_vpc_ingress_connection ?id ?tags ?tags_all ~name
    ~service_arn ~ingress_vpc_configuration () :
    aws_apprunner_vpc_ingress_connection =
  {
    id;
    name;
    service_arn;
    tags;
    tags_all;
    ingress_vpc_configuration;
  }

type t = {
  arn : string prop;
  domain_name : string prop;
  id : string prop;
  name : string prop;
  service_arn : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ~name ~service_arn
    ~ingress_vpc_configuration __id =
  let __type = "aws_apprunner_vpc_ingress_connection" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       domain_name = Prop.computed __type __id "domain_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       service_arn = Prop.computed __type __id "service_arn";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_apprunner_vpc_ingress_connection
        (aws_apprunner_vpc_ingress_connection ?id ?tags ?tags_all
           ~name ~service_arn ~ingress_vpc_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~name ~service_arn
    ~ingress_vpc_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~name ~service_arn
      ~ingress_vpc_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
