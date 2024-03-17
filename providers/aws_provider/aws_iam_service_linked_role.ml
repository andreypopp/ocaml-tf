(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iam_service_linked_role = {
  aws_service_name : string;  (** aws_service_name *)
  custom_suffix : string option; [@option]  (** custom_suffix *)
  description : string option; [@option]  (** description *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_iam_service_linked_role *)

let aws_iam_service_linked_role ?custom_suffix ?description ?tags
    ~aws_service_name __resource_id =
  let __resource_type = "aws_iam_service_linked_role" in
  let __resource =
    { aws_service_name; custom_suffix; description; tags }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_service_linked_role __resource);
  ()
