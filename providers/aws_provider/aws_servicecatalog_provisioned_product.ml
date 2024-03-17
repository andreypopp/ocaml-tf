(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_servicecatalog_provisioned_product__provisioning_parameters = {
  key : string;  (** key *)
  use_previous_value : bool option; [@option]
      (** use_previous_value *)
  value : string option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_servicecatalog_provisioned_product__provisioning_parameters *)

type aws_servicecatalog_provisioned_product__stack_set_provisioning_preferences = {
  accounts : string list option; [@option]  (** accounts *)
  failure_tolerance_count : float option; [@option]
      (** failure_tolerance_count *)
  failure_tolerance_percentage : float option; [@option]
      (** failure_tolerance_percentage *)
  max_concurrency_count : float option; [@option]
      (** max_concurrency_count *)
  max_concurrency_percentage : float option; [@option]
      (** max_concurrency_percentage *)
  regions : string list option; [@option]  (** regions *)
}
[@@deriving yojson_of]
(** aws_servicecatalog_provisioned_product__stack_set_provisioning_preferences *)

type aws_servicecatalog_provisioned_product__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_servicecatalog_provisioned_product__timeouts *)

type aws_servicecatalog_provisioned_product__outputs = {
  description : string;  (** description *)
  key : string;  (** key *)
  value : string;  (** value *)
}
[@@deriving yojson_of]

type aws_servicecatalog_provisioned_product = {
  accept_language : string option; [@option]  (** accept_language *)
  id : string option; [@option]  (** id *)
  ignore_errors : bool option; [@option]  (** ignore_errors *)
  name : string;  (** name *)
  notification_arns : string list option; [@option]
      (** notification_arns *)
  path_id : string option; [@option]  (** path_id *)
  path_name : string option; [@option]  (** path_name *)
  product_id : string option; [@option]  (** product_id *)
  product_name : string option; [@option]  (** product_name *)
  provisioning_artifact_id : string option; [@option]
      (** provisioning_artifact_id *)
  provisioning_artifact_name : string option; [@option]
      (** provisioning_artifact_name *)
  retain_physical_resources : bool option; [@option]
      (** retain_physical_resources *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  provisioning_parameters :
    aws_servicecatalog_provisioned_product__provisioning_parameters
    list;
  stack_set_provisioning_preferences :
    aws_servicecatalog_provisioned_product__stack_set_provisioning_preferences
    list;
  timeouts : aws_servicecatalog_provisioned_product__timeouts option;
}
[@@deriving yojson_of]
(** aws_servicecatalog_provisioned_product *)

let aws_servicecatalog_provisioned_product ?accept_language ?id
    ?ignore_errors ?notification_arns ?path_id ?path_name ?product_id
    ?product_name ?provisioning_artifact_id
    ?provisioning_artifact_name ?retain_physical_resources ?tags
    ?tags_all ?timeouts ~name ~provisioning_parameters
    ~stack_set_provisioning_preferences __resource_id =
  let __resource_type = "aws_servicecatalog_provisioned_product" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_servicecatalog_provisioned_product __resource);
  ()
