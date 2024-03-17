(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sagemaker_human_task_ui__ui_template = {
  content : string prop option; [@option]  (** content *)
  content_sha256 : string prop;  (** content_sha256 *)
  url : string prop;  (** url *)
}
[@@deriving yojson_of]
(** aws_sagemaker_human_task_ui__ui_template *)

type aws_sagemaker_human_task_ui = {
  human_task_ui_name : string prop;  (** human_task_ui_name *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  ui_template : aws_sagemaker_human_task_ui__ui_template list;
}
[@@deriving yojson_of]
(** aws_sagemaker_human_task_ui *)

type t = {
  arn : string prop;
  human_task_ui_name : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_sagemaker_human_task_ui ?id ?tags ?tags_all
    ~human_task_ui_name ~ui_template __resource_id =
  let __resource_type = "aws_sagemaker_human_task_ui" in
  let __resource =
    ({ human_task_ui_name; id; tags; tags_all; ui_template }
      : aws_sagemaker_human_task_ui)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_human_task_ui __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       human_task_ui_name =
         Prop.computed __resource_type __resource_id
           "human_task_ui_name";
       id = Prop.computed __resource_type __resource_id "id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
