(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_application_insights_web_test__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_application_insights_web_test__timeouts *)

type azurerm_application_insights_web_test = {
  application_insights_id : string;  (** application_insights_id *)
  configuration : string;  (** configuration *)
  description : string option; [@option]  (** description *)
  enabled : bool option; [@option]  (** enabled *)
  frequency : float option; [@option]  (** frequency *)
  geo_locations : string list;  (** geo_locations *)
  kind : string;  (** kind *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  retry_enabled : bool option; [@option]  (** retry_enabled *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeout : float option; [@option]  (** timeout *)
  timeouts : azurerm_application_insights_web_test__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_application_insights_web_test *)

let azurerm_application_insights_web_test ?description ?enabled
    ?frequency ?retry_enabled ?tags ?timeout ?timeouts
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
