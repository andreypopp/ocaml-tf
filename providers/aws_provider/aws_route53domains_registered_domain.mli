(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53domains_registered_domain__admin_contact
type aws_route53domains_registered_domain__billing_contact
type aws_route53domains_registered_domain__name_server
type aws_route53domains_registered_domain__registrant_contact
type aws_route53domains_registered_domain__tech_contact
type aws_route53domains_registered_domain__timeouts
type aws_route53domains_registered_domain

val aws_route53domains_registered_domain :
  ?admin_privacy:bool prop ->
  ?auto_renew:bool prop ->
  ?billing_privacy:bool prop ->
  ?id:string prop ->
  ?registrant_privacy:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?tech_privacy:bool prop ->
  ?transfer_lock:bool prop ->
  ?timeouts:aws_route53domains_registered_domain__timeouts ->
  domain_name:string prop ->
  admin_contact:
    aws_route53domains_registered_domain__admin_contact list ->
  billing_contact:
    aws_route53domains_registered_domain__billing_contact list ->
  name_server:aws_route53domains_registered_domain__name_server list ->
  registrant_contact:
    aws_route53domains_registered_domain__registrant_contact list ->
  tech_contact:
    aws_route53domains_registered_domain__tech_contact list ->
  string ->
  unit
