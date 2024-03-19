(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_ram_resource_share = {
  allow_external_principals : bool prop option; [@option]
      (** allow_external_principals *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  permission_arns : string prop list option; [@option]
      (** permission_arns *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_ram_resource_share *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_ram_resource_share ?allow_external_principals ?id
    ?permission_arns ?tags ?tags_all ?timeouts ~name () :
    aws_ram_resource_share =
  {
    allow_external_principals;
    id;
    name;
    permission_arns;
    tags;
    tags_all;
    timeouts;
  }

type t = {
  allow_external_principals : bool prop;
  arn : string prop;
  id : string prop;
  name : string prop;
  permission_arns : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?allow_external_principals ?id
    ?permission_arns ?tags ?tags_all ?timeouts ~name __resource_id =
  let __resource_type = "aws_ram_resource_share" in
  let __resource =
    aws_ram_resource_share ?allow_external_principals ?id
      ?permission_arns ?tags ?tags_all ?timeouts ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ram_resource_share __resource);
  let __resource_attributes =
    ({
       allow_external_principals =
         Prop.computed __resource_type __resource_id
           "allow_external_principals";
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       permission_arns =
         Prop.computed __resource_type __resource_id
           "permission_arns";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
