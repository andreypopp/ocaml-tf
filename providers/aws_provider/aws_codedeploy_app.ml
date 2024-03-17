(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_codedeploy_app = {
  compute_platform : string option; [@option]
      (** compute_platform *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_codedeploy_app *)

let aws_codedeploy_app ?compute_platform ?tags ~name __resource_id =
  let __resource_type = "aws_codedeploy_app" in
  let __resource = { compute_platform; name; tags } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codedeploy_app __resource);
  ()
