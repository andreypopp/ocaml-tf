(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dx_connection_association = {
  connection_id : string prop;  (** connection_id *)
  id : string prop option; [@option]  (** id *)
  lag_id : string prop;  (** lag_id *)
}
[@@deriving yojson_of]
(** aws_dx_connection_association *)

let aws_dx_connection_association ?id ~connection_id ~lag_id
    __resource_id =
  let __resource_type = "aws_dx_connection_association" in
  let __resource = { connection_id; id; lag_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dx_connection_association __resource);
  ()
