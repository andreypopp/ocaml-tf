(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type logging_config = {
  log_group_name : string prop;  (** log_group_name *)
  log_role_arn : string prop;  (** log_role_arn *)
}
[@@deriving yojson_of]
(** logging_config *)

type aws_cloudformation_type = {
  execution_role_arn : string prop option; [@option]
      (** execution_role_arn *)
  id : string prop option; [@option]  (** id *)
  schema_handler_package : string prop;
      (** schema_handler_package *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  type_name : string prop;  (** type_name *)
  logging_config : logging_config list;
}
[@@deriving yojson_of]
(** aws_cloudformation_type *)

let logging_config ~log_group_name ~log_role_arn () : logging_config
    =
  { log_group_name; log_role_arn }

let aws_cloudformation_type ?execution_role_arn ?id ?type_
    ~schema_handler_package ~type_name ~logging_config () :
    aws_cloudformation_type =
  {
    execution_role_arn;
    id;
    schema_handler_package;
    type_;
    type_name;
    logging_config;
  }

type t = {
  arn : string prop;
  default_version_id : string prop;
  deprecated_status : string prop;
  description : string prop;
  documentation_url : string prop;
  execution_role_arn : string prop;
  id : string prop;
  is_default_version : bool prop;
  provisioning_type : string prop;
  schema : string prop;
  schema_handler_package : string prop;
  source_url : string prop;
  type_ : string prop;
  type_arn : string prop;
  type_name : string prop;
  version_id : string prop;
  visibility : string prop;
}

let register ?tf_module ?execution_role_arn ?id ?type_
    ~schema_handler_package ~type_name ~logging_config __resource_id
    =
  let __resource_type = "aws_cloudformation_type" in
  let __resource =
    aws_cloudformation_type ?execution_role_arn ?id ?type_
      ~schema_handler_package ~type_name ~logging_config ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudformation_type __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       default_version_id =
         Prop.computed __resource_type __resource_id
           "default_version_id";
       deprecated_status =
         Prop.computed __resource_type __resource_id
           "deprecated_status";
       description =
         Prop.computed __resource_type __resource_id "description";
       documentation_url =
         Prop.computed __resource_type __resource_id
           "documentation_url";
       execution_role_arn =
         Prop.computed __resource_type __resource_id
           "execution_role_arn";
       id = Prop.computed __resource_type __resource_id "id";
       is_default_version =
         Prop.computed __resource_type __resource_id
           "is_default_version";
       provisioning_type =
         Prop.computed __resource_type __resource_id
           "provisioning_type";
       schema = Prop.computed __resource_type __resource_id "schema";
       schema_handler_package =
         Prop.computed __resource_type __resource_id
           "schema_handler_package";
       source_url =
         Prop.computed __resource_type __resource_id "source_url";
       type_ = Prop.computed __resource_type __resource_id "type";
       type_arn =
         Prop.computed __resource_type __resource_id "type_arn";
       type_name =
         Prop.computed __resource_type __resource_id "type_name";
       version_id =
         Prop.computed __resource_type __resource_id "version_id";
       visibility =
         Prop.computed __resource_type __resource_id "visibility";
     }
      : t)
  in
  __resource_attributes
