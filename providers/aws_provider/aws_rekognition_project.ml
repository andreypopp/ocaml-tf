(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_rekognition_project__timeouts = {
  create : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
}
[@@deriving yojson_of]
(** aws_rekognition_project__timeouts *)

type aws_rekognition_project = {
  feature : string option; [@option]  (** feature *)
  name : string;  (** name *)
  timeouts : aws_rekognition_project__timeouts option;
}
[@@deriving yojson_of]
(** aws_rekognition_project *)

let aws_rekognition_project ?feature ?timeouts ~name __resource_id =
  let __resource_type = "aws_rekognition_project" in
  let __resource = { feature; name; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_rekognition_project __resource);
  ()
