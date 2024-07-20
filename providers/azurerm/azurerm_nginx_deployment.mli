(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type auto_scale_profile

val auto_scale_profile :
  max_capacity:float prop ->
  min_capacity:float prop ->
  name:string prop ->
  unit ->
  auto_scale_profile

type configuration__config_file

val configuration__config_file :
  content:string prop ->
  virtual_path:string prop ->
  unit ->
  configuration__config_file

type configuration__protected_file

val configuration__protected_file :
  content:string prop ->
  virtual_path:string prop ->
  unit ->
  configuration__protected_file

type configuration

val configuration :
  ?package_data:string prop ->
  root_file:string prop ->
  config_file:configuration__config_file list ->
  protected_file:configuration__protected_file list ->
  unit ->
  configuration

type frontend_private

val frontend_private :
  allocation_method:string prop ->
  ip_address:string prop ->
  subnet_id:string prop ->
  unit ->
  frontend_private

type frontend_public

val frontend_public :
  ?ip_address:string prop list -> unit -> frontend_public

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type logging_storage_account

val logging_storage_account :
  ?container_name:string prop ->
  ?name:string prop ->
  unit ->
  logging_storage_account

type network_interface

val network_interface :
  subnet_id:string prop -> unit -> network_interface

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_nginx_deployment

val azurerm_nginx_deployment :
  ?automatic_upgrade_channel:string prop ->
  ?capacity:float prop ->
  ?diagnose_support_enabled:bool prop ->
  ?email:string prop ->
  ?id:string prop ->
  ?managed_resource_group:string prop ->
  ?tags:(string * string prop) list ->
  ?auto_scale_profile:auto_scale_profile list ->
  ?configuration:configuration list ->
  ?frontend_private:frontend_private list ->
  ?frontend_public:frontend_public list ->
  ?identity:identity list ->
  ?logging_storage_account:logging_storage_account list ->
  ?network_interface:network_interface list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  unit ->
  azurerm_nginx_deployment

val yojson_of_azurerm_nginx_deployment :
  azurerm_nginx_deployment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  automatic_upgrade_channel : string prop;
  capacity : float prop;
  diagnose_support_enabled : bool prop;
  email : string prop;
  id : string prop;
  ip_address : string prop;
  location : string prop;
  managed_resource_group : string prop;
  name : string prop;
  nginx_version : string prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?automatic_upgrade_channel:string prop ->
  ?capacity:float prop ->
  ?diagnose_support_enabled:bool prop ->
  ?email:string prop ->
  ?id:string prop ->
  ?managed_resource_group:string prop ->
  ?tags:(string * string prop) list ->
  ?auto_scale_profile:auto_scale_profile list ->
  ?configuration:configuration list ->
  ?frontend_private:frontend_private list ->
  ?frontend_public:frontend_public list ->
  ?identity:identity list ->
  ?logging_storage_account:logging_storage_account list ->
  ?network_interface:network_interface list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  string ->
  t

val make :
  ?automatic_upgrade_channel:string prop ->
  ?capacity:float prop ->
  ?diagnose_support_enabled:bool prop ->
  ?email:string prop ->
  ?id:string prop ->
  ?managed_resource_group:string prop ->
  ?tags:(string * string prop) list ->
  ?auto_scale_profile:auto_scale_profile list ->
  ?configuration:configuration list ->
  ?frontend_private:frontend_private list ->
  ?frontend_public:frontend_public list ->
  ?identity:identity list ->
  ?logging_storage_account:logging_storage_account list ->
  ?network_interface:network_interface list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  string ->
  t Tf_core.resource
