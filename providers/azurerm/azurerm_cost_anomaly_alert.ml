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

type azurerm_cost_anomaly_alert = {
  display_name : string prop;
  email_addresses : string prop list;
  email_subject : string prop;
  id : string prop option; [@option]
  message : string prop option; [@option]
  name : string prop;
  subscription_id : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_cost_anomaly_alert) -> ()

let yojson_of_azurerm_cost_anomaly_alert =
  (function
   | {
       display_name = v_display_name;
       email_addresses = v_email_addresses;
       email_subject = v_email_subject;
       id = v_id;
       message = v_message;
       name = v_name;
       subscription_id = v_subscription_id;
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
         match v_subscription_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subscription_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_message with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "message", arg in
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
         let arg = yojson_of_prop yojson_of_string v_email_subject in
         ("email_subject", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_email_addresses
         in
         ("email_addresses", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_cost_anomaly_alert -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_cost_anomaly_alert

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cost_anomaly_alert ?id ?message ?subscription_id
    ?timeouts ~display_name ~email_addresses ~email_subject ~name ()
    : azurerm_cost_anomaly_alert =
  {
    display_name;
    email_addresses;
    email_subject;
    id;
    message;
    name;
    subscription_id;
    timeouts;
  }

type t = {
  tf_name : string;
  display_name : string prop;
  email_addresses : string list prop;
  email_subject : string prop;
  id : string prop;
  message : string prop;
  name : string prop;
  subscription_id : string prop;
}

let make ?id ?message ?subscription_id ?timeouts ~display_name
    ~email_addresses ~email_subject ~name __id =
  let __type = "azurerm_cost_anomaly_alert" in
  let __attrs =
    ({
       tf_name = __id;
       display_name = Prop.computed __type __id "display_name";
       email_addresses = Prop.computed __type __id "email_addresses";
       email_subject = Prop.computed __type __id "email_subject";
       id = Prop.computed __type __id "id";
       message = Prop.computed __type __id "message";
       name = Prop.computed __type __id "name";
       subscription_id = Prop.computed __type __id "subscription_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cost_anomaly_alert
        (azurerm_cost_anomaly_alert ?id ?message ?subscription_id
           ?timeouts ~display_name ~email_addresses ~email_subject
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?message ?subscription_id ?timeouts
    ~display_name ~email_addresses ~email_subject ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?message ?subscription_id ?timeouts ~display_name
      ~email_addresses ~email_subject ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
