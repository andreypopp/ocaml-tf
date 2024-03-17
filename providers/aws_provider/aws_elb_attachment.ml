(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_elb_attachment = {
  elb : string;  (** elb *)
  instance : string;  (** instance *)
}
[@@deriving yojson_of]
(** aws_elb_attachment *)

let aws_elb_attachment ~elb ~instance __resource_id =
  let __resource_type = "aws_elb_attachment" in
  let __resource = { elb; instance } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_elb_attachment __resource);
  ()
