(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lightsail_bucket = {
  bundle_id : string;  (** bundle_id *)
  force_delete : bool option; [@option]  (** force_delete *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_lightsail_bucket *)

let aws_lightsail_bucket ?force_delete ?tags ~bundle_id ~name
    __resource_id =
  let __resource_type = "aws_lightsail_bucket" in
  let __resource = { bundle_id; force_delete; name; tags } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_bucket __resource);
  ()
