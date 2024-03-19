(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type provisioning_parameters = {
  key : string prop;  (** key *)
  use_previous_value : bool prop option; [@option]
      (** use_previous_value *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** provisioning_parameters *)

type stack_set_provisioning_preferences = {
  accounts : string prop list option; [@option]  (** accounts *)
  failure_tolerance_count : float prop option; [@option]
      (** failure_tolerance_count *)
  failure_tolerance_percentage : float prop option; [@option]
      (** failure_tolerance_percentage *)
  max_concurrency_count : float prop option; [@option]
      (** max_concurrency_count *)
  max_concurrency_percentage : float prop option; [@option]
      (** max_concurrency_percentage *)
  regions : string prop list option; [@option]  (** regions *)
}
[@@deriving yojson_of]
(** stack_set_provisioning_preferences *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type outputs = {
  description : string prop;  (** description *)
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]

type aws_servicecatalog_provisioned_product = {
  accept_language : string prop option; [@option]
      (** accept_language *)
  id : string prop option; [@option]  (** id *)
  ignore_errors : bool prop option; [@option]  (** ignore_errors *)
  name : string prop;  (** name *)
  notification_arns : string prop list option; [@option]
      (** notification_arns *)
  path_id : string prop option; [@option]  (** path_id *)
  path_name : string prop option; [@option]  (** path_name *)
  product_id : string prop option; [@option]  (** product_id *)
  product_name : string prop option; [@option]  (** product_name *)
  provisioning_artifact_id : string prop option; [@option]
      (** provisioning_artifact_id *)
  provisioning_artifact_name : string prop option; [@option]
      (** provisioning_artifact_name *)
  retain_physical_resources : bool prop option; [@option]
      (** retain_physical_resources *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  provisioning_parameters : provisioning_parameters list;
  stack_set_provisioning_preferences :
    stack_set_provisioning_preferences list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_servicecatalog_provisioned_product *)

let provisioning_parameters ?use_previous_value ?value ~key () :
    provisioning_parameters =
  { key; use_previous_value; value }

let stack_set_provisioning_preferences ?accounts
    ?failure_tolerance_count ?failure_tolerance_percentage
    ?max_concurrency_count ?max_concurrency_percentage ?regions () :
    stack_set_provisioning_preferences =
  {
    accounts;
    failure_tolerance_count;
    failure_tolerance_percentage;
    max_concurrency_count;
    max_concurrency_percentage;
    regions;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let aws_servicecatalog_provisioned_product ?accept_language ?id
    ?ignore_errors ?notification_arns ?path_id ?path_name ?product_id
    ?product_name ?provisioning_artifact_id
    ?provisioning_artifact_name ?retain_physical_resources ?tags
    ?tags_all ?timeouts ~name ~provisioning_parameters
    ~stack_set_provisioning_preferences () :
    aws_servicecatalog_provisioned_product =
  {
    accept_language;
    id;
    ignore_errors;
    name;
    notification_arns;
    path_id;
    path_name;
    product_id;
    product_name;
    provisioning_artifact_id;
    provisioning_artifact_name;
    retain_physical_resources;
    tags;
    tags_all;
    provisioning_parameters;
    stack_set_provisioning_preferences;
    timeouts;
  }

type t = {
  accept_language : string prop;
  arn : string prop;
  cloudwatch_dashboard_names : string list prop;
  created_time : string prop;
  id : string prop;
  ignore_errors : bool prop;
  last_provisioning_record_id : string prop;
  last_record_id : string prop;
  last_successful_provisioning_record_id : string prop;
  launch_role_arn : string prop;
  name : string prop;
  notification_arns : string list prop;
  outputs : outputs list prop;
  path_id : string prop;
  path_name : string prop;
  product_id : string prop;
  product_name : string prop;
  provisioning_artifact_id : string prop;
  provisioning_artifact_name : string prop;
  retain_physical_resources : bool prop;
  status : string prop;
  status_message : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

let register ?tf_module ?accept_language ?id ?ignore_errors
    ?notification_arns ?path_id ?path_name ?product_id ?product_name
    ?provisioning_artifact_id ?provisioning_artifact_name
    ?retain_physical_resources ?tags ?tags_all ?timeouts ~name
    ~provisioning_parameters ~stack_set_provisioning_preferences
    __resource_id =
  let __resource_type = "aws_servicecatalog_provisioned_product" in
  let __resource =
    aws_servicecatalog_provisioned_product ?accept_language ?id
      ?ignore_errors ?notification_arns ?path_id ?path_name
      ?product_id ?product_name ?provisioning_artifact_id
      ?provisioning_artifact_name ?retain_physical_resources ?tags
      ?tags_all ?timeouts ~name ~provisioning_parameters
      ~stack_set_provisioning_preferences ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_servicecatalog_provisioned_product __resource);
  let __resource_attributes =
    ({
       accept_language =
         Prop.computed __resource_type __resource_id
           "accept_language";
       arn = Prop.computed __resource_type __resource_id "arn";
       cloudwatch_dashboard_names =
         Prop.computed __resource_type __resource_id
           "cloudwatch_dashboard_names";
       created_time =
         Prop.computed __resource_type __resource_id "created_time";
       id = Prop.computed __resource_type __resource_id "id";
       ignore_errors =
         Prop.computed __resource_type __resource_id "ignore_errors";
       last_provisioning_record_id =
         Prop.computed __resource_type __resource_id
           "last_provisioning_record_id";
       last_record_id =
         Prop.computed __resource_type __resource_id "last_record_id";
       last_successful_provisioning_record_id =
         Prop.computed __resource_type __resource_id
           "last_successful_provisioning_record_id";
       launch_role_arn =
         Prop.computed __resource_type __resource_id
           "launch_role_arn";
       name = Prop.computed __resource_type __resource_id "name";
       notification_arns =
         Prop.computed __resource_type __resource_id
           "notification_arns";
       outputs =
         Prop.computed __resource_type __resource_id "outputs";
       path_id =
         Prop.computed __resource_type __resource_id "path_id";
       path_name =
         Prop.computed __resource_type __resource_id "path_name";
       product_id =
         Prop.computed __resource_type __resource_id "product_id";
       product_name =
         Prop.computed __resource_type __resource_id "product_name";
       provisioning_artifact_id =
         Prop.computed __resource_type __resource_id
           "provisioning_artifact_id";
       provisioning_artifact_name =
         Prop.computed __resource_type __resource_id
           "provisioning_artifact_name";
       retain_physical_resources =
         Prop.computed __resource_type __resource_id
           "retain_physical_resources";
       status = Prop.computed __resource_type __resource_id "status";
       status_message =
         Prop.computed __resource_type __resource_id "status_message";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
