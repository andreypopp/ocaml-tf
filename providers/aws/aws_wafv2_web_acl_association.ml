(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create: string  prop option; [@option] (** create *)
} [@@deriving yojson_of]
(** timeouts *)

type aws_wafv2_web_acl_association = {
  id: string  prop option; [@option] (** id *)
  resource_arn: string prop;  (** resource_arn *)
  web_acl_arn: string prop;  (** web_acl_arn *)
  timeouts: timeouts option;
} [@@deriving yojson_of]
(** aws_wafv2_web_acl_association *)

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
  id: string prop;
  resource_arn: string prop;
  web_acl_arn: string prop;
}

let make ?id ?timeouts ~resource_arn ~web_acl_arn __id =
  let __type = "aws_wafv2_web_acl_association" in
  let __attrs = ({
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

