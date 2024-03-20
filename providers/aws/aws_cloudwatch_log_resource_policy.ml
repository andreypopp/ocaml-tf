(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudwatch_log_resource_policy = {
  id : string prop option; [@option]  (** id *)
  policy_document : string prop;  (** policy_document *)
  policy_name : string prop;  (** policy_name *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_log_resource_policy *)

let aws_cloudwatch_log_resource_policy ?id ~policy_document
    ~policy_name () : aws_cloudwatch_log_resource_policy =
  { id; policy_document; policy_name }

type t = {
  id : string prop;
  policy_document : string prop;
  policy_name : string prop;
}

let make ?id ~policy_document ~policy_name __id =
  let __type = "aws_cloudwatch_log_resource_policy" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       policy_document = Prop.computed __type __id "policy_document";
       policy_name = Prop.computed __type __id "policy_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudwatch_log_resource_policy
        (aws_cloudwatch_log_resource_policy ?id ~policy_document
           ~policy_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~policy_document ~policy_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~policy_document ~policy_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
