(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_ipam_scope__timeouts
type aws_vpc_ipam_scope

type t = private {
  arn : string prop;
  description : string prop;
  id : string prop;
  ipam_arn : string prop;
  ipam_id : string prop;
  ipam_scope_type : string prop;
  is_default : bool prop;
  pool_count : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_vpc_ipam_scope :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_vpc_ipam_scope__timeouts ->
  ipam_id:string prop ->
  string ->
  t
