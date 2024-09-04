(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type verification_records__spf = {
  name : string prop;  (** name *)
  ttl : float prop;  (** ttl *)
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}

type verification_records__domain = {
  name : string prop;  (** name *)
  ttl : float prop;  (** ttl *)
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}

type verification_records__dmarc = {
  name : string prop;  (** name *)
  ttl : float prop;  (** ttl *)
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}

type verification_records__dkim2 = {
  name : string prop;  (** name *)
  ttl : float prop;  (** ttl *)
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}

type verification_records__dkim = {
  name : string prop;  (** name *)
  ttl : float prop;  (** ttl *)
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}

type verification_records = {
  dkim : verification_records__dkim list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** dkim *)
  dkim2 : verification_records__dkim2 list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** dkim2 *)
  dmarc : verification_records__dmarc list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** dmarc *)
  domain : verification_records__domain list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** domain *)
  spf : verification_records__spf list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** spf *)
}

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_email_communication_service_domain

val azurerm_email_communication_service_domain :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?user_engagement_tracking_enabled:bool prop ->
  ?timeouts:timeouts ->
  domain_management:string prop ->
  email_service_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_email_communication_service_domain

val yojson_of_azurerm_email_communication_service_domain :
  azurerm_email_communication_service_domain -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  domain_management : string prop;
  email_service_id : string prop;
  from_sender_domain : string prop;
  id : string prop;
  mail_from_sender_domain : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  user_engagement_tracking_enabled : bool prop;
  verification_records : verification_records list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?user_engagement_tracking_enabled:bool prop ->
  ?timeouts:timeouts ->
  domain_management:string prop ->
  email_service_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?user_engagement_tracking_enabled:bool prop ->
  ?timeouts:timeouts ->
  domain_management:string prop ->
  email_service_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
