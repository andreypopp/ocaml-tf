(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_shield_protection_group = {
  aggregation : string prop;  (** aggregation *)
  id : string prop option; [@option]  (** id *)
  members : string prop list option; [@option]  (** members *)
  pattern : string prop;  (** pattern *)
  protection_group_id : string prop;  (** protection_group_id *)
  resource_type : string prop option; [@option]  (** resource_type *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_shield_protection_group *)

let aws_shield_protection_group ?id ?members ?resource_type ?tags
    ?tags_all ~aggregation ~pattern ~protection_group_id () :
    aws_shield_protection_group =
  {
    aggregation;
    id;
    members;
    pattern;
    protection_group_id;
    resource_type;
    tags;
    tags_all;
  }

type t = {
  aggregation : string prop;
  id : string prop;
  members : string list prop;
  pattern : string prop;
  protection_group_arn : string prop;
  protection_group_id : string prop;
  resource_type : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?id ?members ?resource_type ?tags ?tags_all
    ~aggregation ~pattern ~protection_group_id __resource_id =
  let __resource_type = "aws_shield_protection_group" in
  let __resource =
    aws_shield_protection_group ?id ?members ?resource_type ?tags
      ?tags_all ~aggregation ~pattern ~protection_group_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_shield_protection_group __resource);
  let __resource_attributes =
    ({
       aggregation =
         Prop.computed __resource_type __resource_id "aggregation";
       id = Prop.computed __resource_type __resource_id "id";
       members =
         Prop.computed __resource_type __resource_id "members";
       pattern =
         Prop.computed __resource_type __resource_id "pattern";
       protection_group_arn =
         Prop.computed __resource_type __resource_id
           "protection_group_arn";
       protection_group_id =
         Prop.computed __resource_type __resource_id
           "protection_group_id";
       resource_type =
         Prop.computed __resource_type __resource_id "resource_type";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
