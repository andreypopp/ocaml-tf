(** Manages a profile mapping. This resource allows you to manage a profile mapping by source and target IDs. -> **NOTE:** If using this resource with OAuth2 scopes, this resource requires `okta.profileMappings.manage` scope. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type mappings

val mappings :
  ?push_status:string prop ->
  expression:string prop ->
  id:string prop ->
  unit ->
  mappings

type okta_profile_mapping

val okta_profile_mapping :
  ?always_apply:bool prop ->
  ?delete_when_absent:bool prop ->
  ?id:string prop ->
  source_id:string prop ->
  target_id:string prop ->
  mappings:mappings list ->
  unit ->
  okta_profile_mapping

val yojson_of_okta_profile_mapping : okta_profile_mapping -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  always_apply : bool prop;
  delete_when_absent : bool prop;
  id : string prop;
  source_id : string prop;
  source_name : string prop;
  source_type : string prop;
  target_id : string prop;
  target_name : string prop;
  target_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?always_apply:bool prop ->
  ?delete_when_absent:bool prop ->
  ?id:string prop ->
  source_id:string prop ->
  target_id:string prop ->
  mappings:mappings list ->
  string ->
  t

val make :
  ?always_apply:bool prop ->
  ?delete_when_absent:bool prop ->
  ?id:string prop ->
  source_id:string prop ->
  target_id:string prop ->
  mappings:mappings list ->
  string ->
  t Tf_core.resource
