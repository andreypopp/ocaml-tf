(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identifier

val identifier :
  offer:string prop ->
  publisher:string prop ->
  sku:string prop ->
  unit ->
  identifier

type purchase_plan

val purchase_plan :
  ?product:string prop ->
  ?publisher:string prop ->
  name:string prop ->
  unit ->
  purchase_plan

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_shared_image

val azurerm_shared_image :
  ?accelerated_network_support_enabled:bool prop ->
  ?architecture:string prop ->
  ?confidential_vm_enabled:bool prop ->
  ?confidential_vm_supported:bool prop ->
  ?description:string prop ->
  ?disk_types_not_allowed:string prop list ->
  ?end_of_life_date:string prop ->
  ?eula:string prop ->
  ?hyper_v_generation:string prop ->
  ?id:string prop ->
  ?max_recommended_memory_in_gb:float prop ->
  ?max_recommended_vcpu_count:float prop ->
  ?min_recommended_memory_in_gb:float prop ->
  ?min_recommended_vcpu_count:float prop ->
  ?privacy_statement_uri:string prop ->
  ?release_note_uri:string prop ->
  ?specialized:bool prop ->
  ?tags:string prop Tf_core.assoc ->
  ?trusted_launch_enabled:bool prop ->
  ?trusted_launch_supported:bool prop ->
  ?purchase_plan:purchase_plan list ->
  ?timeouts:timeouts ->
  gallery_name:string prop ->
  location:string prop ->
  name:string prop ->
  os_type:string prop ->
  resource_group_name:string prop ->
  identifier:identifier list ->
  unit ->
  azurerm_shared_image

val yojson_of_azurerm_shared_image : azurerm_shared_image -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  accelerated_network_support_enabled : bool prop;
  architecture : string prop;
  confidential_vm_enabled : bool prop;
  confidential_vm_supported : bool prop;
  description : string prop;
  disk_types_not_allowed : string list prop;
  end_of_life_date : string prop;
  eula : string prop;
  gallery_name : string prop;
  hyper_v_generation : string prop;
  id : string prop;
  location : string prop;
  max_recommended_memory_in_gb : float prop;
  max_recommended_vcpu_count : float prop;
  min_recommended_memory_in_gb : float prop;
  min_recommended_vcpu_count : float prop;
  name : string prop;
  os_type : string prop;
  privacy_statement_uri : string prop;
  release_note_uri : string prop;
  resource_group_name : string prop;
  specialized : bool prop;
  tags : string Tf_core.assoc prop;
  trusted_launch_enabled : bool prop;
  trusted_launch_supported : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?accelerated_network_support_enabled:bool prop ->
  ?architecture:string prop ->
  ?confidential_vm_enabled:bool prop ->
  ?confidential_vm_supported:bool prop ->
  ?description:string prop ->
  ?disk_types_not_allowed:string prop list ->
  ?end_of_life_date:string prop ->
  ?eula:string prop ->
  ?hyper_v_generation:string prop ->
  ?id:string prop ->
  ?max_recommended_memory_in_gb:float prop ->
  ?max_recommended_vcpu_count:float prop ->
  ?min_recommended_memory_in_gb:float prop ->
  ?min_recommended_vcpu_count:float prop ->
  ?privacy_statement_uri:string prop ->
  ?release_note_uri:string prop ->
  ?specialized:bool prop ->
  ?tags:string prop Tf_core.assoc ->
  ?trusted_launch_enabled:bool prop ->
  ?trusted_launch_supported:bool prop ->
  ?purchase_plan:purchase_plan list ->
  ?timeouts:timeouts ->
  gallery_name:string prop ->
  location:string prop ->
  name:string prop ->
  os_type:string prop ->
  resource_group_name:string prop ->
  identifier:identifier list ->
  string ->
  t

val make :
  ?accelerated_network_support_enabled:bool prop ->
  ?architecture:string prop ->
  ?confidential_vm_enabled:bool prop ->
  ?confidential_vm_supported:bool prop ->
  ?description:string prop ->
  ?disk_types_not_allowed:string prop list ->
  ?end_of_life_date:string prop ->
  ?eula:string prop ->
  ?hyper_v_generation:string prop ->
  ?id:string prop ->
  ?max_recommended_memory_in_gb:float prop ->
  ?max_recommended_vcpu_count:float prop ->
  ?min_recommended_memory_in_gb:float prop ->
  ?min_recommended_vcpu_count:float prop ->
  ?privacy_statement_uri:string prop ->
  ?release_note_uri:string prop ->
  ?specialized:bool prop ->
  ?tags:string prop Tf_core.assoc ->
  ?trusted_launch_enabled:bool prop ->
  ?trusted_launch_supported:bool prop ->
  ?purchase_plan:purchase_plan list ->
  ?timeouts:timeouts ->
  gallery_name:string prop ->
  location:string prop ->
  name:string prop ->
  os_type:string prop ->
  resource_group_name:string prop ->
  identifier:identifier list ->
  string ->
  t Tf_core.resource
