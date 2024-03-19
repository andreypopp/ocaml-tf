(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3control_bucket = {
  bucket : string prop;  (** bucket *)
  id : string prop option; [@option]  (** id *)
  outpost_id : string prop;  (** outpost_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_s3control_bucket *)

let aws_s3control_bucket ?id ?tags ?tags_all ~bucket ~outpost_id () :
    aws_s3control_bucket =
  { bucket; id; outpost_id; tags; tags_all }

type t = {
  arn : string prop;
  bucket : string prop;
  creation_date : string prop;
  id : string prop;
  outpost_id : string prop;
  public_access_block_enabled : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?id ?tags ?tags_all ~bucket ~outpost_id
    __resource_id =
  let __resource_type = "aws_s3control_bucket" in
  let __resource =
    aws_s3control_bucket ?id ?tags ?tags_all ~bucket ~outpost_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3control_bucket __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       bucket = Prop.computed __resource_type __resource_id "bucket";
       creation_date =
         Prop.computed __resource_type __resource_id "creation_date";
       id = Prop.computed __resource_type __resource_id "id";
       outpost_id =
         Prop.computed __resource_type __resource_id "outpost_id";
       public_access_block_enabled =
         Prop.computed __resource_type __resource_id
           "public_access_block_enabled";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
