(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_role_subscription = {
  id : string prop option; [@option]
  notification_type : string prop;
  role_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_role_subscription) -> ()

let yojson_of_okta_role_subscription =
  (function
   | {
       id = v_id;
       notification_type = v_notification_type;
       role_type = v_role_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_type in
         ("role_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_notification_type
         in
         ("notification_type", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : okta_role_subscription -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_role_subscription

[@@@deriving.end]

let okta_role_subscription ?id ~notification_type ~role_type () :
    okta_role_subscription =
  { id; notification_type; role_type }

type t = {
  tf_name : string;
  id : string prop;
  notification_type : string prop;
  role_type : string prop;
  status : string prop;
}

let make ?id ~notification_type ~role_type __id =
  let __type = "okta_role_subscription" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       notification_type =
         Prop.computed __type __id "notification_type";
       role_type = Prop.computed __type __id "role_type";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_role_subscription
        (okta_role_subscription ?id ~notification_type ~role_type ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~notification_type ~role_type __id =
  let (r : _ Tf_core.resource) =
    make ?id ~notification_type ~role_type __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
