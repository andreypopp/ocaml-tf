(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vpc = {
  vpc_id : string prop;
  vpc_region : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vpc) -> ()

let yojson_of_vpc =
  (function
   | { vpc_id = v_vpc_id; vpc_region = v_vpc_region } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_vpc_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vpc_region", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vpc_id in
         ("vpc_id", arg) :: bnds
       in
       `Assoc bnds
    : vpc -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpc

[@@@deriving.end]

type aws_route53_zone = {
  comment : string prop option; [@option]
  delegation_set_id : string prop option; [@option]
  force_destroy : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  vpc : vpc list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_route53_zone) -> ()

let yojson_of_aws_route53_zone =
  (function
   | {
       comment = v_comment;
       delegation_set_id = v_delegation_set_id;
       force_destroy = v_force_destroy;
       id = v_id;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       vpc = v_vpc;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_vpc v_vpc in
         ("vpc", arg) :: bnds
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
       let bnds =
         match v_force_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_destroy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delegation_set_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delegation_set_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_comment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "comment", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_route53_zone -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_route53_zone

[@@@deriving.end]

let vpc ?vpc_region ~vpc_id () : vpc = { vpc_id; vpc_region }

let aws_route53_zone ?comment ?delegation_set_id ?force_destroy ?id
    ?tags ?tags_all ~name ~vpc () : aws_route53_zone =
  {
    comment;
    delegation_set_id;
    force_destroy;
    id;
    name;
    tags;
    tags_all;
    vpc;
  }

type t = {
  arn : string prop;
  comment : string prop;
  delegation_set_id : string prop;
  force_destroy : bool prop;
  id : string prop;
  name : string prop;
  name_servers : string list prop;
  primary_name_server : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  zone_id : string prop;
}

let make ?comment ?delegation_set_id ?force_destroy ?id ?tags
    ?tags_all ~name ~vpc __id =
  let __type = "aws_route53_zone" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       comment = Prop.computed __type __id "comment";
       delegation_set_id =
         Prop.computed __type __id "delegation_set_id";
       force_destroy = Prop.computed __type __id "force_destroy";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       name_servers = Prop.computed __type __id "name_servers";
       primary_name_server =
         Prop.computed __type __id "primary_name_server";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53_zone
        (aws_route53_zone ?comment ?delegation_set_id ?force_destroy
           ?id ?tags ?tags_all ~name ~vpc ());
    attrs = __attrs;
  }

let register ?tf_module ?comment ?delegation_set_id ?force_destroy
    ?id ?tags ?tags_all ~name ~vpc __id =
  let (r : _ Tf_core.resource) =
    make ?comment ?delegation_set_id ?force_destroy ?id ?tags
      ?tags_all ~name ~vpc __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
