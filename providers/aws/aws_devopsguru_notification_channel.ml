(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filters = {
  message_types : string prop list option; [@option]
  severities : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filters) -> ()

let yojson_of_filters =
  (function
   | { message_types = v_message_types; severities = v_severities }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_severities with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "severities", arg in
             bnd :: bnds
       in
       let bnds =
         match v_message_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "message_types", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : filters -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters

[@@@deriving.end]

type sns = { topic_arn : string prop } [@@deriving_inline yojson_of]

let _ = fun (_ : sns) -> ()

let yojson_of_sns =
  (function
   | { topic_arn = v_topic_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_topic_arn in
         ("topic_arn", arg) :: bnds
       in
       `Assoc bnds
    : sns -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sns

[@@@deriving.end]

type aws_devopsguru_notification_channel = {
  filters : filters list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  sns : sns list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_devopsguru_notification_channel) -> ()

let yojson_of_aws_devopsguru_notification_channel =
  (function
   | { filters = v_filters; sns = v_sns } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_sns then bnds
         else
           let arg = (yojson_of_list yojson_of_sns) v_sns in
           let bnd = "sns", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_filters then bnds
         else
           let arg = (yojson_of_list yojson_of_filters) v_filters in
           let bnd = "filters", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : aws_devopsguru_notification_channel ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_devopsguru_notification_channel

[@@@deriving.end]

let filters ?message_types ?severities () : filters =
  { message_types; severities }

let sns ~topic_arn () : sns = { topic_arn }

let aws_devopsguru_notification_channel ?(filters = []) ?(sns = [])
    () : aws_devopsguru_notification_channel =
  { filters; sns }

type t = { tf_name : string; id : string prop }

let make ?(filters = []) ?(sns = []) __id =
  let __type = "aws_devopsguru_notification_channel" in
  let __attrs =
    ({ tf_name = __id; id = Prop.computed __type __id "id" } : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_devopsguru_notification_channel
        (aws_devopsguru_notification_channel ~filters ~sns ());
    attrs = __attrs;
  }

let register ?tf_module ?(filters = []) ?(sns = []) __id =
  let (r : _ Tf_core.resource) = make ~filters ~sns __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
