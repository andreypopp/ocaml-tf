(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type source__sub_type = {
  enabled : bool prop option; [@option]  (** enabled *)
  name : string prop;  (** name *)
  severities_allowed : string prop list;  (** severities_allowed *)
}
[@@deriving yojson_of]
(** source__sub_type *)

type source = {
  enabled : bool prop option; [@option]  (** enabled *)
  name : string prop;  (** name *)
  sub_type : source__sub_type list;
}
[@@deriving yojson_of]
(** source *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_sentinel_alert_rule_fusion = {
  alert_rule_template_guid : string prop;
      (** alert_rule_template_guid *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  log_analytics_workspace_id : string prop;
      (** log_analytics_workspace_id *)
  name : string prop;  (** name *)
  source : source list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_fusion *)

let source__sub_type ?enabled ~name ~severities_allowed () :
    source__sub_type =
  { enabled; name; severities_allowed }

let source ?enabled ~name ~sub_type () : source =
  { enabled; name; sub_type }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_sentinel_alert_rule_fusion ?enabled ?id ?timeouts
    ~alert_rule_template_guid ~log_analytics_workspace_id ~name
    ~source () : azurerm_sentinel_alert_rule_fusion =
  {
    alert_rule_template_guid;
    enabled;
    id;
    log_analytics_workspace_id;
    name;
    source;
    timeouts;
  }

type t = {
  alert_rule_template_guid : string prop;
  enabled : bool prop;
  id : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
}

let register ?tf_module ?enabled ?id ?timeouts
    ~alert_rule_template_guid ~log_analytics_workspace_id ~name
    ~source __resource_id =
  let __resource_type = "azurerm_sentinel_alert_rule_fusion" in
  let __resource =
    azurerm_sentinel_alert_rule_fusion ?enabled ?id ?timeouts
      ~alert_rule_template_guid ~log_analytics_workspace_id ~name
      ~source ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sentinel_alert_rule_fusion __resource);
  let __resource_attributes =
    ({
       alert_rule_template_guid =
         Prop.computed __resource_type __resource_id
           "alert_rule_template_guid";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       id = Prop.computed __resource_type __resource_id "id";
       log_analytics_workspace_id =
         Prop.computed __resource_type __resource_id
           "log_analytics_workspace_id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
