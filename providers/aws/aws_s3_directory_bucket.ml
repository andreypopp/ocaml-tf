(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type location = {
  name : string prop;  (** name *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** location *)

type aws_s3_directory_bucket = {
  bucket : string prop;  (** bucket *)
  data_redundancy : string prop option; [@option]
      (** data_redundancy *)
  force_destroy : bool prop option; [@option]  (** force_destroy *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  location : location list;
}
[@@deriving yojson_of]
(** aws_s3_directory_bucket *)

let location ?type_ ~name () : location = { name; type_ }

let aws_s3_directory_bucket ?data_redundancy ?force_destroy ?type_
    ~bucket ~location () : aws_s3_directory_bucket =
  { bucket; data_redundancy; force_destroy; type_; location }

type t = {
  arn : string prop;
  bucket : string prop;
  data_redundancy : string prop;
  force_destroy : bool prop;
  id : string prop;
  type_ : string prop;
}

let register ?tf_module ?data_redundancy ?force_destroy ?type_
    ~bucket ~location __resource_id =
  let __resource_type = "aws_s3_directory_bucket" in
  let __resource =
    aws_s3_directory_bucket ?data_redundancy ?force_destroy ?type_
      ~bucket ~location ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_directory_bucket __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       bucket = Prop.computed __resource_type __resource_id "bucket";
       data_redundancy =
         Prop.computed __resource_type __resource_id
           "data_redundancy";
       force_destroy =
         Prop.computed __resource_type __resource_id "force_destroy";
       id = Prop.computed __resource_type __resource_id "id";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
