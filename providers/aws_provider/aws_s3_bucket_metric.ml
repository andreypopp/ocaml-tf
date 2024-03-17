(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3_bucket_metric__filter = {
  access_point : string option; [@option]  (** access_point *)
  prefix : string option; [@option]  (** prefix *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_metric__filter *)

type aws_s3_bucket_metric = {
  bucket : string;  (** bucket *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  filter : aws_s3_bucket_metric__filter list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_metric *)

let aws_s3_bucket_metric ?id ~bucket ~name ~filter __resource_id =
  let __resource_type = "aws_s3_bucket_metric" in
  let __resource = { bucket; id; name; filter } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_bucket_metric __resource);
  ()
