(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_managed_prefix_list__entry
type aws_ec2_managed_prefix_list

type t = private {
  address_family : string prop;
  arn : string prop;
  id : string prop;
  max_entries : float prop;
  name : string prop;
  owner_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version : float prop;
}

val aws_ec2_managed_prefix_list :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  address_family:string prop ->
  max_entries:float prop ->
  name:string prop ->
  entry:aws_ec2_managed_prefix_list__entry list ->
  string ->
  t
