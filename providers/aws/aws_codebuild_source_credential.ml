(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_codebuild_source_credential = {
  auth_type : string prop;  (** auth_type *)
  id : string prop option; [@option]  (** id *)
  server_type : string prop;  (** server_type *)
  token : string prop;  (** token *)
  user_name : string prop option; [@option]  (** user_name *)
}
[@@deriving yojson_of]
(** aws_codebuild_source_credential *)

let aws_codebuild_source_credential ?id ?user_name ~auth_type
    ~server_type ~token () : aws_codebuild_source_credential =
  { auth_type; id; server_type; token; user_name }

type t = {
  arn : string prop;
  auth_type : string prop;
  id : string prop;
  server_type : string prop;
  token : string prop;
  user_name : string prop;
}

let register ?tf_module ?id ?user_name ~auth_type ~server_type ~token
    __resource_id =
  let __resource_type = "aws_codebuild_source_credential" in
  let __resource =
    aws_codebuild_source_credential ?id ?user_name ~auth_type
      ~server_type ~token ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codebuild_source_credential __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       auth_type =
         Prop.computed __resource_type __resource_id "auth_type";
       id = Prop.computed __resource_type __resource_id "id";
       server_type =
         Prop.computed __resource_type __resource_id "server_type";
       token = Prop.computed __resource_type __resource_id "token";
       user_name =
         Prop.computed __resource_type __resource_id "user_name";
     }
      : t)
  in
  __resource_attributes
