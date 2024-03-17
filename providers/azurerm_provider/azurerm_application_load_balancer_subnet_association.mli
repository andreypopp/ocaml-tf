(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_application_load_balancer_subnet_association__timeouts
type azurerm_application_load_balancer_subnet_association

type t = private {
  application_load_balancer_id : string prop;
  id : string prop;
  name : string prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
}

val azurerm_application_load_balancer_subnet_association :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:
    azurerm_application_load_balancer_subnet_association__timeouts ->
  application_load_balancer_id:string prop ->
  name:string prop ->
  subnet_id:string prop ->
  string ->
  t
