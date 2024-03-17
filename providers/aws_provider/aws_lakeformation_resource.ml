(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lakeformation_resource = {
  arn : string;  (** arn *)
  use_service_linked_role : bool option; [@option]
      (** use_service_linked_role *)
}
[@@deriving yojson_of]
(** aws_lakeformation_resource *)

let aws_lakeformation_resource ?use_service_linked_role ~arn
    __resource_id =
  let __resource_type = "aws_lakeformation_resource" in
  let __resource = { arn; use_service_linked_role } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lakeformation_resource __resource);
  ()
