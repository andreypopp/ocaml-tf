(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type certificate_authority = {
  certificate_arn : string prop;  (** certificate_arn *)
  certificate_serial : string prop;  (** certificate_serial *)
  status : string prop;  (** status *)
  status_message : string prop;  (** status_message *)
}

type certificates = {
  certificate_arn : string prop;  (** certificate_arn *)
  certificate_serial : string prop;  (** certificate_serial *)
  status : string prop;  (** status *)
  status_message : string prop;  (** status_message *)
}

type encryption_configuration = {
  key_id : string prop;  (** key_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type tls_inspection_configuration__server_certificate_configuration__check_certificate_revocation_status

val tls_inspection_configuration__server_certificate_configuration__check_certificate_revocation_status :
  ?revoked_status_action:string prop ->
  ?unknown_status_action:string prop ->
  unit ->
  tls_inspection_configuration__server_certificate_configuration__check_certificate_revocation_status

type tls_inspection_configuration__server_certificate_configuration__scope__destination

val tls_inspection_configuration__server_certificate_configuration__scope__destination :
  address_definition:string prop ->
  unit ->
  tls_inspection_configuration__server_certificate_configuration__scope__destination

type tls_inspection_configuration__server_certificate_configuration__scope__destination_ports

val tls_inspection_configuration__server_certificate_configuration__scope__destination_ports :
  from_port:float prop ->
  to_port:float prop ->
  unit ->
  tls_inspection_configuration__server_certificate_configuration__scope__destination_ports

type tls_inspection_configuration__server_certificate_configuration__scope__source

val tls_inspection_configuration__server_certificate_configuration__scope__source :
  address_definition:string prop ->
  unit ->
  tls_inspection_configuration__server_certificate_configuration__scope__source

type tls_inspection_configuration__server_certificate_configuration__scope__source_ports

val tls_inspection_configuration__server_certificate_configuration__scope__source_ports :
  from_port:float prop ->
  to_port:float prop ->
  unit ->
  tls_inspection_configuration__server_certificate_configuration__scope__source_ports

type tls_inspection_configuration__server_certificate_configuration__scope

val tls_inspection_configuration__server_certificate_configuration__scope :
  ?destination:
    tls_inspection_configuration__server_certificate_configuration__scope__destination
    list ->
  ?destination_ports:
    tls_inspection_configuration__server_certificate_configuration__scope__destination_ports
    list ->
  ?source:
    tls_inspection_configuration__server_certificate_configuration__scope__source
    list ->
  ?source_ports:
    tls_inspection_configuration__server_certificate_configuration__scope__source_ports
    list ->
  protocols:float prop list ->
  unit ->
  tls_inspection_configuration__server_certificate_configuration__scope

type tls_inspection_configuration__server_certificate_configuration__server_certificate

val tls_inspection_configuration__server_certificate_configuration__server_certificate :
  ?resource_arn:string prop ->
  unit ->
  tls_inspection_configuration__server_certificate_configuration__server_certificate

type tls_inspection_configuration__server_certificate_configuration

val tls_inspection_configuration__server_certificate_configuration :
  ?certificate_authority_arn:string prop ->
  ?check_certificate_revocation_status:
    tls_inspection_configuration__server_certificate_configuration__check_certificate_revocation_status
    list ->
  ?scope:
    tls_inspection_configuration__server_certificate_configuration__scope
    list ->
  ?server_certificate:
    tls_inspection_configuration__server_certificate_configuration__server_certificate
    list ->
  unit ->
  tls_inspection_configuration__server_certificate_configuration

type tls_inspection_configuration

val tls_inspection_configuration :
  ?server_certificate_configuration:
    tls_inspection_configuration__server_certificate_configuration
    list ->
  unit ->
  tls_inspection_configuration

type aws_networkfirewall_tls_inspection_configuration

val aws_networkfirewall_tls_inspection_configuration :
  ?description:string prop ->
  ?encryption_configuration:encryption_configuration list ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  ?tls_inspection_configuration:tls_inspection_configuration list ->
  name:string prop ->
  unit ->
  aws_networkfirewall_tls_inspection_configuration

val yojson_of_aws_networkfirewall_tls_inspection_configuration :
  aws_networkfirewall_tls_inspection_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  certificate_authority : certificate_authority list prop;
  certificates : certificates list prop;
  description : string prop;
  encryption_configuration : encryption_configuration list prop;
  id : string prop;
  name : string prop;
  number_of_associations : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  tls_inspection_configuration_id : string prop;
  update_token : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?encryption_configuration:encryption_configuration list ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  ?tls_inspection_configuration:tls_inspection_configuration list ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?encryption_configuration:encryption_configuration list ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  ?tls_inspection_configuration:tls_inspection_configuration list ->
  name:string prop ->
  string ->
  t Tf_core.resource
