(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type trigger = {
  branches : string prop list option; [@option]  (** branches *)
  custom_data : string prop option; [@option]  (** custom_data *)
  destination_arn : string prop;  (** destination_arn *)
  events : string prop list;  (** events *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** trigger *)

type aws_codecommit_trigger = {
  id : string prop option; [@option]  (** id *)
  repository_name : string prop;  (** repository_name *)
  trigger : trigger list;
}
[@@deriving yojson_of]
(** aws_codecommit_trigger *)

let trigger ?branches ?custom_data ~destination_arn ~events ~name ()
    : trigger =
  { branches; custom_data; destination_arn; events; name }

let aws_codecommit_trigger ?id ~repository_name ~trigger () :
    aws_codecommit_trigger =
  { id; repository_name; trigger }

type t = {
  configuration_id : string prop;
  id : string prop;
  repository_name : string prop;
}

let register ?tf_module ?id ~repository_name ~trigger __resource_id =
  let __resource_type = "aws_codecommit_trigger" in
  let __resource =
    aws_codecommit_trigger ?id ~repository_name ~trigger ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codecommit_trigger __resource);
  let __resource_attributes =
    ({
       configuration_id =
         Prop.computed __resource_type __resource_id
           "configuration_id";
       id = Prop.computed __resource_type __resource_id "id";
       repository_name =
         Prop.computed __resource_type __resource_id
           "repository_name";
     }
      : t)
  in
  __resource_attributes
