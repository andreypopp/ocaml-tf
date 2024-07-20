(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filters = unit [@@deriving_inline yojson_of]

let _ = fun (_ : filters) -> ()

let yojson_of_filters =
  (yojson_of_unit : filters -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filters

[@@@deriving.end]

type sns = unit [@@deriving_inline yojson_of]

let _ = fun (_ : sns) -> ()

let yojson_of_sns =
  (yojson_of_unit : sns -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sns

[@@@deriving.end]

type aws_devopsguru_notification_channel = {
  id : string prop;
  filters : filters list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  sns : sns list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_devopsguru_notification_channel) -> ()

let yojson_of_aws_devopsguru_notification_channel =
  (function
   | { id = v_id; filters = v_filters; sns = v_sns } ->
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : aws_devopsguru_notification_channel ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_devopsguru_notification_channel

[@@@deriving.end]

let filters () = ()
let sns () = ()

let aws_devopsguru_notification_channel ?(filters = []) ?(sns = [])
    ~id () : aws_devopsguru_notification_channel =
  { id; filters; sns }

type t = { tf_name : string; id : string prop }

let make ?(filters = []) ?(sns = []) ~id __id =
  let __type = "aws_devopsguru_notification_channel" in
  let __attrs =
    ({ tf_name = __id; id = Prop.computed __type __id "id" } : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_devopsguru_notification_channel
        (aws_devopsguru_notification_channel ~filters ~sns ~id ());
    attrs = __attrs;
  }

let register ?tf_module ?(filters = []) ?(sns = []) ~id __id =
  let (r : _ Tf_core.resource) = make ~filters ~sns ~id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
