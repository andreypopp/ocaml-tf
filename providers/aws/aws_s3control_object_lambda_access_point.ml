(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type configuration__transformation_configuration__content_transformation__aws_lambda = {
  function_arn : string prop;  (** function_arn *)
  function_payload : string prop option; [@option]
      (** function_payload *)
}
[@@deriving yojson_of]
(** configuration__transformation_configuration__content_transformation__aws_lambda *)

type configuration__transformation_configuration__content_transformation = {
  aws_lambda :
    configuration__transformation_configuration__content_transformation__aws_lambda
    list;
}
[@@deriving yojson_of]
(** configuration__transformation_configuration__content_transformation *)

type configuration__transformation_configuration = {
  actions : string prop list;  (** actions *)
  content_transformation :
    configuration__transformation_configuration__content_transformation
    list;
}
[@@deriving yojson_of]
(** configuration__transformation_configuration *)

type configuration = {
  allowed_features : string prop list option; [@option]
      (** allowed_features *)
  cloud_watch_metrics_enabled : bool prop option; [@option]
      (** cloud_watch_metrics_enabled *)
  supporting_access_point : string prop;
      (** supporting_access_point *)
  transformation_configuration :
    configuration__transformation_configuration list;
}
[@@deriving yojson_of]
(** configuration *)

type aws_s3control_object_lambda_access_point = {
  account_id : string prop option; [@option]  (** account_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  configuration : configuration list;
}
[@@deriving yojson_of]
(** aws_s3control_object_lambda_access_point *)

let configuration__transformation_configuration__content_transformation__aws_lambda
    ?function_payload ~function_arn () :
    configuration__transformation_configuration__content_transformation__aws_lambda
    =
  { function_arn; function_payload }

let configuration__transformation_configuration__content_transformation
    ~aws_lambda () :
    configuration__transformation_configuration__content_transformation
    =
  { aws_lambda }

let configuration__transformation_configuration ~actions
    ~content_transformation () :
    configuration__transformation_configuration =
  { actions; content_transformation }

let configuration ?allowed_features ?cloud_watch_metrics_enabled
    ~supporting_access_point ~transformation_configuration () :
    configuration =
  {
    allowed_features;
    cloud_watch_metrics_enabled;
    supporting_access_point;
    transformation_configuration;
  }

let aws_s3control_object_lambda_access_point ?account_id ?id ~name
    ~configuration () : aws_s3control_object_lambda_access_point =
  { account_id; id; name; configuration }

type t = {
  account_id : string prop;
  alias : string prop;
  arn : string prop;
  id : string prop;
  name : string prop;
}

let register ?tf_module ?account_id ?id ~name ~configuration
    __resource_id =
  let __resource_type = "aws_s3control_object_lambda_access_point" in
  let __resource =
    aws_s3control_object_lambda_access_point ?account_id ?id ~name
      ~configuration ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
