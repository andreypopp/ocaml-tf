(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_sagemaker_human_task_ui__ui_template = {
  content : string option; [@option]  (** content *)
  content_sha256 : string;  (** content_sha256 *)
  url : string;  (** url *)
}
[@@deriving yojson_of]
(** aws_sagemaker_human_task_ui__ui_template *)

type aws_sagemaker_human_task_ui = {
  human_task_ui_name : string;  (** human_task_ui_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  ui_template : aws_sagemaker_human_task_ui__ui_template list;
}
[@@deriving yojson_of]
(** aws_sagemaker_human_task_ui *)

let aws_sagemaker_human_task_ui ?tags ~human_task_ui_name
    ~ui_template __resource_id =
  let __resource_type = "aws_sagemaker_human_task_ui" in
  let __resource = { human_task_ui_name; tags; ui_template } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_human_task_ui __resource);
  ()
