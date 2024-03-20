(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudwatch_log_subscription_filter = {
  destination_arn : string prop;  (** destination_arn *)
  distribution : string prop option; [@option]  (** distribution *)
  filter_pattern : string prop;  (** filter_pattern *)
  id : string prop option; [@option]  (** id *)
  log_group_name : string prop;  (** log_group_name *)
  name : string prop;  (** name *)
  role_arn : string prop option; [@option]  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_log_subscription_filter *)

let aws_cloudwatch_log_subscription_filter ?distribution ?id
    ?role_arn ~destination_arn ~filter_pattern ~log_group_name ~name
    () : aws_cloudwatch_log_subscription_filter =
  {
    destination_arn;
    distribution;
    filter_pattern;
    id;
    log_group_name;
    name;
    role_arn;
  }

type t = {
  destination_arn : string prop;
  distribution : string prop;
  filter_pattern : string prop;
  id : string prop;
  log_group_name : string prop;
  name : string prop;
  role_arn : string prop;
}

let make ?distribution ?id ?role_arn ~destination_arn ~filter_pattern
    ~log_group_name ~name __id =
  let __type = "aws_cloudwatch_log_subscription_filter" in
  let __attrs =
    ({
       destination_arn = Prop.computed __type __id "destination_arn";
       distribution = Prop.computed __type __id "distribution";
       filter_pattern = Prop.computed __type __id "filter_pattern";
       id = Prop.computed __type __id "id";
       log_group_name = Prop.computed __type __id "log_group_name";
       name = Prop.computed __type __id "name";
       role_arn = Prop.computed __type __id "role_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudwatch_log_subscription_filter
        (aws_cloudwatch_log_subscription_filter ?distribution ?id
           ?role_arn ~destination_arn ~filter_pattern ~log_group_name
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?distribution ?id ?role_arn ~destination_arn
    ~filter_pattern ~log_group_name ~name __id =
  let (r : _ Tf_core.resource) =
    make ?distribution ?id ?role_arn ~destination_arn ~filter_pattern
      ~log_group_name ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
