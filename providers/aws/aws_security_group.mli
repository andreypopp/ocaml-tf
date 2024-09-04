(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type egress = {
  cidr_blocks : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** cidr_blocks *)
  description : string prop;  (** description *)
  from_port : float prop;  (** from_port *)
  ipv6_cidr_blocks : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** ipv6_cidr_blocks *)
  prefix_list_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** prefix_list_ids *)
  protocol : string prop;  (** protocol *)
  security_groups : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** security_groups *)
  self : bool prop;  (** self *)
  to_port : float prop;  (** to_port *)
}

type ingress = {
  cidr_blocks : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** cidr_blocks *)
  description : string prop;  (** description *)
  from_port : float prop;  (** from_port *)
  ipv6_cidr_blocks : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** ipv6_cidr_blocks *)
  prefix_list_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** prefix_list_ids *)
  protocol : string prop;  (** protocol *)
  security_groups : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** security_groups *)
  self : bool prop;  (** self *)
  to_port : float prop;  (** to_port *)
}

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_security_group

val aws_security_group :
  ?description:string prop ->
  ?egress:egress list ->
  ?id:string prop ->
  ?ingress:ingress list ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?revoke_rules_on_delete:bool prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?vpc_id:string prop ->
  ?timeouts:timeouts ->
  unit ->
  aws_security_group

val yojson_of_aws_security_group : aws_security_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  egress : egress list prop;
  id : string prop;
  ingress : ingress list prop;
  name : string prop;
  name_prefix : string prop;
  owner_id : string prop;
  revoke_rules_on_delete : bool prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?egress:egress list ->
  ?id:string prop ->
  ?ingress:ingress list ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?revoke_rules_on_delete:bool prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?vpc_id:string prop ->
  ?timeouts:timeouts ->
  string ->
  t

val make :
  ?description:string prop ->
  ?egress:egress list ->
  ?id:string prop ->
  ?ingress:ingress list ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?revoke_rules_on_delete:bool prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?vpc_id:string prop ->
  ?timeouts:timeouts ->
  string ->
  t Tf_core.resource
