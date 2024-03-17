(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lightsail_bucket = {
  bundle_id : string;  (** bundle_id *)
  force_delete : bool option; [@option]  (** force_delete *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]  (** tags_all *)
}
[@@deriving yojson_of]
(** aws_lightsail_bucket *)

let aws_lightsail_bucket ?force_delete ?id ?tags ?tags_all ~bundle_id
    ~name __resource_id =
  let __resource_type = "aws_lightsail_bucket" in
  let __resource =
    { bundle_id; force_delete; id; name; tags; tags_all }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_bucket __resource);
  ()
