(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_application_insights_web_test__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_application_insights_web_test__timeouts *)

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
  timeouts : azurerm_application_insights_web_test__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_application_insights_web_test *)

let azurerm_application_insights_web_test ?description ?enabled
    ?frequency ?id ?retry_enabled ?tags ?timeout ?timeouts
    ~application_insights_id ~configuration ~geo_locations ~kind
    ~location ~name ~resource_group_name __resource_id =
  let __resource_type = "azurerm_application_insights_web_test" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_application_insights_web_test __resource);
  ()
