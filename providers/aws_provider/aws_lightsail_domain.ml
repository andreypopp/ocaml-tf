(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lightsail_domain = {
  domain_name : string;  (** domain_name *)
}
[@@deriving yojson_of]
(** aws_lightsail_domain *)

let aws_lightsail_domain ~domain_name __resource_id =
  let __resource_type = "aws_lightsail_domain" in
  let __resource = { domain_name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_domain __resource);
  ()
