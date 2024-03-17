(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iot_thing_principal_attachment = {
  principal : string;  (** principal *)
  thing : string;  (** thing *)
}
[@@deriving yojson_of]
(** aws_iot_thing_principal_attachment *)

let aws_iot_thing_principal_attachment ~principal ~thing
    __resource_id =
  let __resource_type = "aws_iot_thing_principal_attachment" in
  let __resource = { principal; thing } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iot_thing_principal_attachment __resource);
  ()
