(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lightsail_container_service__private_registry_access__ecr_image_puller_role

type aws_lightsail_container_service__private_registry_access
type aws_lightsail_container_service__public_domain_names__certificate
type aws_lightsail_container_service__public_domain_names
type aws_lightsail_container_service__timeouts
type aws_lightsail_container_service

val aws_lightsail_container_service :
  ?id:string prop ->
  ?is_disabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_lightsail_container_service__timeouts ->
  name:string prop ->
  power:string prop ->
  scale:float prop ->
  private_registry_access:
    aws_lightsail_container_service__private_registry_access list ->
  public_domain_names:
    aws_lightsail_container_service__public_domain_names list ->
  string ->
  unit
