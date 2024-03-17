(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_application_insights__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_application_insights__timeouts *)

type azurerm_application_insights = {
  application_type : string;  (** application_type *)
  disable_ip_masking : bool option; [@option]
      (** disable_ip_masking *)
  force_customer_storage_for_profiler : bool option; [@option]
      (** force_customer_storage_for_profiler *)
  internet_ingestion_enabled : bool option; [@option]
      (** internet_ingestion_enabled *)
  internet_query_enabled : bool option; [@option]
      (** internet_query_enabled *)
  local_authentication_disabled : bool option; [@option]
      (** local_authentication_disabled *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  retention_in_days : float option; [@option]
      (** retention_in_days *)
  sampling_percentage : float option; [@option]
      (** sampling_percentage *)
  tags : (string * string) list option; [@option]  (** tags *)
  workspace_id : string option; [@option]  (** workspace_id *)
  timeouts : azurerm_application_insights__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_application_insights *)

let azurerm_application_insights ?disable_ip_masking
    ?force_customer_storage_for_profiler ?internet_ingestion_enabled
    ?internet_query_enabled ?local_authentication_disabled
    ?retention_in_days ?sampling_percentage ?tags ?workspace_id
    ?timeouts ~application_type ~location ~name ~resource_group_name
    __resource_id =
  let __resource_type = "azurerm_application_insights" in
  let __resource =
    {
      application_type;
      disable_ip_masking;
      force_customer_storage_for_profiler;
      internet_ingestion_enabled;
      internet_query_enabled;
      local_authentication_disabled;
      location;
      name;
      resource_group_name;
      retention_in_days;
      sampling_percentage;
      tags;
      workspace_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_application_insights __resource);
  ()
