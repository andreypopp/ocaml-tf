(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?allow_external_principals ?id ?permission_arns ?tags
    ?tags_all ?timeouts ~name __id =
  let __type = "aws_ram_resource_share" in
  let __attrs =
    ({
       allow_external_principals =
         Prop.computed __type __id "allow_external_principals";
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       permission_arns = Prop.computed __type __id "permission_arns";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ram_resource_share
        (aws_ram_resource_share ?allow_external_principals ?id
           ?permission_arns ?tags ?tags_all ?timeouts ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_external_principals ?id
    ?permission_arns ?tags ?tags_all ?timeouts ~name __id =
  let (r : _ Tf_core.resource) =
    make ?allow_external_principals ?id ?permission_arns ?tags
      ?tags_all ?timeouts ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
