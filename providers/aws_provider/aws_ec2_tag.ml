(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_tag = {
  id : string option; [@option]  (** id *)
  key : string;  (** key *)
  resource_id : string;  (** resource_id *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_ec2_tag *)

let aws_ec2_tag ?id ~key ~resource_id ~value __resource_id =
  let __resource_type = "aws_ec2_tag" in
  let __resource = { id; key; resource_id; value } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_tag __resource);
  ()
