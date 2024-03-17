(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_dx_connection_confirmation = {
  connection_id : string;  (** connection_id *)
}
[@@deriving yojson_of]
(** aws_dx_connection_confirmation *)

let aws_dx_connection_confirmation ~connection_id __resource_id =
  let __resource_type = "aws_dx_connection_confirmation" in
  let __resource = { connection_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dx_connection_confirmation __resource);
  ()
