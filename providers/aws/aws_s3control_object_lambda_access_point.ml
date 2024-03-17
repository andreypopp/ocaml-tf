(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3control_object_lambda_access_point__configuration__transformation_configuration__content_transformation__aws_lambda = {
  function_arn : string prop;  (** function_arn *)
  function_payload : string prop option; [@option]
      (** function_payload *)
}
[@@deriving yojson_of]
(** aws_s3control_object_lambda_access_point__configuration__transformation_configuration__content_transformation__aws_lambda *)

type aws_s3control_object_lambda_access_point__configuration__transformation_configuration__content_transformation = {
  aws_lambda :
    aws_s3control_object_lambda_access_point__configuration__transformation_configuration__content_transformation__aws_lambda
    list;
}
[@@deriving yojson_of]
(** aws_s3control_object_lambda_access_point__configuration__transformation_configuration__content_transformation *)

type aws_s3control_object_lambda_access_point__configuration__transformation_configuration = {
  actions : string prop list;  (** actions *)
  content_transformation :
    aws_s3control_object_lambda_access_point__configuration__transformation_configuration__content_transformation
    list;
}
[@@deriving yojson_of]
(** aws_s3control_object_lambda_access_point__configuration__transformation_configuration *)

type aws_s3control_object_lambda_access_point__configuration = {
  allowed_features : string prop list option; [@option]
      (** allowed_features *)
  cloud_watch_metrics_enabled : bool prop option; [@option]
      (** cloud_watch_metrics_enabled *)
  supporting_access_point : string prop;
      (** supporting_access_point *)
  transformation_configuration :
    aws_s3control_object_lambda_access_point__configuration__transformation_configuration
    list;
}
[@@deriving yojson_of]
(** aws_s3control_object_lambda_access_point__configuration *)

type aws_s3control_object_lambda_access_point = {
  account_id : string prop option; [@option]  (** account_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  configuration :
    aws_s3control_object_lambda_access_point__configuration list;
}
[@@deriving yojson_of]
(** aws_s3control_object_lambda_access_point *)

type t = {
  account_id : string prop;
  alias : string prop;
  arn : string prop;
  id : string prop;
  name : string prop;
}

let aws_s3control_object_lambda_access_point ?account_id ?id ~name
    ~configuration __resource_id =
  let __resource_type = "aws_s3control_object_lambda_access_point" in
  let __resource =
    ({ account_id; id; name; configuration }
      : aws_s3control_object_lambda_access_point)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3control_object_lambda_access_point __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       alias = Prop.computed __resource_type __resource_id "alias";
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
