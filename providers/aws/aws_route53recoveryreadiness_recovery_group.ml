(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53recoveryreadiness_recovery_group__timeouts = {
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_route53recoveryreadiness_recovery_group__timeouts *)

type aws_route53recoveryreadiness_recovery_group = {
  cells : string prop list option; [@option]  (** cells *)
  id : string prop option; [@option]  (** id *)
  recovery_group_name : string prop;  (** recovery_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts :
    aws_route53recoveryreadiness_recovery_group__timeouts option;
}
[@@deriving yojson_of]
(** aws_route53recoveryreadiness_recovery_group *)

type t = {
  arn : string prop;
  cells : string list prop;
  id : string prop;
  recovery_group_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_route53recoveryreadiness_recovery_group ?cells ?id ?tags
    ?tags_all ?timeouts ~recovery_group_name __resource_id =
  let __resource_type =
    "aws_route53recoveryreadiness_recovery_group"
  in
  let __resource =
    ({ cells; id; recovery_group_name; tags; tags_all; timeouts }
      : aws_route53recoveryreadiness_recovery_group)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53recoveryreadiness_recovery_group __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       cells = Prop.computed __resource_type __resource_id "cells";
       id = Prop.computed __resource_type __resource_id "id";
       recovery_group_name =
         Prop.computed __resource_type __resource_id
           "recovery_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
