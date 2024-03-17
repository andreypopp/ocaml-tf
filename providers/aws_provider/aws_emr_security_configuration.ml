(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_emr_security_configuration = {
  configuration : string;  (** configuration *)
}
[@@deriving yojson_of]
(** aws_emr_security_configuration *)

let aws_emr_security_configuration ~configuration __resource_id =
  let __resource_type = "aws_emr_security_configuration" in
  let __resource = { configuration } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_emr_security_configuration __resource);
  ()
