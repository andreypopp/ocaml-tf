(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_rekognition_project__timeouts = {
  create : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
}
[@@deriving yojson_of]
(** aws_rekognition_project__timeouts *)

type aws_rekognition_project = {
  auto_update : string prop option; [@option]  (** auto_update *)
  feature : string prop option; [@option]  (** feature *)
  name : string prop;  (** name *)
  timeouts : aws_rekognition_project__timeouts option;
}
[@@deriving yojson_of]
(** aws_rekognition_project *)

type t = {
  arn : string prop;
  auto_update : string prop;
  feature : string prop;
  id : string prop;
  name : string prop;
}

let aws_rekognition_project ?auto_update ?feature ?timeouts ~name
    __resource_id =
  let __resource_type = "aws_rekognition_project" in
  let __resource =
    ({ auto_update; feature; name; timeouts }
      : aws_rekognition_project)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_rekognition_project __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       auto_update =
         Prop.computed __resource_type __resource_id "auto_update";
       feature =
         Prop.computed __resource_type __resource_id "feature";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
