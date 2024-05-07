(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_api_management_notification_recipient_user = {
  api_management_id : string prop;
  id : string prop option; [@option]
  notification_type : string prop;
  user_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_api_management_notification_recipient_user) -> ()

let yojson_of_azurerm_api_management_notification_recipient_user =
  (function
   | {
       api_management_id = v_api_management_id;
       id = v_id;
       notification_type = v_notification_type;
       user_id = v_user_id;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_id in
         ("user_id", arg) :: bnds
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
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_api_management_id
         in
         ("api_management_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_api_management_notification_recipient_user ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_api_management_notification_recipient_user

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_api_management_notification_recipient_user ?id ?timeouts
    ~api_management_id ~notification_type ~user_id () :
    azurerm_api_management_notification_recipient_user =
  { api_management_id; id; notification_type; user_id; timeouts }

type t = {
  tf_name : string;
  api_management_id : string prop;
  id : string prop;
  notification_type : string prop;
  user_id : string prop;
}

let make ?id ?timeouts ~api_management_id ~notification_type ~user_id
    __id =
  let __type =
    "azurerm_api_management_notification_recipient_user"
  in
  let __attrs =
    ({
       tf_name = __id;
       api_management_id =
         Prop.computed __type __id "api_management_id";
       id = Prop.computed __type __id "id";
       notification_type =
         Prop.computed __type __id "notification_type";
       user_id = Prop.computed __type __id "user_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_notification_recipient_user
        (azurerm_api_management_notification_recipient_user ?id
           ?timeouts ~api_management_id ~notification_type ~user_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~api_management_id
    ~notification_type ~user_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~api_management_id ~notification_type ~user_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
