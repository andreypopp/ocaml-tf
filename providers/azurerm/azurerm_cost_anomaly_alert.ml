(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_cost_anomaly_alert = {
  display_name : string prop;  (** display_name *)
  email_addresses : string prop list;  (** email_addresses *)
  email_subject : string prop;  (** email_subject *)
  id : string prop option; [@option]  (** id *)
  message : string prop option; [@option]  (** message *)
  name : string prop;  (** name *)
  subscription_id : string prop option; [@option]
      (** subscription_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cost_anomaly_alert *)

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
