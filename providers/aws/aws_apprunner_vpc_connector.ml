(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_apprunner_vpc_connector = {
  id : string prop option; [@option]
  security_groups : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  subnets : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  vpc_connector_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_apprunner_vpc_connector) -> ()

let yojson_of_aws_apprunner_vpc_connector =
  (function
   | {
       id = v_id;
       security_groups = v_security_groups;
       subnets = v_subnets;
       tags = v_tags;
       tags_all = v_tags_all;
       vpc_connector_name = v_vpc_connector_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_vpc_connector_name
         in
         ("vpc_connector_name", arg) :: bnds
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
         if Stdlib.( = ) [] v_subnets then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_subnets
           in
           let bnd = "subnets", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_security_groups then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_security_groups
           in
           let bnd = "security_groups", arg in
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
       `Assoc bnds
    : aws_apprunner_vpc_connector ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_apprunner_vpc_connector

[@@@deriving.end]

let aws_apprunner_vpc_connector ?id ?tags ?tags_all ~security_groups
    ~subnets ~vpc_connector_name () : aws_apprunner_vpc_connector =
  {
    id;
    security_groups;
    subnets;
    tags;
    tags_all;
    vpc_connector_name;
  }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  security_groups : string list prop;
  status : string prop;
  subnets : string list prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  vpc_connector_name : string prop;
  vpc_connector_revision : float prop;
}

let make ?id ?tags ?tags_all ~security_groups ~subnets
    ~vpc_connector_name __id =
  let __type = "aws_apprunner_vpc_connector" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       security_groups = Prop.computed __type __id "security_groups";
       status = Prop.computed __type __id "status";
       subnets = Prop.computed __type __id "subnets";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vpc_connector_name =
         Prop.computed __type __id "vpc_connector_name";
       vpc_connector_revision =
         Prop.computed __type __id "vpc_connector_revision";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_apprunner_vpc_connector
        (aws_apprunner_vpc_connector ?id ?tags ?tags_all
           ~security_groups ~subnets ~vpc_connector_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~security_groups ~subnets
    ~vpc_connector_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~security_groups ~subnets
      ~vpc_connector_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
