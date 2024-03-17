(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3_bucket_metric__filter = {
  access_point : string prop option; [@option]  (** access_point *)
  prefix : string prop option; [@option]  (** prefix *)
  tags : (string * string prop) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_metric__filter *)

type aws_s3_bucket_metric = {
  bucket : string prop;  (** bucket *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  filter : aws_s3_bucket_metric__filter list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_metric *)

type t = {
  bucket : string prop;
  id : string prop;
  name : string prop;
}

let aws_s3_bucket_metric ?id ~bucket ~name ~filter __resource_id =
  let __resource_type = "aws_s3_bucket_metric" in
  let __resource =
    ({ bucket; id; name; filter } : aws_s3_bucket_metric)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_bucket_metric __resource);
  let __resource_attributes =
    ({
       bucket = Prop.computed __resource_type __resource_id "bucket";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
