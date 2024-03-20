(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_redshiftserverless_usage_limit = {
  amount : float prop;  (** amount *)
  breach_action : string prop option; [@option]  (** breach_action *)
  id : string prop option; [@option]  (** id *)
  period : string prop option; [@option]  (** period *)
  resource_arn : string prop;  (** resource_arn *)
  usage_type : string prop;  (** usage_type *)
}
[@@deriving yojson_of]
(** aws_redshiftserverless_usage_limit *)

let aws_redshiftserverless_usage_limit ?breach_action ?id ?period
    ~amount ~resource_arn ~usage_type () :
    aws_redshiftserverless_usage_limit =
  { amount; breach_action; id; period; resource_arn; usage_type }

type t = {
  amount : float prop;
  arn : string prop;
  breach_action : string prop;
  id : string prop;
  period : string prop;
  resource_arn : string prop;
  usage_type : string prop;
}

let make ?breach_action ?id ?period ~amount ~resource_arn ~usage_type
    __id =
  let __type = "aws_redshiftserverless_usage_limit" in
  let __attrs =
    ({
       amount = Prop.computed __type __id "amount";
       arn = Prop.computed __type __id "arn";
       breach_action = Prop.computed __type __id "breach_action";
       id = Prop.computed __type __id "id";
       period = Prop.computed __type __id "period";
       resource_arn = Prop.computed __type __id "resource_arn";
       usage_type = Prop.computed __type __id "usage_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_redshiftserverless_usage_limit
        (aws_redshiftserverless_usage_limit ?breach_action ?id
           ?period ~amount ~resource_arn ~usage_type ());
    attrs = __attrs;
  }

let register ?tf_module ?breach_action ?id ?period ~amount
    ~resource_arn ~usage_type __id =
  let (r : _ Tf_core.resource) =
    make ?breach_action ?id ?period ~amount ~resource_arn ~usage_type
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
