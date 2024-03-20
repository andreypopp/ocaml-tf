(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_sns_sms_preferences = {
  default_sender_id : string prop option; [@option]
  default_sms_type : string prop option; [@option]
  delivery_status_iam_role_arn : string prop option; [@option]
  delivery_status_success_sampling_rate : string prop option;
      [@option]
  id : string prop option; [@option]
  monthly_spend_limit : float prop option; [@option]
  usage_report_s3_bucket : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sns_sms_preferences) -> ()

let yojson_of_aws_sns_sms_preferences =
  (function
   | {
       default_sender_id = v_default_sender_id;
       default_sms_type = v_default_sms_type;
       delivery_status_iam_role_arn = v_delivery_status_iam_role_arn;
       delivery_status_success_sampling_rate =
         v_delivery_status_success_sampling_rate;
       id = v_id;
       monthly_spend_limit = v_monthly_spend_limit;
       usage_report_s3_bucket = v_usage_report_s3_bucket;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_usage_report_s3_bucket with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "usage_report_s3_bucket", arg in
             bnd :: bnds
       in
       let bnds =
         match v_monthly_spend_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "monthly_spend_limit", arg in
             bnd :: bnds
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
         match v_delivery_status_success_sampling_rate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "delivery_status_success_sampling_rate", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_delivery_status_iam_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delivery_status_iam_role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_sms_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_sms_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_sender_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_sender_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_sns_sms_preferences -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sns_sms_preferences

[@@@deriving.end]

let aws_sns_sms_preferences ?default_sender_id ?default_sms_type
    ?delivery_status_iam_role_arn
    ?delivery_status_success_sampling_rate ?id ?monthly_spend_limit
    ?usage_report_s3_bucket () : aws_sns_sms_preferences =
  {
    default_sender_id;
    default_sms_type;
    delivery_status_iam_role_arn;
    delivery_status_success_sampling_rate;
    id;
    monthly_spend_limit;
    usage_report_s3_bucket;
  }

type t = {
  default_sender_id : string prop;
  default_sms_type : string prop;
  delivery_status_iam_role_arn : string prop;
  delivery_status_success_sampling_rate : string prop;
  id : string prop;
  monthly_spend_limit : float prop;
  usage_report_s3_bucket : string prop;
}

let make ?default_sender_id ?default_sms_type
    ?delivery_status_iam_role_arn
    ?delivery_status_success_sampling_rate ?id ?monthly_spend_limit
    ?usage_report_s3_bucket __id =
  let __type = "aws_sns_sms_preferences" in
  let __attrs =
    ({
       default_sender_id =
         Prop.computed __type __id "default_sender_id";
       default_sms_type =
         Prop.computed __type __id "default_sms_type";
       delivery_status_iam_role_arn =
         Prop.computed __type __id "delivery_status_iam_role_arn";
       delivery_status_success_sampling_rate =
         Prop.computed __type __id
           "delivery_status_success_sampling_rate";
       id = Prop.computed __type __id "id";
       monthly_spend_limit =
         Prop.computed __type __id "monthly_spend_limit";
       usage_report_s3_bucket =
         Prop.computed __type __id "usage_report_s3_bucket";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sns_sms_preferences
        (aws_sns_sms_preferences ?default_sender_id ?default_sms_type
           ?delivery_status_iam_role_arn
           ?delivery_status_success_sampling_rate ?id
           ?monthly_spend_limit ?usage_report_s3_bucket ());
    attrs = __attrs;
  }

let register ?tf_module ?default_sender_id ?default_sms_type
    ?delivery_status_iam_role_arn
    ?delivery_status_success_sampling_rate ?id ?monthly_spend_limit
    ?usage_report_s3_bucket __id =
  let (r : _ Tf_core.resource) =
    make ?default_sender_id ?default_sms_type
      ?delivery_status_iam_role_arn
      ?delivery_status_success_sampling_rate ?id ?monthly_spend_limit
      ?usage_report_s3_bucket __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
