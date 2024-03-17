(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_s3control_bucket = {
  bucket : string;  (** bucket *)
  outpost_id : string;  (** outpost_id *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_s3control_bucket *)

let aws_s3control_bucket ?tags ~bucket ~outpost_id __resource_id =
  let __resource_type = "aws_s3control_bucket" in
  let __resource = { bucket; outpost_id; tags } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3control_bucket __resource);
  ()
