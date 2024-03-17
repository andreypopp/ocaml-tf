(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_automation_dsc_configuration__timeouts
type azurerm_automation_dsc_configuration

type t = private {
  automation_account_name : string prop;
  content_embedded : string prop;
  description : string prop;
  id : string prop;
  location : string prop;
  log_verbose : bool prop;
  name : string prop;
  resource_group_name : string prop;
  state : string prop;
  tags : (string * string) list prop;
}

val azurerm_automation_dsc_configuration :
  ?description:string prop ->
  ?id:string prop ->
  ?log_verbose:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_automation_dsc_configuration__timeouts ->
  automation_account_name:string prop ->
  content_embedded:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
