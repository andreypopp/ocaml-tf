(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_wafregional_web_acl_association = {
  id : string prop option; [@option]  (** id *)
  resource_arn : string prop;  (** resource_arn *)
  web_acl_id : string prop;  (** web_acl_id *)
}
[@@deriving yojson_of]
(** aws_wafregional_web_acl_association *)

let aws_wafregional_web_acl_association ?id ~resource_arn ~web_acl_id
    () : aws_wafregional_web_acl_association =
  { id; resource_arn; web_acl_id }

type t = {
  id : string prop;
  resource_arn : string prop;
  web_acl_id : string prop;
}

let make ?id ~resource_arn ~web_acl_id __id =
  let __type = "aws_wafregional_web_acl_association" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       resource_arn = Prop.computed __type __id "resource_arn";
       web_acl_id = Prop.computed __type __id "web_acl_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_wafregional_web_acl_association
        (aws_wafregional_web_acl_association ?id ~resource_arn
           ~web_acl_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~resource_arn ~web_acl_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~resource_arn ~web_acl_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
