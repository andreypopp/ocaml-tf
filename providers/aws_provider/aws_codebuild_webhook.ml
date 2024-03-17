(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_codebuild_webhook__filter_group__filter = {
  exclude_matched_pattern : bool option; [@option]
      (** exclude_matched_pattern *)
  pattern : string;  (** pattern *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_codebuild_webhook__filter_group__filter *)

type aws_codebuild_webhook__filter_group = {
  filter : aws_codebuild_webhook__filter_group__filter list;
}
[@@deriving yojson_of]
(** aws_codebuild_webhook__filter_group *)

type aws_codebuild_webhook = {
  branch_filter : string option; [@option]  (** branch_filter *)
  build_type : string option; [@option]  (** build_type *)
  project_name : string;  (** project_name *)
  filter_group : aws_codebuild_webhook__filter_group list;
}
[@@deriving yojson_of]
(** aws_codebuild_webhook *)

let aws_codebuild_webhook ?branch_filter ?build_type ~project_name
    ~filter_group __resource_id =
  let __resource_type = "aws_codebuild_webhook" in
  let __resource =
    { branch_filter; build_type; project_name; filter_group }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codebuild_webhook __resource);
  ()
