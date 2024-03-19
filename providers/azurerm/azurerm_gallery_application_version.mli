(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type manage_action

val manage_action :
  ?update:string prop ->
  install:string prop ->
  remove:string prop ->
  unit ->
  manage_action

type source

val source :
  ?default_configuration_link:string prop ->
  media_link:string prop ->
  unit ->
  source

type target_region

val target_region :
  ?exclude_from_latest:bool prop ->
  ?storage_account_type:string prop ->
  name:string prop ->
  regional_replica_count:float prop ->
  unit ->
  target_region

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_gallery_application_version

val azurerm_gallery_application_version :
  ?config_file:string prop ->
  ?enable_health_check:bool prop ->
  ?end_of_life_date:string prop ->
  ?exclude_from_latest:bool prop ->
  ?id:string prop ->
  ?package_file:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  gallery_application_id:string prop ->
  location:string prop ->
  name:string prop ->
  manage_action:manage_action list ->
  source:source list ->
  target_region:target_region list ->
  unit ->
  azurerm_gallery_application_version

val yojson_of_azurerm_gallery_application_version :
  azurerm_gallery_application_version -> json

(** RESOURCE REGISTRATION *)

type t = private {
  config_file : string prop;
  enable_health_check : bool prop;
  end_of_life_date : string prop;
  exclude_from_latest : bool prop;
  gallery_application_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  package_file : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?config_file:string prop ->
  ?enable_health_check:bool prop ->
  ?end_of_life_date:string prop ->
  ?exclude_from_latest:bool prop ->
  ?id:string prop ->
  ?package_file:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  gallery_application_id:string prop ->
  location:string prop ->
  name:string prop ->
  manage_action:manage_action list ->
  source:source list ->
  target_region:target_region list ->
  string ->
  t
