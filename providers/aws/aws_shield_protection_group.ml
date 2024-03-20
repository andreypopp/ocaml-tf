(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?members ?resource_type ?tags ?tags_all ~aggregation
    ~pattern ~protection_group_id __id =
  let __type = "aws_shield_protection_group" in
  let __attrs =
    ({
       aggregation = Prop.computed __type __id "aggregation";
       id = Prop.computed __type __id "id";
       members = Prop.computed __type __id "members";
       pattern = Prop.computed __type __id "pattern";
       protection_group_arn =
         Prop.computed __type __id "protection_group_arn";
       protection_group_id =
         Prop.computed __type __id "protection_group_id";
       resource_type = Prop.computed __type __id "resource_type";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_shield_protection_group
        (aws_shield_protection_group ?id ?members ?resource_type
           ?tags ?tags_all ~aggregation ~pattern ~protection_group_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?members ?resource_type ?tags ?tags_all
    ~aggregation ~pattern ~protection_group_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?members ?resource_type ?tags ?tags_all ~aggregation
      ~pattern ~protection_group_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
