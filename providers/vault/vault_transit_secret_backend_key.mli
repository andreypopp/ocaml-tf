(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_transit_secret_backend_key

val vault_transit_secret_backend_key :
  ?allow_plaintext_backup:bool prop ->
  ?auto_rotate_period:float prop ->
  ?convergent_encryption:bool prop ->
  ?deletion_allowed:bool prop ->
  ?derived:bool prop ->
  ?exportable:bool prop ->
  ?hybrid_key_type_ec:string prop ->
  ?hybrid_key_type_pqc:string prop ->
  ?id:string prop ->
  ?key_size:float prop ->
  ?min_decryption_version:float prop ->
  ?min_encryption_version:float prop ->
  ?namespace:string prop ->
  ?parameter_set:string prop ->
  ?type_:string prop ->
  backend:string prop ->
  name:string prop ->
  unit ->
  vault_transit_secret_backend_key

val yojson_of_vault_transit_secret_backend_key : vault_transit_secret_backend_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allow_plaintext_backup : bool prop;
  auto_rotate_period : float prop;
  backend : string prop;
  convergent_encryption : bool prop;
  deletion_allowed : bool prop;
  derived : bool prop;
  exportable : bool prop;
  hybrid_key_type_ec : string prop;
  hybrid_key_type_pqc : string prop;
  id : string prop;
  key_size : float prop;
  keys : string Tf_core.assoc list prop;
  latest_version : float prop;
  min_available_version : float prop;
  min_decryption_version : float prop;
  min_encryption_version : float prop;
  name : string prop;
  namespace : string prop;
  parameter_set : string prop;
  supports_decryption : bool prop;
  supports_derivation : bool prop;
  supports_encryption : bool prop;
  supports_signing : bool prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?allow_plaintext_backup:bool prop ->
  ?auto_rotate_period:float prop ->
  ?convergent_encryption:bool prop ->
  ?deletion_allowed:bool prop ->
  ?derived:bool prop ->
  ?exportable:bool prop ->
  ?hybrid_key_type_ec:string prop ->
  ?hybrid_key_type_pqc:string prop ->
  ?id:string prop ->
  ?key_size:float prop ->
  ?min_decryption_version:float prop ->
  ?min_encryption_version:float prop ->
  ?namespace:string prop ->
  ?parameter_set:string prop ->
  ?type_:string prop ->
  backend:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?allow_plaintext_backup:bool prop ->
  ?auto_rotate_period:float prop ->
  ?convergent_encryption:bool prop ->
  ?deletion_allowed:bool prop ->
  ?derived:bool prop ->
  ?exportable:bool prop ->
  ?hybrid_key_type_ec:string prop ->
  ?hybrid_key_type_pqc:string prop ->
  ?id:string prop ->
  ?key_size:float prop ->
  ?min_decryption_version:float prop ->
  ?min_encryption_version:float prop ->
  ?namespace:string prop ->
  ?parameter_set:string prop ->
  ?type_:string prop ->
  backend:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
