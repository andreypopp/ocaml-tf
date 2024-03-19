(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_rekognition_collection = {
  collection_id : string prop;
      (** The name of the Rekognition collection *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_rekognition_collection *)

let timeouts ?create () : timeouts = { create }

let aws_rekognition_collection ?tags ?timeouts ~collection_id () :
    aws_rekognition_collection =
  { collection_id; tags; timeouts }

type t = {
  arn : string prop;
  collection_id : string prop;
  face_model_version : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?tags ?timeouts ~collection_id __resource_id
    =
  let __resource_type = "aws_rekognition_collection" in
  let __resource =
    aws_rekognition_collection ?tags ?timeouts ~collection_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_rekognition_collection __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       collection_id =
         Prop.computed __resource_type __resource_id "collection_id";
       face_model_version =
         Prop.computed __resource_type __resource_id
           "face_model_version";
       id = Prop.computed __resource_type __resource_id "id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
