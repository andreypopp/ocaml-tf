(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudwatch_log_subscription_filter = {
  destination_arn : string prop;
  distribution : string prop option; [@option]
  filter_pattern : string prop;
  id : string prop option; [@option]
  log_group_name : string prop;
  name : string prop;
  role_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudwatch_log_subscription_filter) -> ()

let yojson_of_aws_cloudwatch_log_subscription_filter =
  (function
   | {
       destination_arn = v_destination_arn;
       distribution = v_distribution;
       filter_pattern = v_filter_pattern;
       id = v_id;
       log_group_name = v_log_group_name;
       name = v_name;
       role_arn = v_role_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_log_group_name
         in
         ("log_group_name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_filter_pattern
         in
         ("filter_pattern", arg) :: bnds
       in
       let bnds =
         match v_distribution with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "distribution", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_destination_arn
         in
         ("destination_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_cloudwatch_log_subscription_filter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudwatch_log_subscription_filter

[@@@deriving.end]

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
