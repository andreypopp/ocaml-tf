(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53recoveryreadiness_cell__timeouts = {
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_route53recoveryreadiness_cell__timeouts *)

type aws_route53recoveryreadiness_cell = {
  cell_name : string prop;  (** cell_name *)
  cells : string prop list option; [@option]  (** cells *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : aws_route53recoveryreadiness_cell__timeouts option;
}
[@@deriving yojson_of]
(** aws_route53recoveryreadiness_cell *)

type t = {
  arn : string prop;
  cell_name : string prop;
  cells : string list prop;
  id : string prop;
  parent_readiness_scopes : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_route53recoveryreadiness_cell ?cells ?id ?tags ?tags_all
    ?timeouts ~cell_name __resource_id =
  let __resource_type = "aws_route53recoveryreadiness_cell" in
  let __resource =
    ({ cell_name; cells; id; tags; tags_all; timeouts }
      : aws_route53recoveryreadiness_cell)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53recoveryreadiness_cell __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       cell_name =
         Prop.computed __resource_type __resource_id "cell_name";
       cells = Prop.computed __resource_type __resource_id "cells";
       id = Prop.computed __resource_type __resource_id "id";
       parent_readiness_scopes =
         Prop.computed __resource_type __resource_id
           "parent_readiness_scopes";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
