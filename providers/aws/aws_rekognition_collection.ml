(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?tags ?timeouts ~collection_id __id =
  let __type = "aws_rekognition_collection" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       collection_id = Prop.computed __type __id "collection_id";
       face_model_version =
         Prop.computed __type __id "face_model_version";
       id = Prop.computed __type __id "id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_rekognition_collection
        (aws_rekognition_collection ?tags ?timeouts ~collection_id ());
    attrs = __attrs;
  }

let register ?tf_module ?tags ?timeouts ~collection_id __id =
  let (r : _ Tf_core.resource) =
    make ?tags ?timeouts ~collection_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
