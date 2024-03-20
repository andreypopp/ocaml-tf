(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type private_registry_access__ecr_image_puller_role

val private_registry_access__ecr_image_puller_role :
  ?is_active:bool prop ->
  unit ->
  private_registry_access__ecr_image_puller_role

type private_registry_access

val private_registry_access :
  ecr_image_puller_role:
    private_registry_access__ecr_image_puller_role list ->
  unit ->
  private_registry_access

type public_domain_names__certificate

val public_domain_names__certificate :
  certificate_name:string prop ->
  domain_names:string prop list ->
  unit ->
  public_domain_names__certificate

type public_domain_names

val public_domain_names :
  certificate:public_domain_names__certificate list ->
  unit ->
  public_domain_names

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_lightsail_container_service

val aws_lightsail_container_service :
  ?id:string prop ->
  ?is_disabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  power:string prop ->
  scale:float prop ->
  private_registry_access:private_registry_access list ->
  public_domain_names:public_domain_names list ->
  unit ->
  aws_lightsail_container_service

val yojson_of_aws_lightsail_container_service :
  aws_lightsail_container_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  availability_zone : string prop;
  created_at : string prop;
  id : string prop;
  is_disabled : bool prop;
  name : string prop;
  power : string prop;
  power_id : string prop;
  principal_arn : string prop;
  private_domain_name : string prop;
  resource_type : string prop;
  scale : float prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?is_disabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  power:string prop ->
  scale:float prop ->
  private_registry_access:private_registry_access list ->
  public_domain_names:public_domain_names list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?is_disabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  power:string prop ->
  scale:float prop ->
  private_registry_access:private_registry_access list ->
  public_domain_names:public_domain_names list ->
  string ->
  t Tf_core.resource
