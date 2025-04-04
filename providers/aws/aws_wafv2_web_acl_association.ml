(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create: string  prop option; [@option]
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type aws_wafv2_web_acl_association = {
  id: string  prop option; [@option]
  resource_arn: string prop; 
  web_acl_arn: string prop; 
  timeouts: timeouts option;
} [@@deriving_inline yojson_of]
[@@@deriving.end]

let timeouts ?create () =
  ({
    create;
  } : timeouts);;

let aws_wafv2_web_acl_association ?id ?timeouts ~resource_arn ~web_acl_arn () =
  ({
    id;
    resource_arn;
    web_acl_arn;
    timeouts;
  } : aws_wafv2_web_acl_association);;

type t = {
  tf_name: string;
  id: string prop;
  resource_arn: string prop;
  web_acl_arn: string prop;
}

let make ?id ?timeouts ~resource_arn ~web_acl_arn __id =
  let __type = "aws_wafv2_web_acl_association" in
  let __attrs = ({
    tf_name = __id;
    id = Prop.computed __type __id "id";
    resource_arn = Prop.computed __type __id "resource_arn";
    web_acl_arn = Prop.computed __type __id "web_acl_arn";
  } : t) in
  {Tf_core.
    id=__id;
    type_=__type;
    json=yojson_of_aws_wafv2_web_acl_association (aws_wafv2_web_acl_association ?id ?timeouts ~resource_arn ~web_acl_arn ());
    attrs=__attrs;
  };;

let register ?tf_module ?id ?timeouts ~resource_arn ~web_acl_arn __id =
  let (r : _ Tf_core.resource) = make ?id ?timeouts ~resource_arn ~web_acl_arn __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs;;

