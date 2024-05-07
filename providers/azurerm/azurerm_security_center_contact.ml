(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
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

type azurerm_security_center_contact = {
  alert_notifications : bool prop;
  alerts_to_admins : bool prop;
  email : string prop;
  id : string prop option; [@option]
  name : string prop option; [@option]
  phone : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_security_center_contact) -> ()

let yojson_of_azurerm_security_center_contact =
  (function
   | {
       alert_notifications = v_alert_notifications;
       alerts_to_admins = v_alerts_to_admins;
       email = v_email;
       id = v_id;
       name = v_name;
       phone = v_phone;
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
         match v_phone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "phone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
         let arg = yojson_of_prop yojson_of_string v_email in
         ("email", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_alerts_to_admins
         in
         ("alerts_to_admins", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_alert_notifications
         in
         ("alert_notifications", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_security_center_contact ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_security_center_contact

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_security_center_contact ?id ?name ?phone ?timeouts
    ~alert_notifications ~alerts_to_admins ~email () :
    azurerm_security_center_contact =
  {
    alert_notifications;
    alerts_to_admins;
    email;
    id;
    name;
    phone;
    timeouts;
  }

type t = {
  tf_name : string;
  alert_notifications : bool prop;
  alerts_to_admins : bool prop;
  email : string prop;
  id : string prop;
  name : string prop;
  phone : string prop;
}

let make ?id ?name ?phone ?timeouts ~alert_notifications
    ~alerts_to_admins ~email __id =
  let __type = "azurerm_security_center_contact" in
  let __attrs =
    ({
       tf_name = __id;
       alert_notifications =
         Prop.computed __type __id "alert_notifications";
       alerts_to_admins =
         Prop.computed __type __id "alerts_to_admins";
       email = Prop.computed __type __id "email";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       phone = Prop.computed __type __id "phone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_security_center_contact
        (azurerm_security_center_contact ?id ?name ?phone ?timeouts
           ~alert_notifications ~alerts_to_admins ~email ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?phone ?timeouts
    ~alert_notifications ~alerts_to_admins ~email __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?phone ?timeouts ~alert_notifications
      ~alerts_to_admins ~email __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
