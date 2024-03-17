(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_shared_image__identifier = {
  offer : string;  (** offer *)
  publisher : string;  (** publisher *)
  sku : string;  (** sku *)
}
[@@deriving yojson_of]
(** azurerm_shared_image__identifier *)

type azurerm_shared_image__purchase_plan = {
  name : string;  (** name *)
  product : string option; [@option]  (** product *)
  publisher : string option; [@option]  (** publisher *)
}
[@@deriving yojson_of]
(** azurerm_shared_image__purchase_plan *)

type azurerm_shared_image__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_shared_image__timeouts *)

type azurerm_shared_image = {
  accelerated_network_support_enabled : bool option; [@option]
      (** accelerated_network_support_enabled *)
  architecture : string option; [@option]  (** architecture *)
  confidential_vm_enabled : bool option; [@option]
      (** confidential_vm_enabled *)
  confidential_vm_supported : bool option; [@option]
      (** confidential_vm_supported *)
  description : string option; [@option]  (** description *)
  disk_types_not_allowed : string list option; [@option]
      (** disk_types_not_allowed *)
  end_of_life_date : string option; [@option]
      (** end_of_life_date *)
  eula : string option; [@option]  (** eula *)
  gallery_name : string;  (** gallery_name *)
  hyper_v_generation : string option; [@option]
      (** hyper_v_generation *)
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  max_recommended_memory_in_gb : float option; [@option]
      (** max_recommended_memory_in_gb *)
  max_recommended_vcpu_count : float option; [@option]
      (** max_recommended_vcpu_count *)
  min_recommended_memory_in_gb : float option; [@option]
      (** min_recommended_memory_in_gb *)
  min_recommended_vcpu_count : float option; [@option]
      (** min_recommended_vcpu_count *)
  name : string;  (** name *)
  os_type : string;  (** os_type *)
  privacy_statement_uri : string option; [@option]
      (** privacy_statement_uri *)
  release_note_uri : string option; [@option]
      (** release_note_uri *)
  resource_group_name : string;  (** resource_group_name *)
  specialized : bool option; [@option]  (** specialized *)
  tags : (string * string) list option; [@option]  (** tags *)
  trusted_launch_enabled : bool option; [@option]
      (** trusted_launch_enabled *)
  trusted_launch_supported : bool option; [@option]
      (** trusted_launch_supported *)
  identifier : azurerm_shared_image__identifier list;
  purchase_plan : azurerm_shared_image__purchase_plan list;
  timeouts : azurerm_shared_image__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_shared_image *)

let azurerm_shared_image ?accelerated_network_support_enabled
    ?architecture ?confidential_vm_enabled ?confidential_vm_supported
    ?description ?disk_types_not_allowed ?end_of_life_date ?eula
    ?hyper_v_generation ?id ?max_recommended_memory_in_gb
    ?max_recommended_vcpu_count ?min_recommended_memory_in_gb
    ?min_recommended_vcpu_count ?privacy_statement_uri
    ?release_note_uri ?specialized ?tags ?trusted_launch_enabled
    ?trusted_launch_supported ?timeouts ~gallery_name ~location ~name
    ~os_type ~resource_group_name ~identifier ~purchase_plan
    __resource_id =
  let __resource_type = "azurerm_shared_image" in
  let __resource =
    {
      accelerated_network_support_enabled;
      architecture;
      confidential_vm_enabled;
      confidential_vm_supported;
      description;
      disk_types_not_allowed;
      end_of_life_date;
      eula;
      gallery_name;
      hyper_v_generation;
      id;
      location;
      max_recommended_memory_in_gb;
      max_recommended_vcpu_count;
      min_recommended_memory_in_gb;
      min_recommended_vcpu_count;
      name;
      os_type;
      privacy_statement_uri;
      release_note_uri;
      resource_group_name;
      specialized;
      tags;
      trusted_launch_enabled;
      trusted_launch_supported;
      identifier;
      purchase_plan;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_shared_image __resource);
  ()
