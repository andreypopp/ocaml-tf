(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_image_block_public_access__timeouts
type aws_ec2_image_block_public_access
type t = private { id : string prop; state : string prop }

val aws_ec2_image_block_public_access :
  ?id:string prop ->
  ?timeouts:aws_ec2_image_block_public_access__timeouts ->
  state:string prop ->
  string ->
  t
