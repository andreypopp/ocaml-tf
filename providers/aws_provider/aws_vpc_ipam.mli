(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_ipam__operating_regions
type aws_vpc_ipam__timeouts
type aws_vpc_ipam

type t = private {
  arn : string prop;
  cascade : bool prop;
  default_resource_discovery_association_id : string prop;
  default_resource_discovery_id : string prop;
  description : string prop;
  id : string prop;
  private_default_scope_id : string prop;
  public_default_scope_id : string prop;
  scope_count : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_vpc_ipam :
  ?cascade:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_vpc_ipam__timeouts ->
  operating_regions:aws_vpc_ipam__operating_regions list ->
  string ->
  t
