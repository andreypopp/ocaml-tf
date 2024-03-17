(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_shared_image__identifier
type azurerm_shared_image__purchase_plan
type azurerm_shared_image__timeouts
type azurerm_shared_image

type t = private {
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
  tags : (string * string) list prop;
  trusted_launch_enabled : bool prop;
  trusted_launch_supported : bool prop;
}

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
  ?tags:(string * string prop) list ->
  ?trusted_launch_enabled:bool prop ->
  ?trusted_launch_supported:bool prop ->
  ?timeouts:azurerm_shared_image__timeouts ->
  gallery_name:string prop ->
  location:string prop ->
  name:string prop ->
  os_type:string prop ->
  resource_group_name:string prop ->
  identifier:azurerm_shared_image__identifier list ->
  purchase_plan:azurerm_shared_image__purchase_plan list ->
  string ->
  t
