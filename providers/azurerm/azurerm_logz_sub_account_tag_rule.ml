(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type tag_filter = {
  action : string prop;  (** action *)
  name : string prop;  (** name *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** tag_filter *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_logz_sub_account_tag_rule = {
  id : string prop option; [@option]  (** id *)
  logz_sub_account_id : string prop;  (** logz_sub_account_id *)
  send_aad_logs : bool prop option; [@option]  (** send_aad_logs *)
  send_activity_logs : bool prop option; [@option]
      (** send_activity_logs *)
  send_subscription_logs : bool prop option; [@option]
      (** send_subscription_logs *)
  tag_filter : tag_filter list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_logz_sub_account_tag_rule *)

let tag_filter ?value ~action ~name () : tag_filter =
  { action; name; value }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_logz_sub_account_tag_rule ?id ?send_aad_logs
    ?send_activity_logs ?send_subscription_logs ?timeouts
    ~logz_sub_account_id ~tag_filter () :
    azurerm_logz_sub_account_tag_rule =
  {
    id;
    logz_sub_account_id;
    send_aad_logs;
    send_activity_logs;
    send_subscription_logs;
    tag_filter;
    timeouts;
  }

type t = {
  id : string prop;
  logz_sub_account_id : string prop;
  send_aad_logs : bool prop;
  send_activity_logs : bool prop;
  send_subscription_logs : bool prop;
}

let make ?id ?send_aad_logs ?send_activity_logs
    ?send_subscription_logs ?timeouts ~logz_sub_account_id
    ~tag_filter __id =
  let __type = "azurerm_logz_sub_account_tag_rule" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       logz_sub_account_id =
         Prop.computed __type __id "logz_sub_account_id";
       send_aad_logs = Prop.computed __type __id "send_aad_logs";
       send_activity_logs =
         Prop.computed __type __id "send_activity_logs";
       send_subscription_logs =
         Prop.computed __type __id "send_subscription_logs";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_logz_sub_account_tag_rule
        (azurerm_logz_sub_account_tag_rule ?id ?send_aad_logs
           ?send_activity_logs ?send_subscription_logs ?timeouts
           ~logz_sub_account_id ~tag_filter ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?send_aad_logs ?send_activity_logs
    ?send_subscription_logs ?timeouts ~logz_sub_account_id
    ~tag_filter __id =
  let (r : _ Tf_core.resource) =
    make ?id ?send_aad_logs ?send_activity_logs
      ?send_subscription_logs ?timeouts ~logz_sub_account_id
      ~tag_filter __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
