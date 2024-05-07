(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_service_discovery_dns_namespace = {
  id : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_service_discovery_dns_namespace) -> ()

let yojson_of_aws_service_discovery_dns_namespace =
  (function
   | { id = v_id; name = v_name; tags = v_tags; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
       `Assoc bnds
    : aws_service_discovery_dns_namespace ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_service_discovery_dns_namespace

[@@@deriving.end]

let aws_service_discovery_dns_namespace ?id ?tags ~name ~type_ () :
    aws_service_discovery_dns_namespace =
  { id; name; tags; type_ }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  hosted_zone : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  type_ : string prop;
}

let make ?id ?tags ~name ~type_ __id =
  let __type = "aws_service_discovery_dns_namespace" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       hosted_zone = Prop.computed __type __id "hosted_zone";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_service_discovery_dns_namespace
        (aws_service_discovery_dns_namespace ?id ?tags ~name ~type_
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~name ~type_ __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~name ~type_ __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
