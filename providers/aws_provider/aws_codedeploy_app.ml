(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_codedeploy_app = {
  compute_platform : string option; [@option]
      (** compute_platform *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]  (** tags_all *)
}
[@@deriving yojson_of]
(** aws_codedeploy_app *)

let aws_codedeploy_app ?compute_platform ?id ?tags ?tags_all ~name
    __resource_id =
  let __resource_type = "aws_codedeploy_app" in
  let __resource = { compute_platform; id; name; tags; tags_all } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codedeploy_app __resource);
  ()
