(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_shared_image__identifier = {
  offer : string prop;  (** offer *)
  publisher : string prop;  (** publisher *)
  sku : string prop;  (** sku *)
}
[@@deriving yojson_of]
(** azurerm_shared_image__identifier *)

type azurerm_shared_image__purchase_plan = {
  name : string prop;  (** name *)
  product : string prop option; [@option]  (** product *)
  publisher : string prop option; [@option]  (** publisher *)
}
[@@deriving yojson_of]
(** azurerm_shared_image__purchase_plan *)

type azurerm_shared_image__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_shared_image__timeouts *)

type azurerm_shared_image = {
  accelerated_network_support_enabled : bool prop option; [@option]
      (** accelerated_network_support_enabled *)
  architecture : string prop option; [@option]  (** architecture *)
  confidential_vm_enabled : bool prop option; [@option]
      (** confidential_vm_enabled *)
  confidential_vm_supported : bool prop option; [@option]
      (** confidential_vm_supported *)
  description : string prop option; [@option]  (** description *)
  disk_types_not_allowed : string prop list option; [@option]
      (** disk_types_not_allowed *)
  end_of_life_date : string prop option; [@option]
      (** end_of_life_date *)
  eula : string prop option; [@option]  (** eula *)
  gallery_name : string prop;  (** gallery_name *)
  hyper_v_generation : string prop option; [@option]
      (** hyper_v_generation *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  max_recommended_memory_in_gb : float prop option; [@option]
      (** max_recommended_memory_in_gb *)
  max_recommended_vcpu_count : float prop option; [@option]
      (** max_recommended_vcpu_count *)
  min_recommended_memory_in_gb : float prop option; [@option]
      (** min_recommended_memory_in_gb *)
  min_recommended_vcpu_count : float prop option; [@option]
      (** min_recommended_vcpu_count *)
  name : string prop;  (** name *)
  os_type : string prop;  (** os_type *)
  privacy_statement_uri : string prop option; [@option]
      (** privacy_statement_uri *)
  release_note_uri : string prop option; [@option]
      (** release_note_uri *)
  resource_group_name : string prop;  (** resource_group_name *)
  specialized : bool prop option; [@option]  (** specialized *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  trusted_launch_enabled : bool prop option; [@option]
      (** trusted_launch_enabled *)
  trusted_launch_supported : bool prop option; [@option]
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
