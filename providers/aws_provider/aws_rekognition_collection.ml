(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_rekognition_collection__timeouts = {
  create : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
}
[@@deriving yojson_of]
(** aws_rekognition_collection__timeouts *)

type aws_rekognition_collection = {
  collection_id : string prop;
      (** The name of the Rekognition collection *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : aws_rekognition_collection__timeouts option;
}
[@@deriving yojson_of]
(** aws_rekognition_collection *)

let aws_rekognition_collection ?tags ?timeouts ~collection_id
    __resource_id =
  let __resource_type = "aws_rekognition_collection" in
  let __resource = { collection_id; tags; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_rekognition_collection __resource);
  ()
