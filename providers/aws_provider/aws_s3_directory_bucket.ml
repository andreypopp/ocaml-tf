(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3_directory_bucket__location = {
  name : string;  (** name *)
  type_ : string option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_s3_directory_bucket__location *)

type aws_s3_directory_bucket = {
  bucket : string;  (** bucket *)
  location : aws_s3_directory_bucket__location list;
}
[@@deriving yojson_of]
(** aws_s3_directory_bucket *)

let aws_s3_directory_bucket ~bucket ~location __resource_id =
  let __resource_type = "aws_s3_directory_bucket" in
  let __resource = { bucket; location } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_directory_bucket __resource);
  ()
