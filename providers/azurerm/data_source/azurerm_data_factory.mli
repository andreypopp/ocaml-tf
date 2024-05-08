(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type github_configuration = {
  account_name : string prop;  (** account_name *)
  branch_name : string prop;  (** branch_name *)
  git_url : string prop;  (** git_url *)
  repository_name : string prop;  (** repository_name *)
  root_folder : string prop;  (** root_folder *)
}

type identity = {
  identity_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type vsts_configuration = {
  account_name : string prop;  (** account_name *)
  branch_name : string prop;  (** branch_name *)
  project_name : string prop;  (** project_name *)
  repository_name : string prop;  (** repository_name *)
  root_folder : string prop;  (** root_folder *)
  tenant_id : string prop;  (** tenant_id *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_data_factory

val azurerm_data_factory :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_data_factory

val yojson_of_azurerm_data_factory : azurerm_data_factory -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  github_configuration : github_configuration list prop;
  id : string prop;
  identity : identity list prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  vsts_configuration : vsts_configuration list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
