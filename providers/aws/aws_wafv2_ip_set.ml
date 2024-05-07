(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_wafv2_ip_set = {
  addresses: string   prop list option; [@option]
  description: string  prop option; [@option]
  id: string  prop option; [@option]
  ip_address_version: string prop; 
  name: string prop; 
  scope: string prop; 
  tags: (string * string   prop) list option; [@option]
  tags_all: (string * string   prop) list option; [@option]
} [@@deriving_inline yojson_of]
[@@@deriving.end]

let aws_wafv2_ip_set ?addresses ?description ?id ?tags ?tags_all ~ip_address_version ~name ~scope () =
  ({
    addresses;
    description;
    id;
    ip_address_version;
    name;
    scope;
    tags;
    tags_all;
  } : aws_wafv2_ip_set);;

type t = {
  tf_name: string;
  addresses: string list prop;
  arn: string prop;
  description: string prop;
  id: string prop;
  ip_address_version: string prop;
  lock_token: string prop;
  name: string prop;
  scope: string prop;
  tags: (string * string) list prop;
  tags_all: (string * string) list prop;
}

let make ?addresses ?description ?id ?tags ?tags_all ~ip_address_version ~name ~scope __id =
  let __type = "aws_wafv2_ip_set" in
  let __attrs = ({
    tf_name = __id;
    addresses = Prop.computed __type __id "addresses";
    arn = Prop.computed __type __id "arn";
    description = Prop.computed __type __id "description";
    id = Prop.computed __type __id "id";
    ip_address_version = Prop.computed __type __id "ip_address_version";
    lock_token = Prop.computed __type __id "lock_token";
    name = Prop.computed __type __id "name";
    scope = Prop.computed __type __id "scope";
    tags = Prop.computed __type __id "tags";
    tags_all = Prop.computed __type __id "tags_all";
  } : t) in
  {Tf_core.
    id=__id;
    type_=__type;
    json=yojson_of_aws_wafv2_ip_set (aws_wafv2_ip_set ?addresses ?description ?id ?tags ?tags_all ~ip_address_version ~name ~scope ());
    attrs=__attrs;
  };;

let register ?tf_module ?addresses ?description ?id ?tags ?tags_all ~ip_address_version ~name ~scope __id =
  let (r : _ Tf_core.resource) = make ?addresses ?description ?id ?tags ?tags_all ~ip_address_version ~name ~scope __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs;;

