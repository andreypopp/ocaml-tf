(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudwatch_log_data_protection_policy = {
  id : string prop option; [@option]  (** id *)
  log_group_name : string prop;  (** log_group_name *)
  policy_document : string prop;  (** policy_document *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_log_data_protection_policy *)

let aws_cloudwatch_log_data_protection_policy ?id ~log_group_name
    ~policy_document () : aws_cloudwatch_log_data_protection_policy =
  { id; log_group_name; policy_document }

type t = {
  id : string prop;
  log_group_name : string prop;
  policy_document : string prop;
}

let make ?id ~log_group_name ~policy_document __id =
  let __type = "aws_cloudwatch_log_data_protection_policy" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       log_group_name = Prop.computed __type __id "log_group_name";
       policy_document = Prop.computed __type __id "policy_document";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudwatch_log_data_protection_policy
        (aws_cloudwatch_log_data_protection_policy ?id
           ~log_group_name ~policy_document ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~log_group_name ~policy_document __id =
  let (r : _ Tf_core.resource) =
    make ?id ~log_group_name ~policy_document __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
