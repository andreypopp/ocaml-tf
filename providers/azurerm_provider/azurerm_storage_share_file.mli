(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_share_file__timeouts
type azurerm_storage_share_file

type t = private {
  content_disposition : string prop;
  content_encoding : string prop;
  content_length : float prop;
  content_md5 : string prop;
  content_type : string prop;
  id : string prop;
  metadata : (string * string) list prop;
  name : string prop;
  path : string prop;
  source : string prop;
  storage_share_id : string prop;
}

val azurerm_storage_share_file :
  ?content_disposition:string prop ->
  ?content_encoding:string prop ->
  ?content_md5:string prop ->
  ?content_type:string prop ->
  ?id:string prop ->
  ?metadata:(string * string prop) list ->
  ?path:string prop ->
  ?source:string prop ->
  ?timeouts:azurerm_storage_share_file__timeouts ->
  name:string prop ->
  storage_share_id:string prop ->
  string ->
  t
