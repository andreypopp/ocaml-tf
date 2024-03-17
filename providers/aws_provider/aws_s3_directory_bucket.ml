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
  data_redundancy : string option; [@option]  (** data_redundancy *)
  force_destroy : bool option; [@option]  (** force_destroy *)
  type_ : string option; [@option] [@key "type"]  (** type *)
  location : aws_s3_directory_bucket__location list;
}
[@@deriving yojson_of]
(** aws_s3_directory_bucket *)

let aws_s3_directory_bucket ?data_redundancy ?force_destroy ?type_
    ~bucket ~location __resource_id =
  let __resource_type = "aws_s3_directory_bucket" in
  let __resource =
    { bucket; data_redundancy; force_destroy; type_; location }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_directory_bucket __resource);
  ()
