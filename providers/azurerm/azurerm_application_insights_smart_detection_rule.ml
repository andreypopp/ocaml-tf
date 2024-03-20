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

type azurerm_application_insights_smart_detection_rule = {
  additional_email_recipients : string prop list option; [@option]
      (** additional_email_recipients *)
  application_insights_id : string prop;
      (** application_insights_id *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  send_emails_to_subscription_owners : bool prop option; [@option]
      (** send_emails_to_subscription_owners *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_application_insights_smart_detection_rule *)

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
