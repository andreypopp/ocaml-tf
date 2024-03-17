(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_codecommit_trigger__trigger = {
  branches : string prop list option; [@option]  (** branches *)
  custom_data : string prop option; [@option]  (** custom_data *)
  destination_arn : string prop;  (** destination_arn *)
  events : string prop list;  (** events *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** aws_codecommit_trigger__trigger *)

type aws_codecommit_trigger = {
  id : string prop option; [@option]  (** id *)
  repository_name : string prop;  (** repository_name *)
  trigger : aws_codecommit_trigger__trigger list;
}
[@@deriving yojson_of]
(** aws_codecommit_trigger *)

type t = {
  configuration_id : string prop;
  id : string prop;
  repository_name : string prop;
}

let aws_codecommit_trigger ?id ~repository_name ~trigger
    __resource_id =
  let __resource_type = "aws_codecommit_trigger" in
  let __resource =
    ({ id; repository_name; trigger } : aws_codecommit_trigger)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
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
