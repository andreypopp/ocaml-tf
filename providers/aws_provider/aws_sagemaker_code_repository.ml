(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sagemaker_code_repository__git_config = {
  branch : string option; [@option]  (** branch *)
  repository_url : string;  (** repository_url *)
  secret_arn : string option; [@option]  (** secret_arn *)
}
[@@deriving yojson_of]
(** aws_sagemaker_code_repository__git_config *)

type aws_sagemaker_code_repository = {
  code_repository_name : string;  (** code_repository_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  git_config : aws_sagemaker_code_repository__git_config list;
}
[@@deriving yojson_of]
(** aws_sagemaker_code_repository *)

let aws_sagemaker_code_repository ?tags ~code_repository_name
    ~git_config __resource_id =
  let __resource_type = "aws_sagemaker_code_repository" in
  let __resource = { code_repository_name; tags; git_config } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_code_repository __resource);
  ()
