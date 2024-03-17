(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_serial_console_access
type t = private { enabled : bool prop; id : string prop }

val aws_ec2_serial_console_access :
  ?enabled:bool prop -> ?id:string prop -> string -> t
