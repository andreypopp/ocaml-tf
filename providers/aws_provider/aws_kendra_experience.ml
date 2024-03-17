(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_kendra_experience__configuration__content_source_configuration = {
  data_source_ids : string prop list option; [@option]
      (** data_source_ids *)
  direct_put_content : bool prop option; [@option]
      (** direct_put_content *)
  faq_ids : string prop list option; [@option]  (** faq_ids *)
}
[@@deriving yojson_of]
(** aws_kendra_experience__configuration__content_source_configuration *)

type aws_kendra_experience__configuration__user_identity_configuration = {
  identity_attribute_name : string prop;
      (** identity_attribute_name *)
}
[@@deriving yojson_of]
(** aws_kendra_experience__configuration__user_identity_configuration *)

type aws_kendra_experience__configuration = {
  content_source_configuration :
    aws_kendra_experience__configuration__content_source_configuration
    list;
  user_identity_configuration :
    aws_kendra_experience__configuration__user_identity_configuration
    list;
}
[@@deriving yojson_of]
(** aws_kendra_experience__configuration *)

type aws_kendra_experience__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_kendra_experience__timeouts *)

type aws_kendra_experience__endpoints = {
  endpoint : string prop;  (** endpoint *)
  endpoint_type : string prop;  (** endpoint_type *)
}
[@@deriving yojson_of]

type aws_kendra_experience = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  index_id : string prop;  (** index_id *)
  name : string prop;  (** name *)
  role_arn : string prop;  (** role_arn *)
  configuration : aws_kendra_experience__configuration list;
  timeouts : aws_kendra_experience__timeouts option;
}
[@@deriving yojson_of]
(** aws_kendra_experience *)

type t = {
  arn : string prop;
  description : string prop;
  endpoints : aws_kendra_experience__endpoints list prop;
  experience_id : string prop;
  id : string prop;
  index_id : string prop;
  name : string prop;
  role_arn : string prop;
  status : string prop;
}

let aws_kendra_experience ?description ?id ?timeouts ~index_id ~name
    ~role_arn ~configuration __resource_id =
  let __resource_type = "aws_kendra_experience" in
  let __resource =
    ({
       description;
       id;
       index_id;
       name;
       role_arn;
       configuration;
       timeouts;
     }
      : aws_kendra_experience)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_kendra_experience __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       endpoints =
         Prop.computed __resource_type __resource_id "endpoints";
       experience_id =
         Prop.computed __resource_type __resource_id "experience_id";
       id = Prop.computed __resource_type __resource_id "id";
       index_id =
         Prop.computed __resource_type __resource_id "index_id";
       name = Prop.computed __resource_type __resource_id "name";
       role_arn =
         Prop.computed __resource_type __resource_id "role_arn";
       status = Prop.computed __resource_type __resource_id "status";
     }
      : t)
  in
  __resource_attributes
