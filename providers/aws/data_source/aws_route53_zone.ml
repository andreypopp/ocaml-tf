(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_route53_zone = {
  id : string prop option; [@option]
  name : string prop option; [@option]
  private_zone : bool prop option; [@option]
  resource_record_set_count : float prop option; [@option]
  tags : (string * string prop) list option; [@option]
  vpc_id : string prop option; [@option]
  zone_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_route53_zone) -> ()

let yojson_of_aws_route53_zone =
  (function
   | {
       id = v_id;
       name = v_name;
       private_zone = v_private_zone;
       resource_record_set_count = v_resource_record_set_count;
       tags = v_tags;
       vpc_id = v_vpc_id;
       zone_id = v_zone_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_zone_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zone_id", arg in
             bnd :: bnds
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
         match v_resource_record_set_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "resource_record_set_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "private_zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
    : aws_route53_zone -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_route53_zone

[@@@deriving.end]

let aws_route53_zone ?id ?name ?private_zone
    ?resource_record_set_count ?tags ?vpc_id ?zone_id () :
    aws_route53_zone =
  {
    id;
    name;
    private_zone;
    resource_record_set_count;
    tags;
    vpc_id;
    zone_id;
  }

type t = {
  arn : string prop;
  caller_reference : string prop;
  comment : string prop;
  id : string prop;
  linked_service_description : string prop;
  linked_service_principal : string prop;
  name : string prop;
  name_servers : string list prop;
  primary_name_server : string prop;
  private_zone : bool prop;
  resource_record_set_count : float prop;
  tags : (string * string) list prop;
  vpc_id : string prop;
  zone_id : string prop;
}

let make ?id ?name ?private_zone ?resource_record_set_count ?tags
    ?vpc_id ?zone_id __id =
  let __type = "aws_route53_zone" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       caller_reference =
         Prop.computed __type __id "caller_reference";
       comment = Prop.computed __type __id "comment";
       id = Prop.computed __type __id "id";
       linked_service_description =
         Prop.computed __type __id "linked_service_description";
       linked_service_principal =
         Prop.computed __type __id "linked_service_principal";
       name = Prop.computed __type __id "name";
       name_servers = Prop.computed __type __id "name_servers";
       primary_name_server =
         Prop.computed __type __id "primary_name_server";
       private_zone = Prop.computed __type __id "private_zone";
       resource_record_set_count =
         Prop.computed __type __id "resource_record_set_count";
       tags = Prop.computed __type __id "tags";
       vpc_id = Prop.computed __type __id "vpc_id";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53_zone
        (aws_route53_zone ?id ?name ?private_zone
           ?resource_record_set_count ?tags ?vpc_id ?zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?private_zone
    ?resource_record_set_count ?tags ?vpc_id ?zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?private_zone ?resource_record_set_count ?tags
      ?vpc_id ?zone_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
