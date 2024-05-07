(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type router = {
  platform : string prop;  (** platform *)
  router_type_identifier : string prop;
      (** router_type_identifier *)
  software : string prop;  (** software *)
  vendor : string prop;  (** vendor *)
  xslt_template_name : string prop;  (** xslt_template_name *)
  xslt_template_name_for_mac_sec : string prop;
      (** xslt_template_name_for_mac_sec *)
}

type aws_dx_router_configuration

val aws_dx_router_configuration :
  ?id:string prop ->
  router_type_identifier:string prop ->
  virtual_interface_id:string prop ->
  unit ->
  aws_dx_router_configuration

val yojson_of_aws_dx_router_configuration :
  aws_dx_router_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  customer_router_config : string prop;
  id : string prop;
  router : router list prop;
  router_type_identifier : string prop;
  virtual_interface_id : string prop;
  virtual_interface_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  router_type_identifier:string prop ->
  virtual_interface_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  router_type_identifier:string prop ->
  virtual_interface_id:string prop ->
  string ->
  t Tf_core.resource
