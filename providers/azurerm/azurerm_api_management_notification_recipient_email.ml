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

type azurerm_api_management_notification_recipient_email = {
  api_management_id : string prop;
  email : string prop;
  id : string prop option; [@option]
  notification_type : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_api_management_notification_recipient_email) -> ()

let yojson_of_azurerm_api_management_notification_recipient_email =
  (function
   | {
       api_management_id = v_api_management_id;
       email = v_email;
       id = v_id;
       notification_type = v_notification_type;
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
         let arg = yojson_of_prop yojson_of_string v_email in
         ("email", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_api_management_id
         in
         ("api_management_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_api_management_notification_recipient_email ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_api_management_notification_recipient_email

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_api_management_notification_recipient_email ?id ?timeouts
    ~api_management_id ~email ~notification_type () :
    azurerm_api_management_notification_recipient_email =
  { api_management_id; email; id; notification_type; timeouts }

type t = {
  tf_name : string;
  api_management_id : string prop;
  email : string prop;
  id : string prop;
  notification_type : string prop;
}

let make ?id ?timeouts ~api_management_id ~email ~notification_type
    __id =
  let __type =
    "azurerm_api_management_notification_recipient_email"
  in
  let __attrs =
    ({
       tf_name = __id;
       api_management_id =
         Prop.computed __type __id "api_management_id";
       email = Prop.computed __type __id "email";
       id = Prop.computed __type __id "id";
       notification_type =
         Prop.computed __type __id "notification_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_notification_recipient_email
        (azurerm_api_management_notification_recipient_email ?id
           ?timeouts ~api_management_id ~email ~notification_type ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~api_management_id ~email
    ~notification_type __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~api_management_id ~email ~notification_type
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
