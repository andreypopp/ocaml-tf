(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_route53_resolver_firewall_rule_group = {
  id : string prop option; [@option]
  name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_route53_resolver_firewall_rule_group) -> ()

let yojson_of_aws_route53_resolver_firewall_rule_group =
  (function
   | {
       id = v_id;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : aws_route53_resolver_firewall_rule_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_route53_resolver_firewall_rule_group

[@@@deriving.end]

let aws_route53_resolver_firewall_rule_group ?id ?tags ?tags_all
    ~name () : aws_route53_resolver_firewall_rule_group =
  { id; name; tags; tags_all }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  name : string prop;
  owner_id : string prop;
  share_status : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?id ?tags ?tags_all ~name __id =
  let __type = "aws_route53_resolver_firewall_rule_group" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       owner_id = Prop.computed __type __id "owner_id";
       share_status = Prop.computed __type __id "share_status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53_resolver_firewall_rule_group
        (aws_route53_resolver_firewall_rule_group ?id ?tags ?tags_all
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
