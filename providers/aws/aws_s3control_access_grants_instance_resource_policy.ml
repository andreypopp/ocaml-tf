(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_s3control_access_grants_instance_resource_policy = {
  account_id : string prop option; [@option]  (** account_id *)
  policy : string prop;  (** policy *)
}
[@@deriving yojson_of]
(** aws_s3control_access_grants_instance_resource_policy *)

let aws_s3control_access_grants_instance_resource_policy ?account_id
    ~policy () : aws_s3control_access_grants_instance_resource_policy
    =
  { account_id; policy }

type t = {
  account_id : string prop;
  id : string prop;
  policy : string prop;
}

let make ?account_id ~policy __id =
  let __type =
    "aws_s3control_access_grants_instance_resource_policy"
  in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       id = Prop.computed __type __id "id";
       policy = Prop.computed __type __id "policy";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3control_access_grants_instance_resource_policy
        (aws_s3control_access_grants_instance_resource_policy
           ?account_id ~policy ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ~policy __id =
  let (r : _ Tf_core.resource) = make ?account_id ~policy __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
