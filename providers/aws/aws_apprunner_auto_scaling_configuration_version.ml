(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_apprunner_auto_scaling_configuration_version = {
  auto_scaling_configuration_name : string prop;
      (** auto_scaling_configuration_name *)
  id : string prop option; [@option]  (** id *)
  max_concurrency : float prop option; [@option]
      (** max_concurrency *)
  max_size : float prop option; [@option]  (** max_size *)
  min_size : float prop option; [@option]  (** min_size *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_apprunner_auto_scaling_configuration_version *)

type t = {
  arn : string prop;
  auto_scaling_configuration_name : string prop;
  auto_scaling_configuration_revision : float prop;
  has_associated_service : bool prop;
  id : string prop;
  is_default : bool prop;
  latest : bool prop;
  max_concurrency : float prop;
  max_size : float prop;
  min_size : float prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_apprunner_auto_scaling_configuration_version ?id
    ?max_concurrency ?max_size ?min_size ?tags ?tags_all
    ~auto_scaling_configuration_name __resource_id =
  let __resource_type =
    "aws_apprunner_auto_scaling_configuration_version"
  in
  let __resource =
    ({
       auto_scaling_configuration_name;
       id;
       max_concurrency;
       max_size;
       min_size;
       tags;
       tags_all;
     }
      : aws_apprunner_auto_scaling_configuration_version)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_apprunner_auto_scaling_configuration_version
       __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       auto_scaling_configuration_name =
         Prop.computed __resource_type __resource_id
           "auto_scaling_configuration_name";
       auto_scaling_configuration_revision =
         Prop.computed __resource_type __resource_id
           "auto_scaling_configuration_revision";
       has_associated_service =
         Prop.computed __resource_type __resource_id
           "has_associated_service";
       id = Prop.computed __resource_type __resource_id "id";
       is_default =
         Prop.computed __resource_type __resource_id "is_default";
       latest = Prop.computed __resource_type __resource_id "latest";
       max_concurrency =
         Prop.computed __resource_type __resource_id
           "max_concurrency";
       max_size =
         Prop.computed __resource_type __resource_id "max_size";
       min_size =
         Prop.computed __resource_type __resource_id "min_size";
       status = Prop.computed __resource_type __resource_id "status";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
