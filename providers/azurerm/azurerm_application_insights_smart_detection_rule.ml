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

type azurerm_application_insights_smart_detection_rule = {
  additional_email_recipients : string prop list option; [@option]
  application_insights_id : string prop;
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  send_emails_to_subscription_owners : bool prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_application_insights_smart_detection_rule) -> ()

let yojson_of_azurerm_application_insights_smart_detection_rule =
  (function
   | {
       additional_email_recipients = v_additional_email_recipients;
       application_insights_id = v_application_insights_id;
       enabled = v_enabled;
       id = v_id;
       name = v_name;
       send_emails_to_subscription_owners =
         v_send_emails_to_subscription_owners;
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
         match v_send_emails_to_subscription_owners with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "send_emails_to_subscription_owners", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_application_insights_id
         in
         ("application_insights_id", arg) :: bnds
       in
       let bnds =
         match v_additional_email_recipients with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "additional_email_recipients", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_application_insights_smart_detection_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_application_insights_smart_detection_rule

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_application_insights_smart_detection_rule
    ?additional_email_recipients ?enabled ?id
    ?send_emails_to_subscription_owners ?timeouts
    ~application_insights_id ~name () :
    azurerm_application_insights_smart_detection_rule =
  {
    additional_email_recipients;
    application_insights_id;
    enabled;
    id;
    name;
    send_emails_to_subscription_owners;
    timeouts;
  }

type t = {
  additional_email_recipients : string list prop;
  application_insights_id : string prop;
  enabled : bool prop;
  id : string prop;
  name : string prop;
  send_emails_to_subscription_owners : bool prop;
}

let make ?additional_email_recipients ?enabled ?id
    ?send_emails_to_subscription_owners ?timeouts
    ~application_insights_id ~name __id =
  let __type = "azurerm_application_insights_smart_detection_rule" in
  let __attrs =
    ({
       additional_email_recipients =
         Prop.computed __type __id "additional_email_recipients";
       application_insights_id =
         Prop.computed __type __id "application_insights_id";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       send_emails_to_subscription_owners =
         Prop.computed __type __id
           "send_emails_to_subscription_owners";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_application_insights_smart_detection_rule
        (azurerm_application_insights_smart_detection_rule
           ?additional_email_recipients ?enabled ?id
           ?send_emails_to_subscription_owners ?timeouts
           ~application_insights_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?additional_email_recipients ?enabled ?id
    ?send_emails_to_subscription_owners ?timeouts
    ~application_insights_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?additional_email_recipients ?enabled ?id
      ?send_emails_to_subscription_owners ?timeouts
      ~application_insights_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
