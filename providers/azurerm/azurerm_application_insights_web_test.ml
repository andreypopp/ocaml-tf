(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_application_insights_web_test = {
  application_insights_id : string prop;
      (** application_insights_id *)
  configuration : string prop;  (** configuration *)
  description : string prop option; [@option]  (** description *)
  enabled : bool prop option; [@option]  (** enabled *)
  frequency : float prop option; [@option]  (** frequency *)
  geo_locations : string prop list;  (** geo_locations *)
  id : string prop option; [@option]  (** id *)
  kind : string prop;  (** kind *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  retry_enabled : bool prop option; [@option]  (** retry_enabled *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeout : float prop option; [@option]  (** timeout *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_application_insights_web_test *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_application_insights_web_test ?description ?enabled
    ?frequency ?id ?retry_enabled ?tags ?timeout ?timeouts
    ~application_insights_id ~configuration ~geo_locations ~kind
    ~location ~name ~resource_group_name () :
    azurerm_application_insights_web_test =
  {
    application_insights_id;
    configuration;
    description;
    enabled;
    frequency;
    geo_locations;
    id;
    kind;
    location;
    name;
    resource_group_name;
    retry_enabled;
    tags;
    timeout;
    timeouts;
  }

type t = {
  application_insights_id : string prop;
  configuration : string prop;
  description : string prop;
  enabled : bool prop;
  frequency : float prop;
  geo_locations : string list prop;
  id : string prop;
  kind : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  retry_enabled : bool prop;
  synthetic_monitor_id : string prop;
  tags : (string * string) list prop;
  timeout : float prop;
}

let register ?tf_module ?description ?enabled ?frequency ?id
    ?retry_enabled ?tags ?timeout ?timeouts ~application_insights_id
    ~configuration ~geo_locations ~kind ~location ~name
    ~resource_group_name __resource_id =
  let __resource_type = "azurerm_application_insights_web_test" in
  let __resource =
    azurerm_application_insights_web_test ?description ?enabled
      ?frequency ?id ?retry_enabled ?tags ?timeout ?timeouts
      ~application_insights_id ~configuration ~geo_locations ~kind
      ~location ~name ~resource_group_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_application_insights_web_test __resource);
  let __resource_attributes =
    ({
       application_insights_id =
         Prop.computed __resource_type __resource_id
           "application_insights_id";
       configuration =
         Prop.computed __resource_type __resource_id "configuration";
       description =
         Prop.computed __resource_type __resource_id "description";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       frequency =
         Prop.computed __resource_type __resource_id "frequency";
       geo_locations =
         Prop.computed __resource_type __resource_id "geo_locations";
       id = Prop.computed __resource_type __resource_id "id";
       kind = Prop.computed __resource_type __resource_id "kind";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       retry_enabled =
         Prop.computed __resource_type __resource_id "retry_enabled";
       synthetic_monitor_id =
         Prop.computed __resource_type __resource_id
           "synthetic_monitor_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       timeout =
         Prop.computed __resource_type __resource_id "timeout";
     }
      : t)
  in
  __resource_attributes
