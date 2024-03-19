(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type filter_group__filter = {
  exclude_matched_pattern : bool prop option; [@option]
      (** exclude_matched_pattern *)
  pattern : string prop;  (** pattern *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** filter_group__filter *)

type filter_group = { filter : filter_group__filter list }
[@@deriving yojson_of]
(** filter_group *)

type aws_codebuild_webhook = {
  branch_filter : string prop option; [@option]  (** branch_filter *)
  build_type : string prop option; [@option]  (** build_type *)
  id : string prop option; [@option]  (** id *)
  project_name : string prop;  (** project_name *)
  filter_group : filter_group list;
}
[@@deriving yojson_of]
(** aws_codebuild_webhook *)

let filter_group__filter ?exclude_matched_pattern ~pattern ~type_ ()
    : filter_group__filter =
  { exclude_matched_pattern; pattern; type_ }

let filter_group ~filter () : filter_group = { filter }

let aws_codebuild_webhook ?branch_filter ?build_type ?id
    ~project_name ~filter_group () : aws_codebuild_webhook =
  { branch_filter; build_type; id; project_name; filter_group }

type t = {
  branch_filter : string prop;
  build_type : string prop;
  id : string prop;
  payload_url : string prop;
  project_name : string prop;
  secret : string prop;
  url : string prop;
}

let register ?tf_module ?branch_filter ?build_type ?id ~project_name
    ~filter_group __resource_id =
  let __resource_type = "aws_codebuild_webhook" in
  let __resource =
    aws_codebuild_webhook ?branch_filter ?build_type ?id
      ~project_name ~filter_group ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codebuild_webhook __resource);
  let __resource_attributes =
    ({
       branch_filter =
         Prop.computed __resource_type __resource_id "branch_filter";
       build_type =
         Prop.computed __resource_type __resource_id "build_type";
       id = Prop.computed __resource_type __resource_id "id";
       payload_url =
         Prop.computed __resource_type __resource_id "payload_url";
       project_name =
         Prop.computed __resource_type __resource_id "project_name";
       secret = Prop.computed __resource_type __resource_id "secret";
       url = Prop.computed __resource_type __resource_id "url";
     }
      : t)
  in
  __resource_attributes
